﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Admin_dashboard_etkinlik2Yanitlar : System.Web.UI.Page
{
    MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;");
    protected void Page_Load(object sender, EventArgs e)
    {
        tabelDoldur();
    }

    private void tabelDoldur()
    {
        using (MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;"))
        {
            baglanti.Open();
            MySqlCommand komut = new MySqlCommand("SELECT * FROM answers2", baglanti);
            rptAnswers.DataSource = komut.ExecuteReader();
            rptAnswers.DataBind();
            baglanti.Close();
        }
    }
}