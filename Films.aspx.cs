using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LiteralControl lt = new LiteralControl();

        Int64 movieId;
        String movieName;
        String imgPath;
        Double price;
        if (Request.QueryString["type"].ToString() == null)
        {

        }
        else if(Request.QueryString["type"].ToString() == "all")
        {
            string query = "select * from [dbo].[movie]";

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["movieworld"].ConnectionString))
            {
                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                    SqlCommand commandA = new SqlCommand(query, connection);
                    SqlDataReader rd = commandA.ExecuteReader();
                    while (rd.Read())
                    {
                        movieId  = (Int64)rd["movieId"];
                        movieName = (String)rd["name"];
                        price = (Double)rd["price"];
                        imgPath = (String)rd["imagepath"];

                        lt.Text += "<div class='w3-col m2' style='margin:5px 5px 5px'><div class='w3-card-4 w3-dark-grey'><div class='w3-container w3-center'><h5>"+movieName+"</h5><img src = '"+imgPath+"' alt= 'Avatar' style='width:80%'><h6>Price: "+price+"</h6><button class='w3-button w3-green'>Buy</button><button id ='"+movieId+"'class='w3-button w3-blue'>Add To Cart</button></div></div></div>";
                        MovieList.Controls.Add(lt);
                    }
                    commandA.Dispose();
                }
            }

            
            
            
        }
    }
}