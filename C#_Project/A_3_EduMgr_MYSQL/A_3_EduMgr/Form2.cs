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
using MySql.Data.MySqlClient;

namespace A_3_EduMgr
{
    public partial class Form2 : MetroForm
    {
        public Form2()
        {
            InitializeComponent();
        }

        public string UserId { get; set; }
        private string Constr = "server=localhost;Uid=root;Pwd=jsppass;Database=project;";
        //SQL 연결문자열 "server=localhost;uid=oooo;pwd=p12345!@;database=oooo";
        private int EduNum = 0;
        List<string> subtmp = new List<string>();
        List<string> sub2tmp = new List<string>();
        List<string> sub3tmp = new List<string>();
        public int totMajorCredit = 0;
        public int totLiberal_artsCredit = 0;
        public int totCredit = 0;
        public string tot = "총 신청학점 : ";
        public string tot2 = "교양학점 : ";
        public string tot3 = "전공학점 : ";

        private void Form2_Load(object sender, EventArgs e)
        {
            DataLoad();
            SubjectLoad();
            
            lblTotCredit.Text = tot + totCredit + "/15점";
        }

        public void DataLoad()
        {
            var Conn = new OleDbConnection(Constr);
            Conn.Open();
            var Comm01 = new OleDbCommand("Select name, edunum, birth, email, phone from t_userinfo where userid = '" + UserId + "'", Conn);
            var myRead01 = Comm01.ExecuteReader();
            if (myRead01.Read())
            {
                this.lblName.Text = "이름 : " + myRead01[0].ToString();
                this.lblEduNum.Text = "학번 : " + myRead01[1].ToString();
                EduNum = Convert.ToInt32(myRead01[1].ToString());
                this.lblBirth.Text = "생년월일 : " + myRead01[2].ToString();
                this.lblEmail.Text = "이메일 : " + myRead01[3].ToString();
                this.lblPhone.Text = "핸드폰 : " + myRead01[4].ToString();
            }
            myRead01.Close();
            subtmp.Clear();
            var Comm02 = new OleDbCommand("Select subject from t_user_subject where edunum = " + EduNum + "", Conn);
            var myRead02 = Comm02.ExecuteReader();
            while (myRead02.Read())
            {
                subtmp.Add(myRead02[0].ToString());
            }  
            myRead02.Close();
            Conn.Close();
            
        }

        private void SubjectLoad()
        {
            //int totcredit = 0;

            var Conn = new OleDbConnection(Constr);
            Conn.Open();

            subtmp.Clear();
            var Comm02 = new OleDbCommand("Select subject from t_user_subject where edunum = " + EduNum + "", Conn);
            var myRead02 = Comm02.ExecuteReader();
            while (myRead02.Read())
            {
                subtmp.Add(myRead02[0].ToString());
            }
            myRead02.Close();

            this.lbSubject.Items.Clear();

            var Comm = new OleDbCommand("Select subject from t_subject where category = '전공'", Conn);
            var myRead = Comm.ExecuteReader();
            while (myRead.Read())
            {
                if (!subtmp.Contains(myRead[0].ToString()))
                {
                        this.lbSubject.Items.Add(myRead[0].ToString() );
                }

                   

            }
            myRead.Close();

            var Comm03 = new OleDbCommand("Select subject from t_subject where category = '교양'", Conn);
            var myRead03 = Comm03.ExecuteReader();
            while (myRead03.Read())
            {
                if (!subtmp.Contains(myRead03[0].ToString()))
                {
                    this.lbSubject2.Items.Add(myRead03[0].ToString());
                }



            }
            myRead03.Close();

            Conn.Close();

            
            //뭔진 모르겠는데 지우면 오류남
            foreach (string s in subtmp)
            {

                this.lbMySubject.Items.Add(s);
                int index = s.LastIndexOf("[");
                string cutCredit = s.Substring(index + 1, 1);
                totMajorCredit += Convert.ToInt32(cutCredit);

            }

            totMajorCredit = 0;

            foreach (string s in this.lbMySubject.Items)
            {
                int index2 = s.LastIndexOf("(");
                string cutCategory = s.Substring(index2 + 1, 2);

                string cutLiberal_artsCredit = null;
                string cutMajorsCredit = null;

                if (cutCategory == "교양")
                {
                    int index = s.LastIndexOf("[");
                    cutLiberal_artsCredit = s.Substring(index + 1, 1);
                    totLiberal_artsCredit += Convert.ToInt32(cutLiberal_artsCredit);

                }
                else
                {
                    int index = s.LastIndexOf("[");
                    cutMajorsCredit = s.Substring(index + 1, 1);
                    totMajorCredit += Convert.ToInt32(cutMajorsCredit);
                }


                
               
                
            }
            lbl_Liberalarts.Text = tot2 + totLiberal_artsCredit + "/4점";
            lblMajor.Text = tot3 + totMajorCredit + "/10점";
            totCredit = totLiberal_artsCredit + totMajorCredit;
            lblTotCredit.Text = tot + totCredit + "/15점";


            /*foreach (string sub in this.lbMySubject.Items)
            {

                foreach (string sub2 in this.lbSubject.Items)
                {
                    if (sub2 == sub)
                    {
                        this.lbSubject.Items.Remove(sub2);
                    }
                }
            }*/

        }

        private void btnModify_Click(object sender, EventArgs e)
        {
            Form3 frm3 = new Form3(this);
            frm3.EudNum = EduNum;
            if (frm3.ShowDialog() == DialogResult.OK)
            {
                DataLoad();
                frm3.Close();
            }
        }

