using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Data
{
    public class User
    {
        public string fname { get; set; }
        public string lname { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public string dob { get; set; }
    }

    public class UserManager
    {
         public void insertuser(User A)
            {
                string query = "insert into [videoshop].[dbo].[user](fName, lName,email,password,dob) values('" + A.fname + "','" + A.lname + "','" + A.email + "','" + A.password + "','" + A.dob + "')";

                using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["movieworld"].ConnectionString))
                {
                    if (connection.State == ConnectionState.Closed)
                    {
                        connection.Open();

                        SqlCommand command = new SqlCommand(query, connection);

                        command.ExecuteNonQuery();

                        command.Dispose();

                    }
                }
            }


        public User displayuser(string useremail)
        {

            string query = "select * FROM[videoshop].[dbo].[user] where email = '" + useremail + "'";
            User A = new User();
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["movieworld"].ConnectionString))
            {
                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();

                    SqlCommand command = new SqlCommand(query, connection);

                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        A.fname = reader["fName"].ToString();
                        A.lname = reader["lName"].ToString();
                        A.email = reader["email"].ToString();
                        A.password = reader["password"].ToString();
                        A.dob = reader["dob"].ToString();
                    }

                    command.Dispose();

                }
            }
            return A;
        }

        public void userupdate(User std)
        {

            string query = "update [videoshop].[dbo].[user] set fName = '" + std.fname + "', lName ='" + std.lname + "', password ='" + std.password + "', dob = '" + std.dob + "'where email = '" + std.email + "'";
            
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["movieworld"].ConnectionString))
            {
                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                    SqlCommand commandA = new SqlCommand(query, connection);
                    commandA.ExecuteNonQuery();
                    commandA.Dispose();
                }
            }
        }

    }


    
}