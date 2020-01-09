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
    public partial class Form5 : MetroForm
    {
        public Form5()
        {
            InitializeComponent();
        }
        private string Constr = "server=localhost;uid=mook;pwd=p12345!@;database=project; Integrated Security = True;";
        string findId = null;
        string findPw = null;

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                var Conn = new SqlConnection(Constr);
                Conn.Open();
                var Comm01 = new SqlCommand("Select userid from t_userinfo where edunum = '" + txtEdunum.Text + "'", Conn);
                var myRead01 = Comm01.ExecuteReader();
                if (myRead01.Read())
                {
                    findId = myRead01[0].ToString();

                }
                myRead01.Close();
                Conn.Close();

                if (findId == null)
                {
                    MessageBox.Show("일치하는 학번이 없습니다.", "알람", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    this.Close();
                    MessageBox.Show("아이디는 '" + findId + "'", "알람", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

                

            }
            catch
            {
                MessageBox.Show("일치하는 학번이 없습니다.", "알람", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

            

            

        }

        private void btnpfind_Click(object sender, EventArgs e)
        {
            try
            {
                var Conn1 = new SqlConnection(Constr);
                Conn1.Open();
                var Comm011 = new SqlCommand("Select A.userpwd from t_login A,t_userinfo B where A.userid = '" + txtPid.Text + "' and B.name = '"+ txtPname.Text +"'  ", Conn1);
                var myRead011 = Comm011.ExecuteReader();
                if (myRead011.Read())
                {
                    findPw = myRead011[0].ToString();

                }
                myRead011.Close();
                Conn1.Close();

                
                if(findPw != null)
                {
                    this.Close();
                    MessageBox.Show("비밀번호는 '" + findPw + "'", "알람", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("일치하는 아이디나 이름이 없습니다.", "알람", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                


            }
            catch
            {
                //MessageBox.Show("일치하는 아이디나 이름이 없습니다.", "알람", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
    }
}
