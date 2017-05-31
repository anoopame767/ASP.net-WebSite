using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using movieData;

public partial class Default2 : System.Web.UI.Page
{
    Movie mv = new Movie();
    MovieManager Mvmgr = new MovieManager();
    double totalprice;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Context.Request.Cookies.AllKeys.Contains("movieId")) { 
        string movieList = Request.Cookies["movieId"].Value;
        
        List<string> list = movieList.Split(',').ToList<string>();
       
        var uniqueList = list.GroupBy(i => i);
        foreach (var s in uniqueList)
        {
            mv = Mvmgr.displaymovie(s.Key.Remove(0,9));

            totalprice += s.Count() * mv.price;
            Label1.Text = "Total Order Price: Rs." + totalprice;

            Cart.Controls.Add(new LiteralControl("<li class='w3-padding-16'><span runat='server' ID='removeCookie' OnClick='removeCookie_Click' class='w3-button w3-white w3-xlarge w3-right'>×</span><img src='" + mv.imagepath+"' class='w3-left w3-circle w3-margin-right' style='width:100px;height:100px;'><span class='w3-large'>" + mv.name + "</span><br><span>Quantity:" + s.Count() + "</br> Price: "+ mv.price + "  </br>Total Item Price: " + s.Count()*mv.price+"</span></li>"));

            }
        }
        else
        {
            Label1.Text = "Total Price: Rs 0.00";
            Label2.Text = "You have not made any purchase yet!";
        }


    }
    protected void removeCookie_Click(object sender, EventArgs e)
    {
        Label1.Text = "working";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}