using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using movieData;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LiteralControl lt = new LiteralControl();

        Int64 mvId;
        String movieName;
        String imgPath;
        Double price;


        MovieManager Mvmgr = new MovieManager();
        Movie mv = new Movie();

        string movietype = Request.QueryString["type"].ToString();
        

        List<Movie> columnData = Mvmgr.LoadMovie(movietype);
 
        foreach (Movie mv1 in columnData)
        {
            mvId = Convert.ToInt64(mv1.movieId);
            movieName = mv1.name;
            price = Convert.ToDouble(mv1.price);
            imgPath = mv1.imagepath;


            lt.Text += "<div class='w3-col m3' style='margin:5px 5px 5px'><div class='w3-card-4 w3-dark-grey'><div class='w3-container w3-center'><h5>" + movieName + "</h5><img src = '" + imgPath + "' alt= 'Avatar' style='width:80%'><h6>Price: " + price + "</h6><button id ='buy_cart_" + mvId + "' onclick='redirect(this);' class='w3-button w3-green'>Buy</button><button id ='add_cart_" + mvId + "' onclick='setCart(this);' class='w3-button w3-blue'>Add To Cart</button></div></div></div>";
            MovieList.Controls.Add(lt);
        }

    }
}