        private void Form2_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.ExitThread();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            totMajorCredit = 0;
            totLiberal_artsCredit = 0;
            subtmp.Clear();
            sub2tmp.Clear();
            sub3tmp.Clear();
            foreach (string s in lbSubject.SelectedItems)
            {
                this.lbMySubject.Items.Add(s);
                sub3tmp.Add(s);
            }
            foreach (string s in lbSubject2.SelectedItems)
            {
                this.lbMySubject.Items.Add(s);
                sub2tmp.Add(s);
            }
            foreach (string s in sub3tmp)
            {
                this.lbSubject.Items.Remove(s);
            }
            foreach (string s in sub2tmp)
            {
                this.lbSubject2.Items.Remove(s);
            }

            foreach (string s in this.lbMySubject.Items)
            {
                /*int index = s.LastIndexOf("[");
                string cutCredit = s.Substring(index + 1, 1);
                totMajorCredit += Convert.ToInt32(cutCredit);
                lblTotCredit.Text = tot + totMajorCredit + "/15점";*/
                int index2 = s.LastIndexOf("(");
                string cutCategory = s.Substring(index2 + 1, 2);

                string cutLiberal_artsCredit = null;
                string cutMajorsCredit = null;

                if (cutCategory == "교양")
                {
                    int index = s.LastIndexOf("[");
                    cutLiberal_artsCredit = s.Substring(index + 1, 1);
                    totLiberal_artsCredit += Convert.ToInt32(cutLiberal_artsCredit);

                }
                else
                {
                    int index = s.LastIndexOf("[");
                    cutMajorsCredit = s.Substring(index + 1, 1);
                    totMajorCredit += Convert.ToInt32(cutMajorsCredit);
                }

                
            }

            lbl_Liberalarts.Text = tot2 + totLiberal_artsCredit + "/4점";
            lblMajor.Text = tot3 + totMajorCredit + "/10점";
            totCredit = totLiberal_artsCredit + totMajorCredit;
            lblTotCredit.Text = tot + totCredit + "/15점";
        }

        private void btnDel_Click(object sender, EventArgs e)
        {
            totMajorCredit = 0;
            totLiberal_artsCredit = 0;
            subtmp.Clear();
            sub2tmp.Clear();
            sub3tmp.Clear();
            foreach (string s in lbMySubject.SelectedItems)
            {
                int index2 = s.LastIndexOf("(");
                string cutCategory = s.Substring(index2 + 1, 2);
                if(cutCategory == "교양")
                {
                    this.lbSubject2.Items.Add(s);
                    sub2tmp.Add(s);
                }
                else
                {
                    this.lbSubject.Items.Add(s);
                    sub3tmp.Add(s);
                }
                
            }

            foreach (string s in sub2tmp)
            {
                this.lbMySubject.Items.Remove(s);
                
            }
            foreach (string s in sub3tmp)
            {
                this.lbMySubject.Items.Remove(s);

            }



            foreach (string s in this.lbMySubject.Items)
            {
                /*int index = s.LastIndexOf("[");
                string cutCredit = s.Substring(index + 1, 1);
                totMajorCredit += Convert.ToInt32(cutCredit);
                lblTotCredit.Text = tot + totMajorCredit + "/15점";*/
                int index2 = s.LastIndexOf("(");
                string cutCategory = s.Substring(index2 + 1, 2);

                string cutLiberal_artsCredit = null;
                string cutMajorsCredit = null;

                if (cutCategory == "교양")
                {
                    int index = s.LastIndexOf("[");
                    cutLiberal_artsCredit = s.Substring(index + 1, 1);
                    totLiberal_artsCredit += Convert.ToInt32(cutLiberal_artsCredit);

                }
                else
                {
                    int index = s.LastIndexOf("[");
                    cutMajorsCredit = s.Substring(index + 1, 1);
                    totMajorCredit += Convert.ToInt32(cutMajorsCredit);
                }

            }

            lbl_Liberalarts.Text = tot2 + totLiberal_artsCredit + "/4점";
            lblMajor.Text = tot3 + totMajorCredit + "/10점";
            totCredit = totLiberal_artsCredit + totMajorCredit;
            lblTotCredit.Text = tot + totCredit + "/15점";
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if(totMajorCredit <= 15)
            {
                if(totLiberal_artsCredit <= 4)
                {
                    if(totMajorCredit <= 10)
                    {
                        try
                        {
                            var Conn = new OleDbConnection(Constr);
                            Conn.Open();
                            var myCom01 = new OleDbCommand("delete from t_user_subject where edunum = " + EduNum + "", Conn);
                            myCom01.ExecuteNonQuery();
                            foreach (string sub in this.lbMySubject.Items)
                            {
                                int index = sub.LastIndexOf("[");
                                string cutCredit = sub.Substring(index + 1, 1);
                                string cutSubject = sub.Substring(0, index - 1);
                                //var strSQL = "insert into t_user_subject(edunum, subject, credit) values(" + EduNum + ", '" + cutSubject + "', " + Convert.ToInt32(cutCredit) + ")";
                                var strSQL = "insert into t_user_subject(edunum, subject) values(" + EduNum + ", '" + sub + "')";
                                var myCom02 = new OleDbCommand(strSQL, Conn);
                                myCom02.ExecuteNonQuery();
                            }
                            Conn.Close();
                            MessageBox.Show("데이터가 저장 되었습니다.", "알람", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        catch
                        {
                            MessageBox.Show("데이터가 저장 되지 않았습니다.", "알람", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    else
                    {
                        MessageBox.Show("전공학점은 10점을 넘을 수 없습니다..", "알람", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    MessageBox.Show("교양학점은 4점을 넘을 수 없습니다..", "알람", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                MessageBox.Show("총 신청학점은 15점을 넘을 수 없습니다..", "알람", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            
        }

        private void btnLogout_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form1 frm1 = new Form1();
            frm1.Show();
        }
    }
}
