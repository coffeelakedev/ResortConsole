namespace Launcher.skeletons
{
    partial class TitleBar
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.WindowTitle = new System.Windows.Forms.Label();
            this.WindowIcon = new System.Windows.Forms.PictureBox();
            this.BorderBottom = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.WindowIcon)).BeginInit();
            this.SuspendLayout();
            // 
            // WindowTitle
            // 
            this.WindowTitle.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.WindowTitle.AutoEllipsis = true;
            this.WindowTitle.Location = new System.Drawing.Point(29, 0);
            this.WindowTitle.Name = "WindowTitle";
            this.WindowTitle.Size = new System.Drawing.Size(352, 27);
            this.WindowTitle.TabIndex = 13;
            this.WindowTitle.Text = "<window_title>";
            this.WindowTitle.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // WindowIcon
            // 
            this.WindowIcon.Location = new System.Drawing.Point(5, 5);
            this.WindowIcon.Name = "WindowIcon";
            this.WindowIcon.Size = new System.Drawing.Size(18, 18);
            this.WindowIcon.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.WindowIcon.TabIndex = 12;
            this.WindowIcon.TabStop = false;
            // 
            // BorderBottom
            // 
            this.BorderBottom.BackColor = System.Drawing.Color.Black;
            this.BorderBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.BorderBottom.Location = new System.Drawing.Point(0, 27);
            this.BorderBottom.Name = "BorderBottom";
            this.BorderBottom.Size = new System.Drawing.Size(519, 1);
            this.BorderBottom.TabIndex = 11;
            // 
            // TitleBar
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(36)))), ((int)(((byte)(41)))), ((int)(((byte)(46)))));
            this.Controls.Add(this.WindowTitle);
            this.Controls.Add(this.WindowIcon);
            this.Controls.Add(this.BorderBottom);
            this.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.MinimumSize = new System.Drawing.Size(304, 28);
            this.Name = "TitleBar";
            this.Size = new System.Drawing.Size(519, 28);
            ((System.ComponentModel.ISupportInitialize)(this.WindowIcon)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        public System.Windows.Forms.Label WindowTitle;
        public System.Windows.Forms.PictureBox WindowIcon;
        private System.Windows.Forms.Panel BorderBottom;
    }
}
