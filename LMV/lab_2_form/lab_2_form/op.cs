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
    public partial class op : Form
    {
        public subsAdd a;
        public subsEdit ed;
        public calc c;
        public FAQ f;
        public op()
        {
            InitializeComponent();
        }

        private void підлегліToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void довідкаToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void додатиАбонентаToolStripMenuItem_Click(object sender, EventArgs e)
        {
            a = new subsAdd();
            a.Show();
        }

        private void редагуватиАбонентаToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ed = new subsEdit();
            ed.Show();
        }

        private void підлегліToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            c = new calc();
            c.Show();
        }

        private void довідкаToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            f = new FAQ();
            f.Show();
        }
    }
}
