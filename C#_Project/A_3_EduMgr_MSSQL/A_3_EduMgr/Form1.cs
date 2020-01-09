using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Data.SqlClient;
using MetroFramework.Forms;

namespace A_3_EduMgr
{
    public partial class Form1 : MetroForm
    {
        public Form1()
        {
            InitializeComponent();
        }

        private string Constr = "server=localhost;uid=mook;pwd=p12345!@;database=project; Integrated Security=True;";
        //SQL 연결문자열 "server=localhost;uid=oooo;pwd=p12345!@;database=oooo";

        private void txtLogin_Click(object sender, EventArgs e)
        {
            var Conn = new SqlConnection(Constr);
            Conn.Open();
            var Comm = new SqlCommand("Select userpwd from t_login where userid = '" + this.txtId.Text + "'", Conn);
            var myRead = Comm.ExecuteReader();

            if (myRead.Read())
            {
                string strpwd = myRead[0].ToString();
                if (strpwd == this.txtPwd.Text)
                {
                    myRead.Close();
                    Conn.Close();
                    Form2 frm2 = new Form2();
                    frm2.UserId = this.txtId.Text;
                    frm2.Show();
                    this.Hide();
                }
                else
                {
                    this.lblResult.Text = "결과 : 로그인 실패";
                    txtClear();
                }
            }
            else
            {
                this.lblResult.Text = "결과 : 로그인 실패";
                txtClear();
            }
            myRead.Close();
            Conn.Close();
        }

        private void txtClear()
        {
            this.txtId.Text = "";
            this.txtPwd.Text = "";
        }

        private void txtSignup_Click(object sender, EventArgs e)
        {
            Form4 frm4 = new Form4();
            frm4.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form5 frm5 = new Form5();
            frm5.Show();
        }




        private void txtPwd_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                txtLogin_Click(sender, e);
            }
        }

        private void txtId_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                txtLogin_Click(sender, e);
            }
        }


    }
}
