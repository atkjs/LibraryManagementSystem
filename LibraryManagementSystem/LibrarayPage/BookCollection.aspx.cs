using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace LibraryManagementSystem.LibrarayPage
{
    public partial class BookCollection : System.Web.UI.Page
    {
        LibrarayManagementSystemEntities1 libEntity = new LibrarayManagementSystemEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            showBook();
            
        }

        public void showBook()
        {
            

            GridViewBook.DataSource = libEntity.showAllBooks();
            GridViewBook.DataBind();


        }

        
        tbl_bookIssue bookIssu = new tbl_bookIssue();
        protected void GridViewBook_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int txtid = Convert.ToInt32(GridViewBook.DataKeys[e.RowIndex].Value.ToString());
            bookIssu.BookId = txtid;
            bookIssu.IssuDate = DateTime.Today;
            bookIssu.ReturnDate = DateTime.Today.AddDays(3);
            if (Session["User"] != null)
            {
                string user = Session["User"].ToString();
                var student = libEntity.tbl_StudentLogin.Where(x => x.UserName ==user ).FirstOrDefault();
                if (student != null)
                {
                    int id =Convert.ToInt32(student.StudentId.ToString());
                    bookIssu.StudentId = id;
                    libEntity.AddTotbl_bookIssue(bookIssu);
                    libEntity.SaveChanges();
                }
                labDate.Text ="You Must Return This Book :"+ DateTime.Today.AddDays(3).ToString();
            }
            else
            {
                labDate.Text = "Please Login First";
            }
           

        }
        DataTable objDa = new DataTable();
        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            if (TextBoxSearch.Text =="")
            {
                labDate.Text = "Please Enter What You search";
            }
            else
            {
                try
                {
                    GridViewBook.DataSource = libEntity.searchBook(TextBoxSearch.Text);
                    GridViewBook.DataBind();
                }
                catch (Exception)
                {

                    labDate.Text = "Record Not found";
                }
                
            }
            
        }
    }
}