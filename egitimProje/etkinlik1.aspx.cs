using MySql.Data;
using MySql.Data.MySqlClient;
using System;
using System.Activities.Statements;
using System.Data;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Web.Services;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class etkinlik1 : System.Web.UI.Page
{
    MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;");
    MySqlConnection baglanti2 = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;");
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void sbmt_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        MySqlCommand komut = new MySqlCommand("SELECT etkinlik1 FROM cevapstats WHERE ogrenciID='" + Session["userId"].ToString() + "'", baglanti);
        komut.Connection = baglanti;
        string boola = komut.ExecuteScalar().ToString();
        if (boola == "false")
        {
            string _connStr = "Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;";
            string _query = "INSERT INTO answers1 (userId,userName,answer) values (@userId,@userName,@answer)";
            using (MySqlConnection conn = new MySqlConnection(_connStr))
            {
                using (MySqlCommand comm = new MySqlCommand())
                {
                    comm.Connection = conn;
                    comm.CommandType = CommandType.Text;
                    comm.CommandText = _query;
                    comm.Parameters.AddWithValue("@userId", Session["userId"].ToString());
                    comm.Parameters.AddWithValue("@userName", Session["ogrenci"].ToString());
                    comm.Parameters.AddWithValue("@answer", lblText.Value.ToString());
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
            kaydet();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
        baglanti.Close();
    }

    public void kaydet()
    {
        baglanti2.Open();
        string kayit = "update cevapstats set etkinlik1='true' WHERE ogrenciID='" + Session["userId"].ToString() + "'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti2);
        komut.ExecuteNonQuery();
        baglanti2.Close();
        Response.Redirect("Default.aspx");
    }
}