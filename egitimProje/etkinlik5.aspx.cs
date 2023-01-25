using MySql.Data;
using MySql.Data.MySqlClient;
using System;
using System.Activities.Statements;
using System.Data;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class etkinlik5 : System.Web.UI.Page
{
    MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;");
    MySqlConnection baglanti2 = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void sbmt_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        MySqlCommand komut = new MySqlCommand("SELECT etkinlik5 FROM cevapstats WHERE ogrenciID='" + Session["userId"].ToString() + "'", baglanti);
        komut.Connection = baglanti;
        string boola = komut.ExecuteScalar().ToString();
        if (boola == "false")
        {
            string _connStr = "Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;";
            string _query = "INSERT INTO answers5 (userId,userName,kutu1,kutu2,kutu3,kutu4,kutu5,kutu6,kutu7,kutu8,kutu9,kutu10) values (@userId,@userName,@kutu1,@kutu2,@kutu3,@kutu4,@kutu5,@kutu6,@kutu7,@kutu8,@kutu9,@kutu10)";
            using (MySqlConnection conn = new MySqlConnection(_connStr))
            {
                using (MySqlCommand comm = new MySqlCommand())
                {
                    comm.Connection = conn;
                    comm.CommandType = CommandType.Text;
                    comm.CommandText = _query;
                    comm.Parameters.AddWithValue("@userId", Session["userId"].ToString());
                    comm.Parameters.AddWithValue("@userName", Session["ogrenci"].ToString());
                    comm.Parameters.AddWithValue("@kutu1", DropDownList0.SelectedItem.Value.ToString());
                    comm.Parameters.AddWithValue("@kutu2", DropDownList1.SelectedItem.Value.ToString());
                    comm.Parameters.AddWithValue("@kutu3", DropDownList2.SelectedItem.Value.ToString());
                    comm.Parameters.AddWithValue("@kutu4", DropDownList3.SelectedItem.Value.ToString());
                    comm.Parameters.AddWithValue("@kutu5", DropDownList4.SelectedItem.Value.ToString());
                    comm.Parameters.AddWithValue("@kutu6", DropDownList5.SelectedItem.Value.ToString());
                    comm.Parameters.AddWithValue("@kutu7", DropDownList6.SelectedItem.Value.ToString());
                    comm.Parameters.AddWithValue("@kutu8", DropDownList7.SelectedItem.Value.ToString());
                    comm.Parameters.AddWithValue("@kutu9", DropDownList8.SelectedItem.Value.ToString());
                    comm.Parameters.AddWithValue("@kutu10", DropDownList9.SelectedItem.Value.ToString());
                    comm.Parameters.AddWithValue("@kutu11", DropDownList10.SelectedItem.Value.ToString());
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
        string kayit = "update cevapstats set etkinlik5='true' WHERE ogrenciID='" + Session["userId"].ToString() + "'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti2);
        komut.ExecuteNonQuery();
        baglanti2.Close();
        Response.Redirect("Default.aspx");
    }
}