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
    public partial class cityAdmin : Form
    {
        public addCity a;
        public sales s;
        public FAQ f;
        public editCity edit;

        public cityAdmin()
        {
            InitializeComponent();
        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void додатиМістоToolStripMenuItem_Click(object sender, EventArgs e)
        {
            a = new addCity();
            a.Show();
        }

        private void підлегліToolStripMenuItem_Click(object sender, EventArgs e)
        {
            s = new sales();
            s.Show();
        }

        private void довідкаToolStripMenuItem_Click(object sender, EventArgs e)
        {
            f = new lab_2_form.FAQ();
            f.Show();
        }

        private void редагуватиToolStripMenuItem_Click(object sender, EventArgs e)
        {
            edit = new lab_2_form.editCity();
            edit.Show();
        }
    }
}
