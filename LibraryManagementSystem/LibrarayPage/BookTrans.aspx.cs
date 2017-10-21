using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem.LibrarayPage
{
    public partial class BookTrans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            showTrans();
        }
        LibrarayManagementSystemEntities1 lib = new LibrarayManagementSystemEntities1();
        public void showTrans()
        {
            GridViewBookTrans.DataSource = lib.bookTransaction();
            GridViewBookTrans.DataBind();

        }
    }
}