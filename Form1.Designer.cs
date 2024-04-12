namespace Comp10204
{
    partial class MainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.listBoxData = new System.Windows.Forms.ListBox();
            this.labelMain = new System.Windows.Forms.Label();
            this.labelDirector = new System.Windows.Forms.Label();
            this.labelReleaseYear = new System.Windows.Forms.Label();
            this.labelRuntime = new System.Windows.Forms.Label();
            this.labelNotes = new System.Windows.Forms.Label();
            this.textBoxDirector = new System.Windows.Forms.TextBox();
            this.textBoxReleaseYear = new System.Windows.Forms.TextBox();
            this.textBoxRunTime = new System.Windows.Forms.TextBox();
            this.textBoxNotes = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // listBoxData
            // 
            this.listBoxData.FormattingEnabled = true;
            this.listBoxData.HorizontalScrollbar = true;
            this.listBoxData.Location = new System.Drawing.Point(17, 28);
            this.listBoxData.Name = "listBoxData";
            this.listBoxData.ScrollAlwaysVisible = true;
            this.listBoxData.Size = new System.Drawing.Size(250, 394);
            this.listBoxData.TabIndex = 0;
            // 
            // labelMain
            // 
            this.labelMain.AutoSize = true;
            this.labelMain.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelMain.Location = new System.Drawing.Point(385, 48);
            this.labelMain.Name = "labelMain";
            this.labelMain.Size = new System.Drawing.Size(82, 37);
            this.labelMain.TabIndex = 1;
            this.labelMain.Text = "Title";
            this.labelMain.Click += new System.EventHandler(this.labelMain_Click);
            // 
            // labelDirector
            // 
            this.labelDirector.AutoSize = true;
            this.labelDirector.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelDirector.Location = new System.Drawing.Point(385, 120);
            this.labelDirector.Name = "labelDirector";
            this.labelDirector.Size = new System.Drawing.Size(62, 16);
            this.labelDirector.TabIndex = 2;
            this.labelDirector.Text = "Director";
            // 
            // labelReleaseYear
            // 
            this.labelReleaseYear.AutoSize = true;
            this.labelReleaseYear.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelReleaseYear.Location = new System.Drawing.Point(385, 151);
            this.labelReleaseYear.Name = "labelReleaseYear";
            this.labelReleaseYear.Size = new System.Drawing.Size(103, 16);
            this.labelReleaseYear.TabIndex = 3;
            this.labelReleaseYear.Text = "Release Year";
            // 
            // labelRuntime
            // 
            this.labelRuntime.AutoSize = true;
            this.labelRuntime.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelRuntime.Location = new System.Drawing.Point(385, 183);
            this.labelRuntime.Name = "labelRuntime";
            this.labelRuntime.Size = new System.Drawing.Size(63, 16);
            this.labelRuntime.TabIndex = 4;
            this.labelRuntime.Text = "Runtime";
            // 
            // labelNotes
            // 
            this.labelNotes.AutoSize = true;
            this.labelNotes.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelNotes.Location = new System.Drawing.Point(385, 236);
            this.labelNotes.Name = "labelNotes";
            this.labelNotes.Size = new System.Drawing.Size(48, 16);
            this.labelNotes.TabIndex = 5;
            this.labelNotes.Text = "Notes";
            // 
            // textBoxDirector
            // 
            this.textBoxDirector.Location = new System.Drawing.Point(539, 116);
            this.textBoxDirector.Name = "textBoxDirector";
            this.textBoxDirector.Size = new System.Drawing.Size(174, 20);
            this.textBoxDirector.TabIndex = 6;
            // 
            // textBoxReleaseYear
            // 
            this.textBoxReleaseYear.Location = new System.Drawing.Point(539, 150);
            this.textBoxReleaseYear.Name = "textBoxReleaseYear";
            this.textBoxReleaseYear.Size = new System.Drawing.Size(174, 20);
            this.textBoxReleaseYear.TabIndex = 7;
            // 
            // textBoxRunTime
            // 
            this.textBoxRunTime.Location = new System.Drawing.Point(539, 179);
            this.textBoxRunTime.Name = "textBoxRunTime";
            this.textBoxRunTime.Size = new System.Drawing.Size(174, 20);
            this.textBoxRunTime.TabIndex = 8;
            // 
            // textBoxNotes
            // 
            this.textBoxNotes.Location = new System.Drawing.Point(388, 255);
            this.textBoxNotes.Name = "textBoxNotes";
            this.textBoxNotes.Size = new System.Drawing.Size(325, 20);
            this.textBoxNotes.TabIndex = 9;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.textBoxNotes);
            this.Controls.Add(this.textBoxRunTime);
            this.Controls.Add(this.textBoxReleaseYear);
            this.Controls.Add(this.textBoxDirector);
            this.Controls.Add(this.labelNotes);
            this.Controls.Add(this.labelRuntime);
            this.Controls.Add(this.labelReleaseYear);
            this.Controls.Add(this.labelDirector);
            this.Controls.Add(this.labelMain);
            this.Controls.Add(this.listBoxData);
            this.Name = "MainForm";
            this.Text = "MainForm";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ListBox listBoxData;
        private System.Windows.Forms.Label labelMain;
        private System.Windows.Forms.Label labelDirector;
        private System.Windows.Forms.Label labelReleaseYear;
        private System.Windows.Forms.Label labelRuntime;
        private System.Windows.Forms.Label labelNotes;
        private System.Windows.Forms.TextBox textBoxDirector;
        private System.Windows.Forms.TextBox textBoxReleaseYear;
        private System.Windows.Forms.TextBox textBoxRunTime;
        private System.Windows.Forms.TextBox textBoxNotes;
    }
}

