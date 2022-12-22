using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public object ResponRedirect { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] != null)
                {
                    if (Session["role"].ToString().Equals("User"))
                    {
                        LinkButton4.Text = "Hello " + Session["username"].ToString(); //login
                        //LinkButton1.Visible = false;
                    }
                }
                else
                {

                }
            }
            catch
            {

            }
        }
        
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton6_Click1(object sender, EventArgs e)
        {
            Response.Redirect("diet.aspx");
        }

        protected void LinkButton4_Click1(object sender, EventArgs e)
        {

        }
    }
}
