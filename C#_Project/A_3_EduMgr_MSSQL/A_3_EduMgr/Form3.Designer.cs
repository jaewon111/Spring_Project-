namespace A_3_EduMgr
{
    partial class Form3
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
            this.lblEduNum = new System.Windows.Forms.Label();
            this.lblNum = new System.Windows.Forms.Label();
            this.lblBirth = new System.Windows.Forms.Label();
            this.lblEmail = new System.Windows.Forms.Label();
            this.lblPhone = new System.Windows.Forms.Label();
            this.txtEduNum = new System.Windows.Forms.TextBox();
            this.txtName = new System.Windows.Forms.TextBox();
            this.txtBirth = new System.Windows.Forms.TextBox();
            this.txtEmail = new System.Windows.Forms.TextBox();
            this.txtPhone = new System.Windows.Forms.TextBox();
            this.txtModify = new System.Windows.Forms.Button();
            this.lblId = new System.Windows.Forms.Label();
            this.lblPw = new System.Windows.Forms.Label();
            this.txtId = new System.Windows.Forms.TextBox();
            this.txtPw = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // lblEduNum
            // 
            this.lblEduNum.AutoSize = true;
            this.lblEduNum.Location = new System.Drawing.Point(39, 144);
            this.lblEduNum.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblEduNum.Name = "lblEduNum";
            this.lblEduNum.Size = new System.Drawing.Size(40, 16);
            this.lblEduNum.TabIndex = 0;
            this.lblEduNum.Text = "학번";
            // 
            // lblNum
            // 
            this.lblNum.AutoSize = true;
            this.lblNum.Location = new System.Drawing.Point(39, 201);
            this.lblNum.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblNum.Name = "lblNum";
            this.lblNum.Size = new System.Drawing.Size(40, 16);
            this.lblNum.TabIndex = 1;
            this.lblNum.Text = "이름";
            // 
            // lblBirth
            // 
            this.lblBirth.AutoSize = true;
            this.lblBirth.Location = new System.Drawing.Point(39, 259);
            this.lblBirth.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblBirth.Name = "lblBirth";
            this.lblBirth.Size = new System.Drawing.Size(72, 16);
            this.lblBirth.TabIndex = 2;
            this.lblBirth.Text = "생년월일";
            // 
            // lblEmail
            // 
            this.lblEmail.AutoSize = true;
            this.lblEmail.Location = new System.Drawing.Point(39, 376);
            this.lblEmail.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblEmail.Name = "lblEmail";
            this.lblEmail.Size = new System.Drawing.Size(56, 16);
            this.lblEmail.TabIndex = 3;
            this.lblEmail.Text = "이메일";
            // 
            // lblPhone
            // 
            this.lblPhone.AutoSize = true;
            this.lblPhone.Location = new System.Drawing.Point(39, 453);
            this.lblPhone.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblPhone.Name = "lblPhone";
            this.lblPhone.Size = new System.Drawing.Size(56, 16);
            this.lblPhone.TabIndex = 4;
            this.lblPhone.Text = "핸드폰";
            // 
            // txtEduNum
            // 
            this.txtEduNum.Location = new System.Drawing.Point(136, 140);
            this.txtEduNum.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtEduNum.Name = "txtEduNum";
            this.txtEduNum.ReadOnly = true;
            this.txtEduNum.Size = new System.Drawing.Size(153, 26);
            this.txtEduNum.TabIndex = 5;
            // 
            // txtName
            // 
            this.txtName.Location = new System.Drawing.Point(136, 197);
            this.txtName.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtName.Name = "txtName";
            this.txtName.ReadOnly = true;
            this.txtName.Size = new System.Drawing.Size(153, 26);
            this.txtName.TabIndex = 6;
            // 
            // txtBirth
            // 
            this.txtBirth.Location = new System.Drawing.Point(136, 259);
            this.txtBirth.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtBirth.Name = "txtBirth";
            this.txtBirth.ReadOnly = true;
            this.txtBirth.Size = new System.Drawing.Size(153, 26);
            this.txtBirth.TabIndex = 7;
            // 
            // txtEmail
            // 
            this.txtEmail.Location = new System.Drawing.Point(136, 376);
            this.txtEmail.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtEmail.Name = "txtEmail";
            this.txtEmail.Size = new System.Drawing.Size(459, 26);
            this.txtEmail.TabIndex = 8;
            // 
            // txtPhone
            // 
            this.txtPhone.Location = new System.Drawing.Point(136, 440);
            this.txtPhone.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtPhone.Name = "txtPhone";
            this.txtPhone.Size = new System.Drawing.Size(459, 26);
            this.txtPhone.TabIndex = 9;
            // 
            // txtModify
            // 
            this.txtModify.Location = new System.Drawing.Point(499, 518);
            this.txtModify.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtModify.Name = "txtModify";
            this.txtModify.Size = new System.Drawing.Size(96, 31);
            this.txtModify.TabIndex = 10;
            this.txtModify.Text = "수정";
            this.txtModify.UseVisualStyleBackColor = true;
            this.txtModify.Click += new System.EventHandler(this.txtModify_Click);
            // 
            // lblId
            // 
            this.lblId.AutoSize = true;
            this.lblId.Location = new System.Drawing.Point(39, 92);
            this.lblId.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblId.Name = "lblId";
            this.lblId.Size = new System.Drawing.Size(56, 16);
            this.lblId.TabIndex = 11;
            this.lblId.Text = "아이디";
            // 
            // lblPw
            // 
            this.lblPw.AutoSize = true;
            this.lblPw.Location = new System.Drawing.Point(39, 313);
            this.lblPw.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblPw.Name = "lblPw";
            this.lblPw.Size = new System.Drawing.Size(72, 16);
            this.lblPw.TabIndex = 12;
            this.lblPw.Text = "비밀번호";
            // 
            // txtId
            // 
            this.txtId.Location = new System.Drawing.Point(136, 79);
            this.txtId.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtId.Name = "txtId";
            this.txtId.ReadOnly = true;
            this.txtId.Size = new System.Drawing.Size(153, 26);
            this.txtId.TabIndex = 13;
            // 
            // txtPw
            // 
            this.txtPw.Location = new System.Drawing.Point(136, 309);
            this.txtPw.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtPw.Name = "txtPw";
            this.txtPw.Size = new System.Drawing.Size(153, 26);
            this.txtPw.TabIndex = 14;
            // 
            // Form3
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(661, 600);
            this.Controls.Add(this.txtPw);
            this.Controls.Add(this.txtId);
            this.Controls.Add(this.lblPw);
            this.Controls.Add(this.lblId);
            this.Controls.Add(this.txtModify);
            this.Controls.Add(this.txtPhone);
            this.Controls.Add(this.txtEmail);
            this.Controls.Add(this.txtBirth);
            this.Controls.Add(this.txtName);
            this.Controls.Add(this.txtEduNum);
            this.Controls.Add(this.lblPhone);
            this.Controls.Add(this.lblEmail);
            this.Controls.Add(this.lblBirth);
            this.Controls.Add(this.lblNum);
            this.Controls.Add(this.lblEduNum);
            this.Font = new System.Drawing.Font("굴림", 12F);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Form3";
            this.Padding = new System.Windows.Forms.Padding(26, 80, 26, 27);
            this.Text = "학생 정보 수정";
            this.Load += new System.EventHandler(this.Form3_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblEduNum;
        private System.Windows.Forms.Label lblNum;
        private System.Windows.Forms.Label lblBirth;
        private System.Windows.Forms.Label lblEmail;
        private System.Windows.Forms.Label lblPhone;
        private System.Windows.Forms.TextBox txtEduNum;
        private System.Windows.Forms.TextBox txtName;
        private System.Windows.Forms.TextBox txtBirth;
        private System.Windows.Forms.TextBox txtEmail;
        private System.Windows.Forms.TextBox txtPhone;
        private System.Windows.Forms.Button txtModify;
        private System.Windows.Forms.Label lblId;
        private System.Windows.Forms.Label lblPw;
        private System.Windows.Forms.TextBox txtId;
        private System.Windows.Forms.TextBox txtPw;
    }
}