using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data;

public partial class Default2 : System.Web.UI.Page
{
    string Email;
    string newfName;
    string newlName;
    string newPassword;
    string newdob;
    UserManager stdmgr = new UserManager();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string Email = Session["useremail"].ToString();

            User std1 = new User();
            std1 = stdmgr.displayuser(Email);
            welcome.Text = "Welcome " + std1.fname;
            emaillabel.Text = "Updating profile for user with email id:" + Session["useremail"].ToString();
            fnametextbox.Text = std1.fname;
            lnametextbox.Text = std1.lname;
            passwordtextbox.Text = std1.password;
            agetextbox.Text = std1.dob;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
           
            User std2 = new User();

            std2.fname = fnametextbox.Text;
            std2.lname = lnametextbox.Text;
            std2.email = Request.QueryString["email"].ToString();
            std2.password = passwordtextbox.Text;
            std2.dob = agetextbox.Text;
            stdmgr.userupdate(std2);

            displaymessage.Text = "Profile Sucessfully updated with Details for" + std2.fname;
            Response.Redirect("~/Default.aspx");

        }
    }
}