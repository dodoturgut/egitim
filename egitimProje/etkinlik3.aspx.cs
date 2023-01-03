using System;
using System.Web.Services;
using MySql.Data.MySqlClient;
public partial class etkinlik3 : System.Web.UI.Page
{
    MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;");
    protected void Page_Load(object sender, EventArgs e)
    {


    }


    [WebMethod]
    public static string testaaa()
    {
        using (MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;"))
        {
            baglanti.Open();
            MySqlCommand komut = new MySqlCommand("SELECT answer FROM answers3", baglanti);
            komut.Connection = baglanti;
            string kelimeSayi = komut.ExecuteScalar().ToString();
            string sözcük = "";
            if (kelimeSayi == "1")
                sözcük = "Ev Kirası";
            if (kelimeSayi == "2")
                sözcük = "Isınmak";
            if (kelimeSayi == "3")
                sözcük = "Manzara";
            if (kelimeSayi == "4")
                sözcük = "Komşu";
            if (kelimeSayi == "5")
                sözcük = "Temizlik Yapmak";
            if (kelimeSayi == "6")
                sözcük = "Doğalgaz";
            if (kelimeSayi == "7")
                sözcük = "Güvenlik";
            if (kelimeSayi == "8")
                sözcük = "Sözleşme";
            if (kelimeSayi == "9")
                sözcük = "Çöp";
            if (kelimeSayi == "10")
                sözcük = "Yuva";
            baglanti.Close();

            return sözcük;
        }
    }
}