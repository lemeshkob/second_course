﻿namespace lab_2_form
{
    partial class boss
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(boss));
            this.облікToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.підлегліToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.довідкаToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // облікToolStripMenuItem
            // 
            this.облікToolStripMenuItem.Image = global::lab_2_form.Properties.Resources.folders_files_documents_papers_office_equipment_business_object_flat_icon_symbol_512;
            this.облікToolStripMenuItem.Name = "облікToolStripMenuItem";
            this.облікToolStripMenuItem.Size = new System.Drawing.Size(83, 36);
            this.облікToolStripMenuItem.Text = "Облік";
            this.облікToolStripMenuItem.Click += new System.EventHandler(this.облікToolStripMenuItem_Click);
            // 
            // підлегліToolStripMenuItem
            // 
            this.підлегліToolStripMenuItem.Image = global::lab_2_form.Properties.Resources._40_company_organization_structure_hierarchy_leader_subordinates_nodes_512;
            this.підлегліToolStripMenuItem.Name = "підлегліToolStripMenuItem";
            this.підлегліToolStripMenuItem.Size = new System.Drawing.Size(97, 36);
            this.підлегліToolStripMenuItem.Text = "Підлеглі";
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
            // menuStrip1
            // 
            this.menuStrip1.BackColor = System.Drawing.Color.SteelBlue;
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(32, 32);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.облікToolStripMenuItem,
            this.підлегліToolStripMenuItem,
            this.довідкаToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(297, 40);
            this.menuStrip1.TabIndex = 2;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // boss
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Window;
            this.BackgroundImage = global::lab_2_form.Properties.Resources.dee70e_a3cd35afb4c64ee381beda273187ffdf_mv2;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(297, 250);
            this.Controls.Add(this.menuStrip1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStrip1;
            this.MaximizeBox = false;
            this.Name = "boss";
            this.Text = "Керівник";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ToolStripMenuItem облікToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem підлегліToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem довідкаToolStripMenuItem;
        private System.Windows.Forms.MenuStrip menuStrip1;
    }
}

