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
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string movieList = Request.Cookies["movieId"].Value;
        
        List<string> list = movieList.Split(',').ToList<string>();
       
        var uniqueList = list.GroupBy(i => i);
        foreach (var s in uniqueList)
        {
            mv = Mvmgr.displaymovie(s.Key.Remove(0,9));
            Cart.Controls.Add(new LiteralControl("<li class='w3-padding-16'><span class='w3-button w3-white w3-xlarge w3-right'>×</span><img src='"+mv.imagepath+"' class='w3-left w3-circle w3-margin-right' style='width:50px;height:50px'><span class='w3-large'>" + mv.name + "</span><br><span>X" + s.Count() + " = "+s.Count()*mv.price+"</span></li>"));

        }
    
    }
}