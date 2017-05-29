using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data; 

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string fName = TextBox3.Text;
        string lName = TextBox31.Text;
        string Email = TextBox4.Text;
        string Password = TextBox5.Text;
        string dob = TextBox7.Text;

        User std = new User();

        std.fname = fName;
        std.lname = lName;
        std.email = Email;
        std.password = Password;
        std.dob = dob;

        UserManager umgr = new UserManager();
        umgr.insertuser(std);

        Response.Redirect("login.aspx");
        
    }

   
}