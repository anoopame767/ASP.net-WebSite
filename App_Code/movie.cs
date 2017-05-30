using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace movieData
{
    public class Movie
    {
        public string movieId { get; set; }
        public string year { get; set; }
        public string genre { get; set; }
        public string name { get; set; }
        public double price { get; set; }
        public string imagepath { get; set; }
    }

    

    public class MovieManager
    {
        public string query;

        public Movie displaymovie(string movieId)
        {
            Int64 mid = Convert.ToInt64(movieId);
            string query = "select * FROM[videoshop].[dbo].[movie] where movieId = '" + mid + "'";
            Movie A = new Movie();
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["movieworld"].ConnectionString))
            {
                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();

                    SqlCommand command = new SqlCommand(query, connection);

                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        A.movieId = reader["movieId"].ToString();
                        A.price = Convert.ToDouble(reader["price"]);
                        A.imagepath = reader["imagepath"].ToString();
                        A.name = reader["name"].ToString();
                    }

                    command.Dispose();

                }
            }
            return A;
        }


        public Movie displayall(string movietype)
        {
            if (movietype == "all") {
                query = "select * FROM[videoshop].[dbo].[movie]";
            }
            else
            {
                query = "select * FROM[videoshop].[dbo].[movie] where genre = '" + movietype + "'";
            }

            Movie A = new Movie();

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["movieworld"].ConnectionString))
            {
                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();

                    SqlCommand command = new SqlCommand(query, connection);

                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        A.movieId = reader["movieId"].ToString();
                        A.year = reader["year"].ToString();
                        A.genre = reader["genre"].ToString();
                        A.name = reader["name"].ToString();
                        A.price = Convert.ToDouble(reader["price"]);
                        A.imagepath = reader["imagepath"].ToString();
                    }

                    command.Dispose();

                }
            }
            return A;
        }

        public List<Movie> LoadMovie(string movietype)
        {
            List<Movie> listOfMovie = new List<Movie>();

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["movieworld"].ConnectionString))
            {
                connection.Open();

                string sql;
                if (movietype == "all")
                {
                    sql = "select * FROM[videoshop].[dbo].[movie]";
                }
                else
                {
                    sql = "select * FROM[videoshop].[dbo].[movie] where genre = '" + movietype + "'";
                }
            
                using (var command = new SqlCommand(sql, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Movie A = new Movie();


                            A.movieId = reader["movieId"].ToString();
                            A.year = reader["year"].ToString();
                            A.genre = reader["genre"].ToString();
                            A.name = reader["name"].ToString();
                            A.price = Convert.ToDouble(reader["price"]);
                            A.imagepath = reader["imagepath"].ToString();

                            listOfMovie.Add(A);
                        }
                    }
                }
            }

            return listOfMovie;
        }
    }
}