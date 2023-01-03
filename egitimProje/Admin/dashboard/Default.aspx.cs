using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Admin_dashboard_Default : System.Web.UI.Page
{
    MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;");
    protected void Page_Load(object sender, EventArgs e)
    {
        acKapaGetir();
        ogrenciDoldur();
    }

    private void ogrenciDoldur()
    {
        using (MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;"))
        {
            baglanti.Open();
            MySqlCommand komut = new MySqlCommand("SELECT * FROM egitim LIMIT 5", baglanti);
            rptOgrenciler.DataSource = komut.ExecuteReader();
            rptOgrenciler.DataBind();
            baglanti.Close();
        }
    }

    private void acKapaGetir()
    {
        baglanti.Open();
        MySqlCommand komut = new MySqlCommand("SELECT etkinlik1Durum FROM settings", baglanti);
        komut.Connection = baglanti;
        etkinlik1Durum.Text = komut.ExecuteScalar().ToString().Replace("false","Kapalı").Replace("true","Açık");
        baglanti.Close();

        baglanti.Open();
        MySqlCommand komut2 = new MySqlCommand("SELECT etkinlik2Durum FROM settings", baglanti);
        komut2.Connection = baglanti;
        etkinlik2Durum.Text = komut2.ExecuteScalar().ToString().Replace("false","Kapalı").Replace("true","Açık");
        baglanti.Close();

        baglanti.Open();
        MySqlCommand komut3 = new MySqlCommand("SELECT etkinlik3Durum FROM settings", baglanti);
        komut3.Connection = baglanti;
        etkinlik3Durum.Text = komut3.ExecuteScalar().ToString().Replace("false","Kapalı").Replace("true","Açık");
        baglanti.Close();

        baglanti.Open();
        MySqlCommand komut4 = new MySqlCommand("SELECT etkinlik4Durum FROM settings", baglanti);
        komut4.Connection = baglanti;
        etkinlik4Durum.Text = komut4.ExecuteScalar().ToString().Replace("false","Kapalı").Replace("true","Açık");
        baglanti.Close();

        baglanti.Open();
        MySqlCommand komut5 = new MySqlCommand("SELECT etkinlik5Durum FROM settings", baglanti);
        komut5.Connection = baglanti;
        etkinlik5Durum.Text = komut5.ExecuteScalar().ToString().Replace("false","Kapalı").Replace("true","Açık");
        baglanti.Close();

        baglanti.Open();
        MySqlCommand komut6 = new MySqlCommand("SELECT etkinlik6Durum FROM settings", baglanti);
        komut6.Connection = baglanti;
        etkinlik6Durum.Text = komut6.ExecuteScalar().ToString().Replace("false","Kapalı").Replace("true","Açık");
        baglanti.Close();

        baglanti.Open();
        MySqlCommand komut7 = new MySqlCommand("SELECT etkinlik7Durum FROM settings", baglanti);
        komut7.Connection = baglanti;
        etkinlik7Durum.Text = komut7.ExecuteScalar().ToString().Replace("false","Kapalı").Replace("true","Açık");
        baglanti.Close();

        baglanti.Open();
        MySqlCommand komut8 = new MySqlCommand("SELECT etkinlik8Durum FROM settings", baglanti);
        komut8.Connection = baglanti;
        etkinlik8Durum.Text = komut8.ExecuteScalar().ToString().Replace("false","Kapalı").Replace("true","Açık");
        baglanti.Close();

        baglanti.Open();
        MySqlCommand komut9 = new MySqlCommand("SELECT etkinlik9Durum FROM settings", baglanti);
        komut9.Connection = baglanti;
        etkinlik9Durum.Text = komut9.ExecuteScalar().ToString().Replace("false","Kapalı").Replace("true","Açık");
        baglanti.Close();

        baglanti.Open();
        MySqlCommand komut10 = new MySqlCommand("SELECT etkinlik10Durum FROM settings", baglanti);
        komut10.Connection = baglanti;
        etkinlik10Durum.Text = komut10.ExecuteScalar().ToString().Replace("false","Kapalı").Replace("true","Açık");
        baglanti.Close();

        baglanti.Open();
        MySqlCommand komut11 = new MySqlCommand("SELECT etkinlik11Durum FROM settings", baglanti);
        komut11.Connection = baglanti;
        etkinlik11Durum.Text = komut11.ExecuteScalar().ToString().Replace("false","Kapalı").Replace("true","Açık");
        baglanti.Close();

        baglanti.Open();
        MySqlCommand komut12 = new MySqlCommand("SELECT etkinlik12Durum FROM settings", baglanti);
        komut12.Connection = baglanti;
        etkinlik12Durum.Text = komut12.ExecuteScalar().ToString().Replace("false","Kapalı").Replace("true","Açık");
        baglanti.Close();
    }

    protected void etkinlik1Ac_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik1Durum='true'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }
    protected void etkinlik1Kapat_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik1Durum='false'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }

    protected void etkinlik2Ac_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik2Durum='true'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }
    protected void etkinlik2Kapat_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik2Durum='false'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }

    protected void etkinlik3Ac_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik3Durum='true'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }
    protected void etkinlik3Kapat_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik3Durum='false'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }

    protected void etkinlik4Ac_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik4Durum='true'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }
    protected void etkinlik4Kapat_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik4Durum='false'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }

    protected void etkinlik5Ac_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik5Durum='true'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }
    protected void etkinlik5Kapat_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik5Durum='false'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }

    protected void etkinlik6Ac_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik6Durum='true'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }
    protected void etkinlik6Kapat_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik6Durum='false'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }

    protected void etkinlik7Ac_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik7Durum='true'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }
    protected void etkinlik7Kapat_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik7Durum='false'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }

    protected void etkinlik8Ac_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik8Durum='true'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }
    protected void etkinlik8Kapat_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik8Durum='false'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }

    protected void etkinlik9Ac_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik9Durum='true'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }
    protected void etkinlik9Kapat_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik9Durum='false'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }

    protected void etkinlik10Ac_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik10Durum='true'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }
    protected void etkinlik10Kapat_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik10Durum='false'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }

    protected void etkinlik11Ac_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik11Durum='true'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }
    protected void etkinlik11Kapat_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik11Durum='false'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }

    protected void etkinlik12Ac_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik12Durum='true'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }
    protected void etkinlik12Kapat_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        string kayit = "update settings set etkinlik12Durum='false'";
        MySqlCommand komut = new MySqlCommand(kayit, baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect(Request.RawUrl);
    }
}