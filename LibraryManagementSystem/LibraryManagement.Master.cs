using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
namespace LibraryManagementSystem
{
    public partial class LibraryManagement : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"]!=null || Session["Teacher"] != null)
            {
                LbtnLoginOut.Text = "LOGOUT";
            }
            else
            {
                LbtnLoginOut.Text = "LOGIN";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = ConfigurationManager.AppSettings["Username"].ToString();
            string password = ConfigurationManager.AppSettings["Password"].ToString();

            if(username==txtUserName.Text && password == txtPassword.Text)
            {
                Response.Redirect("AdminPage.aspx");
               
            }
            else
            {
                lblMessage.Text = "Incorrect Admin User name or Password";
            }

            txtUserName.Text = "";
            txtPassword.Text = "";
        }


        protected void LbtnLoginOut_Click1(object sender, EventArgs e)
        {
            if (Session["User"] != null || Session["Teacher"] != null)
            {
                Session.Abandon();
                Response.Redirect("default.aspx");
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }

        }
    }
}