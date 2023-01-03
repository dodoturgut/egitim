<%@ Page Title="" Language="C#" MasterPageFile="AdminMaster.master" AutoEventWireup="true" CodeFile="studentAdd.aspx.cs" Inherits="Admin_dashboard_studentAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <main class="main-content">
        <div class="content-inner container-fluid pb-0" id="page_layout">
            <div>
                <div class="row">
                    <div class="col-xl-12 col-lg-12">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between">
                                <div class="header-title">
                                    <h4 class="card-title">Yeni Öğrenci Kaydı</h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="new-user-info">
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label class="form-label" for="fname">Ad Soyad:</label>
                                            <asp:TextBox runat="server" type="text" class="form-control" ID="name" placeholder="Ad Soyad"></asp:TextBox>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="form-label" for="add1">Eposta:</label>
                                            <asp:TextBox runat="server" type="mail" class="form-control" ID="mail" placeholder="Eposta"></asp:TextBox>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="form-label" for="add2">Telefon:</label>
                                            <asp:TextBox runat="server" type="phone" class="form-control" ID="phone" placeholder="Telefon"></asp:TextBox>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="form-label" for="cname">Şifre:</label>
                                            <input type="password" class="form-control" id="psw" placeholder="***" disabled="disabled">
                                        </div>
                                    </div>
                                    <hr>
                                    <asp:Button runat="server" ID="btnKaydet" type="submit" class="btn btn-primary" Text="Kaydet" OnClick="btnKaydet_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>

