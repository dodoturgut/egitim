using System;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Admin_dashboard_studentAdd : System.Web.UI.Page
{
    MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;");
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        Random rnd = new Random();
        int userID = rnd.Next(99999, 999999);

        var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;!@<>:";
        var stringChars = new char[6];
        var random = new Random();

        for (int i = 0; i < stringChars.Length; i++)
        {
            stringChars[i] = chars[random.Next(chars.Length)];
        }

        var finalString = new String(stringChars);

        baglanti.Open();
        string kayit = "insert into egitim (userId,NameSurname,phone,mail,password) values (@userId,@NameSurname,@phone,@mail,@password)";
        MySqlCommand ekle = new MySqlCommand(kayit, baglanti);
        ekle.Parameters.AddWithValue("@userId", userID);
        ekle.Parameters.AddWithValue("@NameSurname", name.Text);
        ekle.Parameters.AddWithValue("@phone", phone.Text);
        ekle.Parameters.AddWithValue("@mail", mail.Text);
        ekle.Parameters.AddWithValue("@password", finalString);
        ekle.ExecuteNonQuery();

        string kayit2 = "insert into cevapstats (ogrenciID,etkinlik1,etkinlik2,etkinlik3,etkinlik4,etkinlik5,etkinlik6,etkinlik7,etkinlik8,etkinlik9,etkinlik10,etkinlik11,etkinlik12) values (@ogrenciID,@etkinlik1, @etkinlik2,@etkinlik3,@etkinlik4,@etkinlik5,@etkinlik6,@etkinlik7,@etkinlik8,@etkinlik9,@etkinlik10,@etkinlik11,@etkinlik12)";
        MySqlCommand ekle2 = new MySqlCommand(kayit2, baglanti);
        ekle2.Parameters.AddWithValue("@ogrenciID", userID);
        ekle2.Parameters.AddWithValue("@etkinlik1", "false");
        ekle2.Parameters.AddWithValue("@etkinlik2", "false");
        ekle2.Parameters.AddWithValue("@etkinlik3", "false");
        ekle2.Parameters.AddWithValue("@etkinlik4", "false");
        ekle2.Parameters.AddWithValue("@etkinlik5", "false");
        ekle2.Parameters.AddWithValue("@etkinlik6", "false");
        ekle2.Parameters.AddWithValue("@etkinlik7", "false");
        ekle2.Parameters.AddWithValue("@etkinlik8", "false");
        ekle2.Parameters.AddWithValue("@etkinlik9", "false");
        ekle2.Parameters.AddWithValue("@etkinlik10", "false");
        ekle2.Parameters.AddWithValue("@etkinlik11", "false");
        ekle2.Parameters.AddWithValue("@etkinlik12", "false");
        ekle2.ExecuteNonQuery();
        baglanti.Close();

        mailGonder(mail.Text, finalString);
        Response.Redirect(Request.RawUrl);
    }

    private void mailGonder(string email,string finalString)
    {
        MailMessage eposta = new MailMessage();
        SmtpClient smtp = new SmtpClient();
        eposta.From = new MailAddress("info@kelimeyolu.com", "Kelime Yolu");
        eposta.IsBodyHtml = true;
        eposta.To.Add(email);
        eposta.Subject = "Kelime Yolu Hesap Kaydınız Gerçekelştirildi.";
        eposta.Body = "Tebrikler! Kelime Yolu hesap kaydınız gerçekleştirildi. <br> Giriş Bilgileriniz : <br> <ul><li>Kullanıcı Adı : " + phone.Text + "</li><li>Şifre: " + finalString + "</li></ul>";
        smtp.Credentials = new System.Net.NetworkCredential("info@kelimeyolu.com", "k6vi76:xDM_OK_4@");
        smtp.Port = 587;
        smtp.EnableSsl = false;
        smtp.Host = "mail.kurumsaleposta.com";
        smtp.Send(eposta);
    }
}