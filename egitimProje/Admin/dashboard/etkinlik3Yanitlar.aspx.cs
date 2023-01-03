using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Admin_dashboard_etkinlik3Yanitlar : System.Web.UI.Page
{
    MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;");
    protected void Page_Load(object sender, EventArgs e)
    {
        kelimeGetir();
    }

    private void kelimeGetir()
    {
        using (MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;"))
        {
            baglanti.Open();
            MySqlCommand komut = new MySqlCommand("SELECT answer FROM answers3", baglanti);
            komut.Connection = baglanti;
            string kelimeSayi = komut.ExecuteScalar().ToString();
            if (kelimeSayi == "1")
                lblKelime.Text = "Ev Kirası";
            if (kelimeSayi == "2")
                lblKelime.Text = "Isınmak";
            if (kelimeSayi == "3")
                lblKelime.Text = "Manzara";
            if (kelimeSayi == "4")
                lblKelime.Text = "Komşu";
            if (kelimeSayi == "5")
                lblKelime.Text = "Temizlik Yapmak";
            if (kelimeSayi == "6")
                lblKelime.Text = "Doğalgaz";
            if (kelimeSayi == "7")
                lblKelime.Text = "Güvenlik";
            if (kelimeSayi == "8")
                lblKelime.Text = "Sözleşme";
            if (kelimeSayi == "9")
                lblKelime.Text = "Çöp";
            if (kelimeSayi == "10")
                lblKelime.Text = "Yuva";
            baglanti.Close();
        }
    }

    protected void btnİleri_Click(object sender, EventArgs e)
    {
        using (MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;"))
        {
            baglanti.Open();
            MySqlCommand komut = new MySqlCommand("SELECT answer FROM answers3", baglanti);
            komut.Connection = baglanti;
            int kelimeSayi = Convert.ToInt32(komut.ExecuteScalar());
            baglanti.Close();

            if (kelimeSayi != 10)
                kelimeSayi = kelimeSayi + 1;
            baglanti.Open();
            string kayit = "update answers3 set answer='" + kelimeSayi + "'";
            MySqlCommand komut2 = new MySqlCommand(kayit, baglanti);
            komut2.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect(Request.RawUrl);
        }
    }

    protected void btnGeri_Click(object sender, EventArgs e)
    {
        using (MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;"))
        {
            baglanti.Open();
            MySqlCommand komut = new MySqlCommand("SELECT answer FROM answers3", baglanti);
            komut.Connection = baglanti;
            int kelimeSayi = Convert.ToInt32(komut.ExecuteScalar());
            baglanti.Close();

            if (kelimeSayi != 1)
                kelimeSayi = kelimeSayi - 1;
            baglanti.Open();
            string kayit = "update answers3 set answer='" + kelimeSayi + "'";
            MySqlCommand komut2 = new MySqlCommand(kayit, baglanti);
            komut2.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect(Request.RawUrl);
        }
    }
}