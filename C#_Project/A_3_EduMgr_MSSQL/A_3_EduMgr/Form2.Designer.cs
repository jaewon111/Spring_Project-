namespace A_3_EduMgr
{
    partial class Form2
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
            this.plGroup = new System.Windows.Forms.Panel();
            this.lblPhone = new System.Windows.Forms.Label();
            this.lblEmail = new System.Windows.Forms.Label();
            this.lblBirth = new System.Windows.Forms.Label();
            this.lblEduNum = new System.Windows.Forms.Label();
            this.lblName = new System.Windows.Forms.Label();
            this.btnModify = new System.Windows.Forms.Button();
            this.lblSubject = new System.Windows.Forms.Label();
            this.lblMySubject = new System.Windows.Forms.Label();
            this.lbSubject = new System.Windows.Forms.ListBox();
            this.lbMySubject = new System.Windows.Forms.ListBox();
            this.btnAdd = new System.Windows.Forms.Button();
            this.btnDel = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnLogout = new System.Windows.Forms.Button();
            this.lblTotCredit = new System.Windows.Forms.Label();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.lbSubject2 = new System.Windows.Forms.ListBox();
            this.lblMajor = new System.Windows.Forms.Label();
            this.lbl_Liberalarts = new System.Windows.Forms.Label();
            this.plGroup.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.SuspendLayout();
            // 
            // plGroup
            // 
            this.plGroup.BackColor = System.Drawing.Color.White;
            this.plGroup.Controls.Add(this.lblPhone);
            this.plGroup.Controls.Add(this.lblEmail);
            this.plGroup.Controls.Add(this.lblBirth);
            this.plGroup.Controls.Add(this.lblEduNum);
            this.plGroup.Controls.Add(this.lblName);
            this.plGroup.Location = new System.Drawing.Point(27, 100);
            this.plGroup.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.plGroup.Name = "plGroup";
            this.plGroup.Size = new System.Drawing.Size(998, 133);
            this.plGroup.TabIndex = 0;
            // 
            // lblPhone
            // 
            this.lblPhone.AutoSize = true;
            this.lblPhone.Location = new System.Drawing.Point(392, 93);
            this.lblPhone.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblPhone.Name = "lblPhone";
            this.lblPhone.Size = new System.Drawing.Size(66, 16);
            this.lblPhone.TabIndex = 4;
            this.lblPhone.Text = "핸드폰 :";
            // 
            // lblEmail
            // 
            this.lblEmail.AutoSize = true;
            this.lblEmail.Location = new System.Drawing.Point(23, 93);
            this.lblEmail.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblEmail.Name = "lblEmail";
            this.lblEmail.Size = new System.Drawing.Size(66, 16);
            this.lblEmail.TabIndex = 3;
            this.lblEmail.Text = "이메일 :";
            // 
            // lblBirth
            // 
            this.lblBirth.AutoSize = true;
            this.lblBirth.Location = new System.Drawing.Point(536, 20);
            this.lblBirth.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblBirth.Name = "lblBirth";
            this.lblBirth.Size = new System.Drawing.Size(82, 16);
            this.lblBirth.TabIndex = 2;
            this.lblBirth.Text = "생년월일 :";
            // 
            // lblEduNum
            // 
            this.lblEduNum.AutoSize = true;
            this.lblEduNum.Location = new System.Drawing.Point(262, 20);
            this.lblEduNum.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblEduNum.Name = "lblEduNum";
            this.lblEduNum.Size = new System.Drawing.Size(50, 16);
            this.lblEduNum.TabIndex = 1;
            this.lblEduNum.Text = "학번 :";
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.Location = new System.Drawing.Point(21, 20);
            this.lblName.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(50, 16);
            this.lblName.TabIndex = 0;
            this.lblName.Text = "이름 :";
            // 
            // btnModify
            // 
            this.btnModify.Location = new System.Drawing.Point(840, 432);
            this.btnModify.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnModify.Name = "btnModify";
            this.btnModify.Size = new System.Drawing.Size(185, 31);
            this.btnModify.TabIndex = 1;
            this.btnModify.Text = "학생 정보 수정";
            this.btnModify.UseVisualStyleBackColor = true;
            this.btnModify.Click += new System.EventHandler(this.btnModify_Click);
            // 
            // lblSubject
            // 
            this.lblSubject.AutoSize = true;
            this.lblSubject.BackColor = System.Drawing.Color.White;
            this.lblSubject.Font = new System.Drawing.Font("굴림", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.lblSubject.Location = new System.Drawing.Point(27, 283);
            this.lblSubject.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblSubject.Name = "lblSubject";
            this.lblSubject.Size = new System.Drawing.Size(59, 16);
            this.lblSubject.TabIndex = 2;
            this.lblSubject.Text = "강의명";
            this.lblSubject.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblMySubject
            // 
            this.lblMySubject.AutoSize = true;
            this.lblMySubject.BackColor = System.Drawing.Color.White;
            this.lblMySubject.Font = new System.Drawing.Font("굴림", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.lblMySubject.Location = new System.Drawing.Point(501, 283);
            this.lblMySubject.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblMySubject.Name = "lblMySubject";
            this.lblMySubject.Size = new System.Drawing.Size(82, 16);
            this.lblMySubject.TabIndex = 3;
            this.lblMySubject.Text = "수강 강의";
            this.lblMySubject.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lbSubject
            // 
            this.lbSubject.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.lbSubject.FormattingEnabled = true;
            this.lbSubject.ItemHeight = 16;
            this.lbSubject.Location = new System.Drawing.Point(8, 4);
            this.lbSubject.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.lbSubject.Name = "lbSubject";
            this.lbSubject.SelectionMode = System.Windows.Forms.SelectionMode.MultiSimple;
            this.lbSubject.Size = new System.Drawing.Size(210, 192);
            this.lbSubject.TabIndex = 4;
            // 
            // lbMySubject
            // 
            this.lbMySubject.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.lbMySubject.FormattingEnabled = true;
            this.lbMySubject.ItemHeight = 16;
            this.lbMySubject.Location = new System.Drawing.Point(501, 347);
            this.lbMySubject.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.lbMySubject.Name = "lbMySubject";
            this.lbMySubject.SelectionMode = System.Windows.Forms.SelectionMode.MultiSimple;
            this.lbMySubject.Size = new System.Drawing.Size(283, 210);
            this.lbMySubject.TabIndex = 5;
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(361, 384);
            this.btnAdd.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(96, 31);
            this.btnAdd.TabIndex = 6;
            this.btnAdd.Text = "〉";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // btnDel
            // 
            this.btnDel.Location = new System.Drawing.Point(361, 468);
            this.btnDel.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnDel.Name = "btnDel";
            this.btnDel.Size = new System.Drawing.Size(96, 31);
            this.btnDel.TabIndex = 7;
            this.btnDel.Text = "〈";
            this.btnDel.UseVisualStyleBackColor = true;
            this.btnDel.Click += new System.EventHandler(this.btnDel_Click);
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(840, 631);
            this.btnSave.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(185, 31);
            this.btnSave.TabIndex = 8;
            this.btnSave.Text = "수강 신청 완료";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // btnLogout
            // 
            this.btnLogout.Location = new System.Drawing.Point(840, 270);
            this.btnLogout.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnLogout.Name = "btnLogout";
            this.btnLogout.Size = new System.Drawing.Size(185, 31);
            this.btnLogout.TabIndex = 9;
            this.btnLogout.Text = "로그아웃";
            this.btnLogout.UseVisualStyleBackColor = true;
            this.btnLogout.Click += new System.EventHandler(this.btnLogout_Click);
            // 
            // lblTotCredit
            // 
            this.lblTotCredit.AutoSize = true;
            this.lblTotCredit.Location = new System.Drawing.Point(496, 646);
            this.lblTotCredit.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblTotCredit.Name = "lblTotCredit";
            this.lblTotCredit.Size = new System.Drawing.Size(108, 16);
            this.lblTotCredit.TabIndex = 10;
            this.lblTotCredit.Text = "총 신청학점 : ";
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Location = new System.Drawing.Point(26, 317);
            this.tabControl1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(293, 244);
            this.tabControl1.TabIndex = 11;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.lbSubject);
            this.tabPage1.Location = new System.Drawing.Point(4, 26);
            this.tabPage1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.tabPage1.Size = new System.Drawing.Size(285, 214);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "전공";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.lbSubject2);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.tabPage2.Size = new System.Drawing.Size(285, 218);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "교양";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // lbSubject2
            // 
            this.lbSubject2.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.lbSubject2.FormattingEnabled = true;
            this.lbSubject2.ItemHeight = 16;
            this.lbSubject2.Location = new System.Drawing.Point(8, 4);
            this.lbSubject2.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.lbSubject2.Name = "lbSubject2";
            this.lbSubject2.SelectionMode = System.Windows.Forms.SelectionMode.MultiSimple;
            this.lbSubject2.Size = new System.Drawing.Size(248, 192);
            this.lbSubject2.TabIndex = 5;
            // 
            // lblMajor
            // 
            this.lblMajor.AutoSize = true;
            this.lblMajor.Location = new System.Drawing.Point(496, 573);
            this.lblMajor.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblMajor.Name = "lblMajor";
            this.lblMajor.Size = new System.Drawing.Size(87, 16);
            this.lblMajor.TabIndex = 12;
            this.lblMajor.Text = "전공학점 : ";
            // 
            // lbl_Liberalarts
            // 
            this.lbl_Liberalarts.AutoSize = true;
            this.lbl_Liberalarts.Location = new System.Drawing.Point(496, 611);
            this.lbl_Liberalarts.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lbl_Liberalarts.Name = "lbl_Liberalarts";
            this.lbl_Liberalarts.Size = new System.Drawing.Size(87, 16);
            this.lbl_Liberalarts.TabIndex = 13;
            this.lbl_Liberalarts.Text = "교양학점 : ";
            // 
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1047, 693);
            this.Controls.Add(this.lbl_Liberalarts);
            this.Controls.Add(this.lblMajor);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.lblTotCredit);
            this.Controls.Add(this.btnLogout);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.btnDel);
            this.Controls.Add(this.btnAdd);
            this.Controls.Add(this.lbMySubject);
            this.Controls.Add(this.lblMySubject);
            this.Controls.Add(this.lblSubject);
            this.Controls.Add(this.btnModify);
            this.Controls.Add(this.plGroup);
            this.Font = new System.Drawing.Font("굴림", 12F);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Form2";
            this.Padding = new System.Windows.Forms.Padding(26, 80, 26, 27);
            this.Text = "학생정보";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form2_FormClosing);
            this.Load += new System.EventHandler(this.Form2_Load);
            this.plGroup.ResumeLayout(false);
            this.plGroup.PerformLayout();
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage2.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel plGroup;
        private System.Windows.Forms.Label lblName;
        private System.Windows.Forms.Label lblPhone;
        private System.Windows.Forms.Label lblEmail;
        private System.Windows.Forms.Label lblBirth;
        private System.Windows.Forms.Label lblEduNum;
        private System.Windows.Forms.Button btnModify;
        private System.Windows.Forms.Label lblSubject;
        private System.Windows.Forms.Label lblMySubject;
        private System.Windows.Forms.ListBox lbSubject;
        private System.Windows.Forms.ListBox lbMySubject;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.Button btnDel;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnLogout;
        private System.Windows.Forms.Label lblTotCredit;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.ListBox lbSubject2;
        private System.Windows.Forms.Label lblMajor;
        private System.Windows.Forms.Label lbl_Liberalarts;
    }
}