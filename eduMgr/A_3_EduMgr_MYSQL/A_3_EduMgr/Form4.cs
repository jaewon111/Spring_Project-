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
using System.Data.OracleClient;
using System.Data.OleDb;

namespace A_3_EduMgr
{
    public partial class Form4 : MetroForm
    {
        public Form4()
        {
            InitializeComponent();
        }

        private string Constr = "server=localhost;uid=mook;pwd=p12345!@;database=project; Integrated Security = True;";

        private void txtJoin_Click(object sender, EventArgs e)
        {
            bool idcheck = Regex.IsMatch(txtId.Text, @"[a-zA-Z0-9]");
            bool pwcheck = Regex.IsMatch(txtPw.Text, @"[a-zA-Z0-9]");
            bool ednumcheck = Regex.IsMatch(txtEdunum.Text, @"^[0-9]*$");
            bool namecheck = Regex.IsMatch(txtName.Text, @"^[가-힣a-zA-Z]*$");
            bool birthcheck = Regex.IsMatch(txtBirth.Text, @"[0-9]{6}");
            bool emailcheck = Regex.IsMatch(txtEmail.Text, @"^[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$");
            bool phonecheck = Regex.IsMatch(txtPhone.Text, @"^01{1}[016789]{1}-[0-9]{3,4}-[0-9]{4}$");

            //빈칸 조건문
            if (txtId.Text != "" && idcheck == true)
            {
                if(txtPw.Text != "" && pwcheck == true)
                {
                    if(txtEdunum.Text != "" && ednumcheck == true)
                    {
                        if(txtName.Text != "" && namecheck == true)
                        {
                            if(txtBirth.Text != "" && birthcheck == true)
                            {
                                if(txtEmail.Text != "" && emailcheck == true)
                                {
                                    if(txtPhone.Text != "" && phonecheck == true)
                                    {
                                        var Conn = new OleDbConnection(Constr);
                                        Conn.Open();
                                        var strSQL = "insert into t_login(userid,userpwd) values('" + txtId.Text + "', '" + txtPw.Text + "')";
                                        var myCom = new OleDbCommand(strSQL, Conn);
                                        int i = myCom.ExecuteNonQuery();
                                        strSQL = "insert into t_userinfo(userid,edunum,name,birth,email,phone) values('" + txtId.Text + "', '" + txtEdunum.Text + "', '" + txtName.Text + "', '" + txtBirth.Text + "', '" + txtEmail.Text + "', '" + txtPhone.Text + "')";
                                        myCom = new OleDbCommand(strSQL, Conn);
                                        i = myCom.ExecuteNonQuery();
                                        Conn.Close();
                                        this.Close();
                                        MessageBox.Show("회원가입이 완료되었습니다.", "알람", MessageBoxButtons.OK, MessageBoxIcon.Information);
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
                                MessageBox.Show("생년월일 입력해주세요.\n생년월일은 6자리 숫자만 가능합니다\nEX(19960424).", "알람", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            }
                        }
                        else
                        {
                            MessageBox.Show("이름을 입력해주세요.\n이름은 영어와 한글만 가능합니다.", "알람", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    else
                    {
                        MessageBox.Show("학번을 입력해주세요.\n학번은 숫자만 가능합니다.", "알람", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    MessageBox.Show("비밀번호를 입력해주세요.\n비밀번호는 영어와 숫자만 가능합니다.", "알람", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                MessageBox.Show("아이디를 입력해주세요\n아이디는 영어와 숫자만 가능합니다.", "알람", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            //빈칸 조건문 끝
 
        }

        private void btnOverlap_Click(object sender, EventArgs e)
        {
            string checkId = null;

            var Conn = new OleDbConnection(Constr);
            Conn.Open();
            var Comm = new OleDbCommand("Select userid from t_login where userid = '" + txtId.Text + "' ", Conn);
            var myRead = Comm.ExecuteReader();
            if (myRead.Read())
            {
                checkId = myRead[0].ToString();
            }
            myRead.Close();
            Conn.Close();

            if(txtId.Text != "")
            {
                if (checkId == null)
                {
                    MessageBox.Show("사용가능한 아이디 입니다.", "알람", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    txtJoin.Enabled = true;
                }
                else
                {
                    MessageBox.Show("중복된 아이디 입니다.", "알람", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            else
            {
                MessageBox.Show("아이디를 입력해주세요.", "알람", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
           
        }
    }
}

