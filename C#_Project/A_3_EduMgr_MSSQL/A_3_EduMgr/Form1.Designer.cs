namespace A_3_EduMgr
{
    partial class Form1
    {
        /// <summary>
        /// 필수 디자이너 변수입니다.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 사용 중인 모든 리소스를 정리합니다.
        /// </summary>
        /// <param name="disposing">관리되는 리소스를 삭제해야 하면 true이고, 그렇지 않으면 false입니다.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form 디자이너에서 생성한 코드

        /// <summary>
        /// 디자이너 지원에 필요한 메서드입니다. 
        /// 이 메서드의 내용을 코드 편집기로 수정하지 마세요.
        /// </summary>
        private void InitializeComponent()
        {
            this.blId = new System.Windows.Forms.Label();
            this.blPwd = new System.Windows.Forms.Label();
            this.lblResult = new System.Windows.Forms.Label();
            this.txtId = new System.Windows.Forms.TextBox();
            this.txtPwd = new System.Windows.Forms.TextBox();
            this.txtLogin = new System.Windows.Forms.Button();
            this.txtSignup = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // blId
            // 
            this.blId.AutoSize = true;
            this.blId.Location = new System.Drawing.Point(39, 84);
            this.blId.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.blId.Name = "blId";
            this.blId.Size = new System.Drawing.Size(21, 16);
            this.blId.TabIndex = 0;
            this.blId.Text = "ID";
            // 
            // blPwd
            // 
            this.blPwd.AutoSize = true;
            this.blPwd.Location = new System.Drawing.Point(41, 140);
            this.blPwd.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.blPwd.Name = "blPwd";
            this.blPwd.Size = new System.Drawing.Size(42, 16);
            this.blPwd.TabIndex = 1;
            this.blPwd.Text = "PWD";
            // 
            // lblResult
            // 
            this.lblResult.AutoSize = true;
            this.lblResult.Location = new System.Drawing.Point(41, 287);
            this.lblResult.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblResult.Name = "lblResult";
            this.lblResult.Size = new System.Drawing.Size(50, 16);
            this.lblResult.TabIndex = 2;
            this.lblResult.Text = "결과 :";
            // 
            // txtId
            // 
            this.txtId.Location = new System.Drawing.Point(152, 84);
            this.txtId.Margin = new System.Windows.Forms.Padding(4);
            this.txtId.Name = "txtId";
            this.txtId.Size = new System.Drawing.Size(127, 26);
            this.txtId.TabIndex = 3;
            this.txtId.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtId_KeyDown);
            // 
            // txtPwd
            // 
            this.txtPwd.Location = new System.Drawing.Point(152, 140);
            this.txtPwd.Margin = new System.Windows.Forms.Padding(4);
            this.txtPwd.Name = "txtPwd";
            this.txtPwd.Size = new System.Drawing.Size(127, 26);
            this.txtPwd.TabIndex = 4;
            this.txtPwd.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtPwd_KeyDown);
            // 
            // txtLogin
            // 
            this.txtLogin.Location = new System.Drawing.Point(316, 84);
            this.txtLogin.Margin = new System.Windows.Forms.Padding(4);
            this.txtLogin.Name = "txtLogin";
            this.txtLogin.Size = new System.Drawing.Size(108, 84);
            this.txtLogin.TabIndex = 5;
            this.txtLogin.Text = "로그인";
            this.txtLogin.UseVisualStyleBackColor = true;
            this.txtLogin.Click += new System.EventHandler(this.txtLogin_Click);
            // 
            // txtSignup
            // 
            this.txtSignup.Location = new System.Drawing.Point(41, 211);
            this.txtSignup.Margin = new System.Windows.Forms.Padding(4);
            this.txtSignup.Name = "txtSignup";
            this.txtSignup.Size = new System.Drawing.Size(96, 31);
            this.txtSignup.TabIndex = 6;
            this.txtSignup.Text = "회원가입";
            this.txtSignup.UseVisualStyleBackColor = true;
            this.txtSignup.Click += new System.EventHandler(this.txtSignup_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(184, 211);
            this.button1.Margin = new System.Windows.Forms.Padding(4);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(240, 31);
            this.button1.TabIndex = 7;
            this.button1.Text = "아이디/비밀번호 찾기";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(537, 333);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.txtSignup);
            this.Controls.Add(this.txtLogin);
            this.Controls.Add(this.txtPwd);
            this.Controls.Add(this.txtId);
            this.Controls.Add(this.lblResult);
            this.Controls.Add(this.blPwd);
            this.Controls.Add(this.blId);
            this.Font = new System.Drawing.Font("굴림", 12F);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Form1";
            this.Padding = new System.Windows.Forms.Padding(26, 80, 26, 27);
            this.Text = "로그인";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label blId;
        private System.Windows.Forms.Label blPwd;
        private System.Windows.Forms.Label lblResult;
        private System.Windows.Forms.TextBox txtId;
        private System.Windows.Forms.TextBox txtPwd;
        private System.Windows.Forms.Button txtLogin;
        private System.Windows.Forms.Button txtSignup;
        private System.Windows.Forms.Button button1;
    }
}

