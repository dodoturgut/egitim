using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class _Default : System.Web.UI.Page
{
    static MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;");
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    [WebMethod]
    public static string etkinlik1DurumVoid()
    {
        baglanti.Open();
        MySqlCommand komut = new MySqlCommand("SELECT etkinlik1Durum FROM settings", baglanti);
        komut.Connection = baglanti;
        string boola = komut.ExecuteScalar().ToString();
        baglanti.Close();
        return boola;
    }

    [WebMethod]
    public static string etkinlik2DurumVoid()
    {
        baglanti.Open();
        MySqlCommand komut = new MySqlCommand("SELECT etkinlik2Durum FROM settings", baglanti);
        komut.Connection = baglanti;
        string boola = komut.ExecuteScalar().ToString();
        baglanti.Close();
        return boola;
    }

    [WebMethod]
    public static string etkinlik3DurumVoid()
    {
        baglanti.Open();
        MySqlCommand komut = new MySqlCommand("SELECT etkinlik3Durum FROM settings", baglanti);
        komut.Connection = baglanti;
        string boola = komut.ExecuteScalar().ToString();
        baglanti.Close();
        return boola;
    }

    [WebMethod]
    public static string etkinlik4DurumVoid()
    {
        baglanti.Open();
        MySqlCommand komut = new MySqlCommand("SELECT etkinlik4Durum FROM settings", baglanti);
        komut.Connection = baglanti;
        string boola = komut.ExecuteScalar().ToString();
        baglanti.Close();
        return boola;
    }

    [WebMethod]
    public static string etkinlik5DurumVoid()
    {
        baglanti.Open();
        MySqlCommand komut = new MySqlCommand("SELECT etkinlik5Durum FROM settings", baglanti);
        komut.Connection = baglanti;
        string boola = komut.ExecuteScalar().ToString();
        baglanti.Close();
        return boola;
    }

    [WebMethod]
    public static string etkinlik6DurumVoid()
    {
        baglanti.Open();
        MySqlCommand komut = new MySqlCommand("SELECT etkinlik6Durum FROM settings", baglanti);
        komut.Connection = baglanti;
        string boola = komut.ExecuteScalar().ToString();
        baglanti.Close();
        return boola;
    }

    [WebMethod]
    public static string etkinlik7DurumVoid()
    {
        baglanti.Open();
        MySqlCommand komut = new MySqlCommand("SELECT etkinlik7Durum FROM settings", baglanti);
        komut.Connection = baglanti;
        string boola = komut.ExecuteScalar().ToString();
        baglanti.Close();
        return boola;
    }

    [WebMethod]
    public static string etkinlik8DurumVoid()
    {
        baglanti.Open();
        MySqlCommand komut = new MySqlCommand("SELECT etkinlik8Durum FROM settings", baglanti);
        komut.Connection = baglanti;
        string boola = komut.ExecuteScalar().ToString();
        baglanti.Close();
        return boola;
    }

    [WebMethod]
    public static string etkinlik9DurumVoid()
    {
        baglanti.Open();
        MySqlCommand komut = new MySqlCommand("SELECT etkinlik9Durum FROM settings", baglanti);
        komut.Connection = baglanti;
        string boola = komut.ExecuteScalar().ToString();
        baglanti.Close();
        return boola;
    }

    [WebMethod]
    public static string etkinlik10DurumVoid()
    {
        baglanti.Open();
        MySqlCommand komut = new MySqlCommand("SELECT etkinlik10Durum FROM settings", baglanti);
        komut.Connection = baglanti;
        string boola = komut.ExecuteScalar().ToString();
        baglanti.Close();
        return boola;
    }

    [WebMethod]
    public static string etkinlik11DurumVoid()
    {
        baglanti.Open();
        MySqlCommand komut = new MySqlCommand("SELECT etkinlik11Durum FROM settings", baglanti);
        komut.Connection = baglanti;
        string boola = komut.ExecuteScalar().ToString();
        baglanti.Close();
        return boola;
    }

    [WebMethod]
    public static string etkinlik12DurumVoid()
    {
        baglanti.Open();
        MySqlCommand komut = new MySqlCommand("SELECT etkinlik12Durum FROM settings", baglanti);
        komut.Connection = baglanti;
        string boola = komut.ExecuteScalar().ToString();
        baglanti.Close();
        return boola;
    }
}