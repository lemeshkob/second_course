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
    public partial class login : Form
    {
        public boss boss_window;
        public op op_window;
        public cityAdmin admin_window;
        public info i;
        public login()
        {
            InitializeComponent();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if(comboBox1.Text == "Керівник")
            {
                boss_window = new boss();
                boss_window.Show();
            
            }

            if (comboBox1.Text == "Адміністратор міст")
            {
                admin_window = new cityAdmin();
                admin_window.Show();
            }

            if (comboBox1.Text == "Оператор")
            {
                op_window = new op();
                op_window.Show();
            }
            else
            {
                
            }
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            i = new info();
            i.Show();
        }
    }
}
