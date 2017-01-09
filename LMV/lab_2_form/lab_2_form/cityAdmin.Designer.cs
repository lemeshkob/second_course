namespace lab_2_form
{
    partial class cityAdmin
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(cityAdmin));
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.облікToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.додатиМістоToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.редагуватиToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.підлегліToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.довідкаToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.проПрограмуToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.BackColor = System.Drawing.Color.SteelBlue;
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(32, 32);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.облікToolStripMenuItem,
            this.підлегліToolStripMenuItem,
            this.довідкаToolStripMenuItem,
            this.проПрограмуToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(327, 40);
            this.menuStrip1.TabIndex = 3;
            this.menuStrip1.Text = "menuStrip1";
            this.menuStrip1.ItemClicked += new System.Windows.Forms.ToolStripItemClickedEventHandler(this.menuStrip1_ItemClicked);
            // 
            // облікToolStripMenuItem
            // 
            this.облікToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.додатиМістоToolStripMenuItem,
            this.редагуватиToolStripMenuItem});
            this.облікToolStripMenuItem.Image = global::lab_2_form.Properties.Resources.city_icon_2;
            this.облікToolStripMenuItem.Name = "облікToolStripMenuItem";
            this.облікToolStripMenuItem.Size = new System.Drawing.Size(82, 36);
            this.облікToolStripMenuItem.Text = "Міста";
            // 
            // додатиМістоToolStripMenuItem
            // 
            this.додатиМістоToolStripMenuItem.Name = "додатиМістоToolStripMenuItem";
            this.додатиМістоToolStripMenuItem.Size = new System.Drawing.Size(146, 22);
            this.додатиМістоToolStripMenuItem.Text = "Додати місто";
            this.додатиМістоToolStripMenuItem.Click += new System.EventHandler(this.додатиМістоToolStripMenuItem_Click);
            // 
            // редагуватиToolStripMenuItem
            // 
            this.редагуватиToolStripMenuItem.Name = "редагуватиToolStripMenuItem";
            this.редагуватиToolStripMenuItem.Size = new System.Drawing.Size(146, 22);
            this.редагуватиToolStripMenuItem.Text = "Редагувати";
            this.редагуватиToolStripMenuItem.Click += new System.EventHandler(this.редагуватиToolStripMenuItem_Click);
            // 
            // підлегліToolStripMenuItem
            // 
            this.підлегліToolStripMenuItem.Image = global::lab_2_form.Properties.Resources.sale_rt_blue;
            this.підлегліToolStripMenuItem.Name = "підлегліToolStripMenuItem";
            this.підлегліToolStripMenuItem.Size = new System.Drawing.Size(142, 36);
            this.підлегліToolStripMenuItem.Text = "Система знижок";
            this.підлегліToolStripMenuItem.Click += new System.EventHandler(this.підлегліToolStripMenuItem_Click);
            // 
            // довідкаToolStripMenuItem
            // 
            this.довідкаToolStripMenuItem.Image = global::lab_2_form.Properties.Resources.info;
            this.довідкаToolStripMenuItem.Name = "довідкаToolStripMenuItem";
            this.довідкаToolStripMenuItem.Size = new System.Drawing.Size(93, 36);
            this.довідкаToolStripMenuItem.Text = "Довідка";
            this.довідкаToolStripMenuItem.Click += new System.EventHandler(this.довідкаToolStripMenuItem_Click);
            // 
            // проПрограмуToolStripMenuItem
            // 
            this.проПрограмуToolStripMenuItem.Image = global::lab_2_form.Properties.Resources.about1;
            this.проПрограмуToolStripMenuItem.Name = "проПрограмуToolStripMenuItem";
            this.проПрограмуToolStripMenuItem.Size = new System.Drawing.Size(131, 36);
            this.проПрограмуToolStripMenuItem.Text = "Про програму";
            // 
            // cityAdmin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::lab_2_form.Properties.Resources.dee70e_a3cd35afb4c64ee381beda273187ffdf_mv2;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(327, 279);
            this.Controls.Add(this.menuStrip1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "cityAdmin";
            this.Text = "Адміністратор міст";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem облікToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem підлегліToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem довідкаToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem проПрограмуToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem додатиМістоToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem редагуватиToolStripMenuItem;
    }
}