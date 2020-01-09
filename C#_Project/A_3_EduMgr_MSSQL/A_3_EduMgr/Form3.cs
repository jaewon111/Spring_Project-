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
using System.Text.RegularExpressions;
using MetroFramework.Forms;

namespace A_3_EduMgr
{
    public partial class Form3 : MetroForm
    {

        Form2 form;

        public Form3()
        {
            InitializeComponent();
        }

        public Form3(Form2 form2)
        {
            InitializeComponent();
            form = form2;
        }

        public int EudNum { get; set; }
        private string Constr = "server=localhost;uid=mook;pwd=p12345!@;database=project; Integrated Security=True;";
        //SQL 연결문자열 "server=localhost;uid=oooo;pwd=p12345!@;database=oooo";
        public string password = null;

        private void txtModify_Click(object sender, EventArgs e)
        {
            bool pwcheck = Regex.IsMatch(txtPw.Text, @"[a-zA-Z0-9]");
            bool emailcheck = Regex.IsMatch(txtEmail.Text, @"^[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$");
            bool phonecheck = Regex.IsMatch(txtPhone.Text, @"^01{1}[016789]{1}-[0-9]{3,4}-[0-9]{4}$");

           

            if (password != txtPw.Text)   
            {
                if (txtId.Text != "" && pwcheck == true)
                {
                    if (txtEmail.Text != "" && emailcheck == true)
                    {
                        if (txtPhone.Text != "" && phonecheck == true)
                        {
                            try
                            {
                                var Conn = new SqlConnection(Constr);
                                Conn.Open();
                                var strSQL = "update t_userinfo set birth = '" + this.txtBirth.Text + "', email = '" + this.txtEmail.Text + "', phone = '" + this.txtPhone.Text + "' where edunum = " + EudNum + "";
                                var myCom = new SqlCommand(strSQL, Conn);
                                int i = myCom.ExecuteNonQuery();

                                strSQL = "update t_login set userpwd = '" + this.txtPw.Text + "' where userid = '" + txtId.Text + "'";
                                myCom = new SqlCommand(strSQL, Conn);
                                int j = myCom.ExecuteNonQuery();

                                Conn.Close();
                                this.Close();
                                MessageBox.Show("회원정보 수정이 완료되었습니다.", "알람", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                form.DataLoad();
                            }
                            catch
                            {

                            }
                            
                        }
                        else
                        {
                            MessageBox.Show("핸드폰 번호를 입력해주세요.\n'-'을 포함한 올바른 핸드폰 번호를 입력해주세요", "알람", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    else
                    {
                        MessageBox.Show("이메일을 입력해주세요.\n사용가능한 이메일을 입력해주세요", "알람", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    MessageBox.Show("비밀번호를 입력해주세요.\n비밀번호는 영어와 숫자만 가능합니다.", "알람", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                MessageBox.Show("이전과 동일한 비밀번호는 불가능합니다 .\n비밀번호는 영어와 숫자만 가능합니다.", "알람", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            
        }

        private void Form3_Load(object sender, EventArgs e)
        {
            var Conn = new SqlConnection(Constr);
            Conn.Open();
            var Comm = new SqlCommand("Select name, edunum, birth, email, phone, userid from t_userinfo where edunum = " + EudNum + "", Conn);
            var myRead = Comm.ExecuteReader();
            if (myRead.Read())
            {
                this.txtName.Text = myRead[0].ToString();
                this.txtEduNum.Text = myRead[1].ToString();
                this.txtBirth.Text = myRead[2].ToString();
                this.txtEmail.Text = myRead[3].ToString();
                this.txtPhone.Text = myRead[4].ToString();
                this.txtId.Text = myRead[5].ToString();
            }
            myRead.Close();
            Conn.Close();

            var Conn2 = new SqlConnection(Constr);
            Conn2.Open();
            var Comm2 = new SqlCommand("Select userpwd from t_login where userid = '" + txtId.Text + "'", Conn2);
            var myRead2 = Comm2.ExecuteReader();
            if (myRead2.Read())
            {
                password = myRead2[0].ToString();
            }
            myRead2.Close();
            Conn2.Close();

        }
    }
}
