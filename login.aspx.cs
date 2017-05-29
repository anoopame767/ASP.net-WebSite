using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data;

public partial class login : System.Web.UI.Page
{
    UserManager uMgr = new UserManager();
    User std = new User();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["userlogin"] = "";
            if (Session["userlogin"].ToString() != "")
            {
                Response.Redirect("~/Default.aspx");
            }
        }


    }
    
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        String user = TextBox1.Text;

        std = uMgr.displayuser(user);

        if (std.password == TextBox2.Text)
        {
            Session["userlogin"] = std.fname;
            Session["useremail"] = std.email;

            HttpCookie Cookie = new HttpCookie("userlogin");
            Cookie.Value = std.fname;
            Cookie.Expires = DateTime.Now.AddHours(1);
            Response.Cookies.Add(Cookie);

            HttpCookie Cookieemail = new HttpCookie("useremail");
            Cookieemail.Value = std.email;
            Cookieemail.Expires = DateTime.Now.AddHours(1);
            Response.Cookies.Add(Cookieemail);


            //Response.Cookies["userlogin"].Value = std.fname;
            //Response.Cookies["userlogin"].Expires = DateTime.Now.AddDays(1);
            //Response.Cookies["Username"].Value = std.fname;
            //Response.Cookies["Username"].Expires = DateTime.Now.AddDays(1);
            Response.Redirect("~/Default.aspx?userfname=" + std.fname);
        }
    }
}