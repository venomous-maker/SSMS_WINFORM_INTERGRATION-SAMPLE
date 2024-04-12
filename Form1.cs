using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Comp10204
{
    public partial class MainForm : Form
    {
        private MovieExtractor movieExtractor;

        public MainForm()
        {
            InitializeComponent();
            this.Text = "Gorang singh kotwal 000894539";
            movieExtractor = new MovieExtractor("Data Source=DESKTOP-R1G3RTR;Initial Catalog=COMP10204_FINAL;Integrated Security=True;Encrypt=True;TrustServerCertificate=True");
            PopulateListBox();
            listBoxData.SelectedIndexChanged += listBoxData_SelectedIndexChanged;
        }

        private void PopulateListBox()
        {
            listBoxData.Items.Clear();
            foreach (Movie movie in movieExtractor.ExtractMovies())
            {
                listBoxData.Items.Add(movie.Title);
            }
        }

        private void listBoxData_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (listBoxData.SelectedIndex != -1)
            {
                Movie selectedMovie = movieExtractor.ExtractMovies()[listBoxData.SelectedIndex];
                labelMain.Text = selectedMovie.Title;
                textBoxDirector.Text = selectedMovie.Director;
                textBoxReleaseYear.Text = selectedMovie.ReleaseYear.ToString();
                textBoxRunTime.Text = selectedMovie.RunTime;
                textBoxNotes.Text = selectedMovie.Notes;
            }
        }

        private void labelMain_Click(object sender, EventArgs e)
        {

        }
    }

    public class MovieExtractor
    {
        private string connectionString;

        public MovieExtractor(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public List<Movie> ExtractMovies()
        {
            List<Movie> movies = new List<Movie>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = @"SELECT m.Title, m.Director, m.ReleaseYear, m.RunTime, s.ShipName
                             FROM Movie m
                             LEFT JOIN Ship s ON m.MovieID = s.MovieID";

                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    string title = reader["Title"].ToString();
                    string director = reader["Director"].ToString();
                    int releaseYear = Convert.ToInt32(reader["ReleaseYear"]);
                    int runTimeInMinutes = Convert.ToInt32(reader["RunTime"]);
                    string notes = reader["ShipName"] == DBNull.Value ? "" : "In this movie we saw: "+reader["ShipName"].ToString();

                    string formattedRunTime = FormatRunTime(runTimeInMinutes);

                    Movie movie = new Movie(title, director, releaseYear, formattedRunTime, notes);
                    movies.Add(movie);
                }

                reader.Close();
            }

            return movies;
        }

        private string FormatRunTime(int totalMinutes)
        {
            int hours = totalMinutes / 60;
            int minutes = totalMinutes % 60;

            string formattedHours = hours.ToString().PadLeft(2, '0');
            string formattedMinutes = minutes.ToString().PadLeft(2, '0');

            return formattedHours + ":" + formattedMinutes;
        }
    }

    public class Movie
    {
        public string Title { get; set; }
        public string Director { get; set; }
        public int ReleaseYear { get; set; }
        public string RunTime { get; set; }
        public string Notes { get; set; }

        public Movie(string title, string director, int releaseYear, string runTime, string notes)
        {
            Title = title;
            Director = director;
            ReleaseYear = releaseYear;
            RunTime = runTime;
            Notes = notes;
        }
    }
}
