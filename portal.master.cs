using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data;

public partial class portal : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (string.IsNullOrEmpty(Session["userlogin"] as string))
        {
            Response.Redirect("~/login.aspx");
        }
        else
        {
            if (Request.Cookies["userlogin"] != null)
            {
                string userfname = Request.Cookies["userlogin"].Value.ToString();
                Label1.Text = "Welcome " + userfname;
                
            }

            //string userfname = Request.QueryString["userfname"];
            
            
        }
        
    }
}

   
