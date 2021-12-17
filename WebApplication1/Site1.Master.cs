using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    Response.Redirect("userlogin2.aspx", true);
                }
            }
            catch(Exception ex)
            {

            }
            try
            {
                if (Session["role"].Equals("user"))
                {
                    LinkButton3.Text = "Hello " + Session["fullname"].ToString();
                }
                if (Session["role"].Equals("admin"))
                {
                    LinkButton3.Text = "Hello Admin";
                }

            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect("userlogin2.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("addresslist.aspx");
        }
    }
}

