using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem.LibrarayPage
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            PanelStudent.Visible = false;
            PanelTeacher.Visible = false;
            PanelStudentForgotPassword.Visible = false;
            PanelTeacherForgotPassword.Visible = false;
        }
        LibrarayManagementSystemEntities1 libEntity = new LibrarayManagementSystemEntities1();
        protected void btnLogin_Click(object sender, EventArgs e)
        {
         var student = libEntity.tbl_StudentLogin.Where(x => x.UserName ==txtUserName.Text && x.Password==txtPassword.Text) .FirstOrDefault();

            if (student != null)
            {
                string UserName = student.UserName.ToString();
                
                string status = student.Status.ToString();
                if (status == "True")
                {
                    Session["User"] = UserName;
                    Response.Redirect("default.aspx");
                }
                else
                {
                    lblMessage.Text = "Need Approved By Admin";
                  
                }
            }
            else
            {
                lblMessage.Text = "Incorrect User Name or Password";
            }
        }

        protected void DropDownListLogin_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownListLogin.SelectedValue== "tbl_student")
            {
                PanelStudent.Visible = true;
                PanelTeacher.Visible = false;
            }
            else if(DropDownListLogin.SelectedValue == "tbl_teacher")
            {
                PanelTeacher.Visible = true;
                PanelStudent.Visible = false;
            }
        }

        protected void btnLoginTeacher_Click(object sender, EventArgs e)
        {
            var teacher = libEntity.tbl_TeacherLogin.Where(x => x.UserName == txtTeacherName.Text && x.Password == txtTeacherPass.Text).FirstOrDefault();

            if (teacher != null)
            {
                string UserName = teacher.UserName.ToString();
                Session["Teacher"] = UserName;
                string status = teacher.Status.ToString();
                if (status == "True")
                {

                    Response.Redirect("default.aspx");
                }
                else
                {
                    lblMessage.Text = "Need Approved By Admin";

                }
            }
            else
            {
                lblMessage.Text = "Incorrect User Name or Password";
            }
        }

        protected void LinkButtonStdent_Click(object sender, EventArgs e)
        {
            PanelStudent.Visible = false;
            PanelTeacher.Visible = false;
            Panel1.Visible = false;
            PanelStudentForgotPassword.Visible = true;
            PanelTeacherForgotPassword.Visible = false;
        }

        protected void TeacherForgot_Click(object sender, EventArgs e)
        {
            PanelStudent.Visible = false;
            PanelTeacher.Visible = false;
            Panel1.Visible = false;
            PanelStudentForgotPassword.Visible = false;
            PanelTeacherForgotPassword.Visible = true;
        }

        protected void btnStudentForget_Click(object sender, EventArgs e)
        {
            var studentForget = libEntity.tbl_StudentLogin.Where(x => x.UserName == txtStudentUser.Text).FirstOrDefault();
            if (studentForget != null)
            {
                string name = studentForget.UserName.ToString();
                string pass = txtStuNewPass.Text;

                libEntity.StudentForget(name, pass);
                lblMessage.Text = "Sucessfully Change your Password";
            }
            else
            {
                lblMessage.Text = "Please Make sure your User Name";
            }
        }

        protected void btnTeacherPass_Click(object sender, EventArgs e)
        {
        
            var teacherForgetUser = libEntity.tbl_TeacherLogin.Where(x => x.UserName == txtTeacherUser.Text).FirstOrDefault();
            if (teacherForgetUser != null)
            {
                string name = teacherForgetUser.UserName.ToString();
                string pass = txtTeacherNew.Text;

                libEntity.TeacherForget(name, pass);
                lblMessage.Text = "Sucessfully Change your Password";
            }
            else
            {
                lblMessage.Text = "Please Make sure your User Name";
            }
        }
    }
}