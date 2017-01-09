using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace lab_2_form
{
    public partial class boss : Form
    {
        public info a;
        public oblik b;
        public FAQ f;
        public pidlegli pid;

        public boss()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void містаToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void проПрограмуToolStripMenuItem_Click(object sender, EventArgs e)
        {
            a = new info();
            a.Show();
        }

        private void облікToolStripMenuItem_Click(object sender, EventArgs e)
        {
            b = new oblik();
            b.Show();
        }

        private void підлегліToolStripMenuItem_Click(object sender, EventArgs e)
        {
            pid = new pidlegli();
            pid.Show();
        }

        private void довідкаToolStripMenuItem_Click(object sender, EventArgs e)
        {
            f = new FAQ();
            f.Show();
        }
    }
}
