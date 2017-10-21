using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem.LibrarayPage
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PanelBook.Visible = false;
        }
        LibrarayManagementSystemEntities1 lbManageEntity = new LibrarayManagementSystemEntities1();

        protected void btnStudent_Click(object sender, EventArgs e)
        {
            getStudentData();
            
        }

        protected void btnTeacher_Click(object sender, EventArgs e)
        {
            getTeacherData();
           
        }

        protected void gridViewUniversity_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int txtid = Convert.ToInt32(gridViewUniversity.DataKeys[e.RowIndex].Value.ToString());
            lbManageEntity.studentApprovde(txtid);
            lbManageEntity.SaveChanges();
            getStudentData();
           
        }

        public void getStudentData()
        {
            gridViewUniversity.DataSource = lbManageEntity.showPandingStudent();
            gridViewUniversity.DataBind();

            gridViewLibraray.DataSource = lbManageEntity.showPandingStudentLib();
            gridViewLibraray.DataBind();

            gridViewUniversity.Visible = true;
            gridViewLibraray.Visible = true;
            GridViewTeacher.Visible = false;
            GridViewTeacherLogin.Visible = false;
            PanelBook.Visible = false;
        }

        public void getTeacherData()
        {
            GridViewTeacher.DataSource = lbManageEntity.showPandingTeacher();
            GridViewTeacher.DataBind();

            GridViewTeacherLogin.DataSource = lbManageEntity.showPandingTeacherLib();
            GridViewTeacherLogin.DataBind();

            gridViewLibraray.Visible = false;
            gridViewUniversity.Visible = false;
            GridViewTeacher.Visible = true;
            GridViewTeacherLogin.Visible = true;
            PanelBook.Visible = false;
        }

        protected void gridViewLibraray_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int txtid = Convert.ToInt32(gridViewLibraray.DataKeys[e.RowIndex].Value.ToString());
            lbManageEntity.studentLibApprovde(txtid);
            lbManageEntity.SaveChanges();
            getStudentData();
        }

        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            PanelBook.Visible = true;
            GridViewTeacher.Visible = false;
            GridViewTeacherLogin.Visible = false;
            gridViewLibraray.Visible = false;
            gridViewUniversity.Visible = false;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            LibrarayManagementSystemEntities1 libEntity = new LibrarayManagementSystemEntities1();
            tbl_book book = new tbl_book();
            book.BookName = txtBookName.Text;
            book.Author = txtAuthor.Text;
            book.Publication = txtPublication.Text;
            book.Subject = txtSubject.Text;
            book.NoOfCopies =Convert.ToInt32(txtQuantity.Text);
            libEntity.AddTotbl_book(book);
            libEntity.SaveChanges();

            lblMessage.Text = "Book Add Successfulyl !";
            
        }

        protected void GridViewTeacher_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int txtid = Convert.ToInt32(GridViewTeacher.DataKeys[e.RowIndex].Value.ToString());
            lbManageEntity.TeacherAppdove(txtid);
            lbManageEntity.SaveChanges();
            getTeacherData();
        }

        protected void GridViewTeacherLogin_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int txtid = Convert.ToInt32(GridViewTeacherLogin.DataKeys[e.RowIndex].Value.ToString());
            lbManageEntity.TeacherAppdoveLogin(txtid);
            lbManageEntity.SaveChanges();
            getTeacherData();
        }
    }
}