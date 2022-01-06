using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.BLL.Login_BLL;

namespace WebApplication1.UI
{
    public partial class LogIn : System.Web.UI.Page
    {
        Login_BLL obj = new Login_BLL();
        DataTable dt = new DataTable();
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

      

        protected void txtLogin_Click(object sender, EventArgs e)
        {
            string UserName = txtName.Text;
            string Password = txtPassword.Text;
            dt = obj.LogIN(UserName,Password);
            if (dt.Rows.Count > 0)
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "StartupScript", "alert('Logged In Successfully ');", true);
                Response.Redirect("/UI/Registration_UI/Registration.aspx");
            }

            else
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "StartupScript", "alert('Incorrect Username or Password ');",true) ;
            }
        }
    }
}