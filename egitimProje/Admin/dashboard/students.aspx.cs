using System;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Admin_dashboard_students : System.Web.UI.Page
{
    MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;");
    protected void Page_Load(object sender, EventArgs e)
    {
        ogrenciDoldur();
    }

    private void ogrenciDoldur()
    {
        using (MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;"))
        {
            baglanti.Open();
            MySqlCommand komut = new MySqlCommand("SELECT * FROM egitim", baglanti);
            rptOgrenci.DataSource = komut.ExecuteReader();
            rptOgrenci.DataBind();
            baglanti.Close();
        }
    }

    protected void rptOgrenci_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        baglanti.Open();

        MySqlCommand verisil = new MySqlCommand("delete from egitim where userId = '" + e.CommandArgument + "'", baglanti);
        verisil.ExecuteNonQuery();

        MySqlCommand verisil2 = new MySqlCommand("delete from cevapstats where ogrenciID = '" + e.CommandArgument + "'", baglanti);
        verisil2.ExecuteNonQuery();
        baglanti.Close();

        Response.Redirect(Request.RawUrl);
    }
}