using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem.LibrarayPage
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if (RadioButtonLib.Checked)
                {
                    PanelUniRegister.Visible = false;
                    PanelUniStudent.Visible = false;
                    PanelUniTeacher.Visible = false;

                    PanelLibRegister.Visible = true;
                    PanelLibStudent.Visible = false;
                    PanelLibTeacher.Visible = false;

                }
                else if (RadioButtonUni.Checked)
                {
                    PanelUniRegister.Visible = true;
                    PanelUniStudent.Visible = false;
                    PanelUniTeacher.Visible = false;

                    PanelLibRegister.Visible = false;
                    PanelLibStudent.Visible = false;
                    PanelLibTeacher.Visible = false;

                }
                else
                {

                    PanelUniRegister.Visible = false;
                    PanelUniStudent.Visible = false;
                    PanelUniTeacher.Visible = false;

                    PanelLibRegister.Visible = false;
                    PanelLibStudent.Visible = false;
                    PanelLibTeacher.Visible = false;

                }
            
            
        }

        protected void DropDownListRegister_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownListRegister.SelectedValue == "tbl_student")
            {
                PanelUniStudent.Visible = true;
                PanelUniTeacher.Visible = false;
            }
            else if (DropDownListRegister.SelectedValue == "tbl_teacher")
            {
                PanelUniStudent.Visible = false;
                PanelUniTeacher.Visible = true;
            }
            else
            {
                PanelUniStudent.Visible = false;
                PanelUniTeacher.Visible = false;
            }
        }

        protected void DropDownListLibReg_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownListLibReg.SelectedValue == "tbl_student")
            {
                PanelLibStudent.Visible = true;
                PanelLibTeacher.Visible = false;
            }
            else if (DropDownListLibReg.SelectedValue == "tbl_teacher")
            {
                PanelLibStudent.Visible = false;
                PanelLibTeacher.Visible = true;
            }
            else
            {
                PanelLibStudent.Visible = false;
                PanelLibTeacher.Visible = false;
            }
        }
        LibrarayManagementSystemEntities1 lbManageEntity = new LibrarayManagementSystemEntities1();
        tbl_student student = new tbl_student();

        protected void btnUniStudent_Click(object sender, EventArgs e)
        {
            student.RegNo = Convert.ToInt32(txtRegisterNo.Text);
            student.Branch = txtBranch.Text;
            student.Section = txtSection.Text;
            student.Semester = txtSemester.Text;
            student.YearOfAdmision = Convert.ToInt32(txtYear.Text);
            student.Status = "False";

            lbManageEntity.AddTotbl_student(student);
            lbManageEntity.SaveChanges();
            CleanAll();
        }

        protected void btnUniTeacher_Click(object sender, EventArgs e)
        {
            tbl_teacher teacher = new tbl_teacher();
            teacher.Name = txtName.Text;
            teacher.Designation = txtDes.Text;
            teacher.Branch = txtTeacherBranch.Text;
            teacher.ContactNo = Convert.ToInt32(txtContact.Text);
            teacher.Lectures = txtLecture.Text;
            teacher.Status = "False";

            lbManageEntity.AddTotbl_teacher(teacher);
            lbManageEntity.SaveChanges();
            CleanAll();
        }
        tbl_StudentLogin studentLib = new tbl_StudentLogin();
        protected void btnLibStudentRegister_Click(object sender, EventArgs e)
        {
           
            studentLib.StudentId = Convert.ToInt32(txtStudentID.Text);
            studentLib.UserName = txtStudentUserName.Text;
            studentLib.Password = txtStudentPassword.Text;
            studentLib.NumberOfBooks = Convert.ToInt32(txtNumBook.Text);
            studentLib.Status = "False";
            checkStudent();
           
        }
        tbl_TeacherLogin teacherLib = new tbl_TeacherLogin();
        protected void btnLibTeacherResister_Click(object sender, EventArgs e)
        {
           
            teacherLib.TeacherId = Convert.ToInt32(txtLibTeacherId.Text);
            teacherLib.UserName = txtTeacherUser.Text;
            teacherLib.Password = txtTeacherPassword.Text;
            teacherLib.Status = "False";
            checkTeacher();
           
        }

        public void CleanAll()
        {
            txtRegisterNo.Text = "";
            txtBranch.Text = "";
            txtContact.Text = "";
            txtDes.Text = "";
            txtLecture.Text = "";
            txtName.Text = "";
            txtNumBook.Text = "";
            txtSection.Text = "";
            txtSemester.Text = "";
            txtStudentID.Text = "";
            txtStudentPassword.Text = "";
            txtStudentUserName.Text = "";
            txtTeacherBranch.Text = "";
            txtTeacherPassword.Text = "";
            txtTeacherUser.Text = "";
            txtYear.Text = "";

            lblMessafe.Text = "Congratulation Registation Success ! You Can Login After Approve By Admin";
        }

        public void checkStudent()
        {
            int sid = Convert.ToInt32(txtStudentID.Text);
            var student = lbManageEntity.tbl_student.Where(x => x.StudentId == sid).FirstOrDefault();
            if (student != null)
            {
                lbManageEntity.AddTotbl_StudentLogin(studentLib);
                lbManageEntity.SaveChanges();
                CleanAll();
            }

            else
            {
                lblMessafe.Text = "Incorrect Student ID Pleace cofirm your id";
            }
        }

        public void checkTeacher()
        {
            int tid = Convert.ToInt32(txtLibTeacherId.Text);
            var teacher = lbManageEntity.tbl_TeacherLogin.Where(x => x.TeacherId == tid).FirstOrDefault();
            if (teacher != null)
            {
                lbManageEntity.AddTotbl_TeacherLogin(teacherLib);
                lbManageEntity.SaveChanges();
                CleanAll();
            }

            else
            {
                lblMessafe.Text = "Incorrect Teacher ID Pleace cofirm your id";
            }
        }
    }
}