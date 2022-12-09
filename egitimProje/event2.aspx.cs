using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class event2 : System.Web.UI.Page
{
    MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u0983472_db682;Uid=u0983472_user682;Pwd=r8Z@4hKbq7OA=1@:;");
   
    [WebMethod]
    public static void cevap(string verilenCevap, string dogruCevap, string questionNum,string userId)
    {
        string _connStr = "Server=localhost;Database=u0983472_db682;Uid=u0983472_user682;Pwd=r8Z@4hKbq7OA=1@:;";
        string _query = "INSERT INTO answers2 (userId,eventId,questionNum,givenAnswer,trueAnswer) values (@userId,@eventId,@questionNum,@givenAnswer,@trueAnswer)";
        using (MySqlConnection conn = new MySqlConnection(_connStr))
        {
            using (MySqlCommand comm = new MySqlCommand())
            {
                comm.Connection = conn;
                comm.CommandType = CommandType.Text;
                comm.CommandText = _query;
                comm.Parameters.AddWithValue("@userId", userId);
                comm.Parameters.AddWithValue("@eventId", "2");
                comm.Parameters.AddWithValue("@questionNum", questionNum);
                comm.Parameters.AddWithValue("@givenAnswer", verilenCevap);
                comm.Parameters.AddWithValue("@trueAnswer", dogruCevap);
                try
                {
                    conn.Open();
                    comm.ExecuteNonQuery();
                }
                catch (MySqlException ex)
                {
                }
            }
        }
    }
}