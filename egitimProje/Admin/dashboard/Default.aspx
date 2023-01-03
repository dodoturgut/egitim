<%@ Page Title="" Language="C#" MasterPageFile="AdminMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_dashboard_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .col-lg-12 {
            border-bottom: 1px ridge;
        }
    </style>
    <main class="main-content">
        <div class="content-inner container-fluid pb-0" id="page_layout">
            <div class="row">
                <div class="col-lg-8 col-xl-8">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card card-block card-stretch card-height">
                                <div class="flex-wrap card-header d-flex justify-content-between align-items-center">
                                    <div class="header-title">
                                        <h4>Etkinlikler</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="col-lg-12" style="display: inline-flex; justify-content: space-between;">
                                        <p>Etkinlik 1</p>
                                        <p>(<asp:Label runat="server" ID="etkinlik1Durum"></asp:Label>)</p>
                                        <div>
                                            <asp:Button runat="server" class="button btn button-icon btn-success" Text="Aç" OnClick="etkinlik1Ac_Click" ID="etkinlik2Ac" />
                                            <asp:Button runat="server" class="button btn button-icon btn-danger" Text="Kapat" OnClick="etkinlik1Kapat_Click" ID="etkinlik2Kapat" />
                                        </div>
                                    </div>
                                    <div class="col-lg-12" style="display: inline-flex; justify-content: space-between;">
                                        <p>Etkinlik 2</p>
                                        <p>(<asp:Label runat="server" ID="etkinlik2Durum"></asp:Label>)</p>
                                        <div>
                                            <asp:Button runat="server" class="button btn button-icon btn-success" Text="Aç" OnClick="etkinlik2Ac_Click" ID="Button1" />
                                            <asp:Button runat="server" class="button btn button-icon btn-danger" Text="Kapat" OnClick="etkinlik2Kapat_Click" ID="Button2" />
                                        </div>
                                    </div>
                                    <div class="col-lg-12" style="display: inline-flex; justify-content: space-between;">
                                        <p>Etkinlik 3</p>
                                        <p>(<asp:Label runat="server" ID="etkinlik3Durum"></asp:Label>)</p>
                                        <div>
                                            <asp:Button runat="server" class="button btn button-icon btn-success" Text="Aç" OnClick="etkinlik3Ac_Click" ID="Button3" />
                                            <asp:Button runat="server" class="button btn button-icon btn-danger" Text="Kapat" OnClick="etkinlik3Kapat_Click" ID="Button4" />
                                        </div>
                                    </div>
                                    <div class="col-lg-12" style="display: inline-flex; justify-content: space-between;">
                                        <p>Etkinlik 4</p>
                                        <p>(<asp:Label runat="server" ID="etkinlik4Durum"></asp:Label>)</p>
                                        <div>
                                            <asp:Button runat="server" class="button btn button-icon btn-success" Text="Aç" OnClick="etkinlik4Ac_Click" ID="Button5" />
                                            <asp:Button runat="server" class="button btn button-icon btn-danger" Text="Kapat" OnClick="etkinlik4Kapat_Click" ID="Button6" />
                                        </div>
                                    </div>
                                    <div class="col-lg-12" style="display: inline-flex; justify-content: space-between;">
                                        <p>Etkinlik 5</p>
                                        <p>(<asp:Label runat="server" ID="etkinlik5Durum"></asp:Label>)</p>
                                        <div>
                                            <asp:Button runat="server" class="button btn button-icon btn-success" Text="Aç" OnClick="etkinlik5Ac_Click" ID="Button7" />
                                            <asp:Button runat="server" class="button btn button-icon btn-danger" Text="Kapat" OnClick="etkinlik5Kapat_Click" ID="Button8" />
                                        </div>
                                    </div>
                                    <div class="col-lg-12" style="display: inline-flex; justify-content: space-between;">
                                        <p>Etkinlik 6</p>
                                        <p>(<asp:Label runat="server" ID="etkinlik6Durum"></asp:Label>)</p>
                                        <div>
                                            <asp:Button runat="server" class="button btn button-icon btn-success" Text="Aç" OnClick="etkinlik6Ac_Click" ID="Button9" />
                                            <asp:Button runat="server" class="button btn button-icon btn-danger" Text="Kapat" OnClick="etkinlik6Kapat_Click" ID="Button10" />
                                        </div>
                                    </div>
                                    <div class="col-lg-12" style="display: inline-flex; justify-content: space-between;">
                                        <p>Etkinlik 7</p>
                                        <p>(<asp:Label runat="server" ID="etkinlik7Durum"></asp:Label>)</p>
                                        <div>
                                            <asp:Button runat="server" class="button btn button-icon btn-success" Text="Aç" OnClick="etkinlik7Ac_Click" ID="Button11" />
                                            <asp:Button runat="server" class="button btn button-icon btn-danger" Text="Kapat" OnClick="etkinlik7Kapat_Click" ID="Button12" />
                                        </div>
                                    </div>
                                    <div class="col-lg-12" style="display: inline-flex; justify-content: space-between;">
                                        <p>Etkinlik 8</p>
                                        <p>(<asp:Label runat="server" ID="etkinlik8Durum"></asp:Label>)</p>
                                        <div>
                                            <asp:Button runat="server" class="button btn button-icon btn-success" Text="Aç" OnClick="etkinlik8Ac_Click" ID="Button13" />
                                            <asp:Button runat="server" class="button btn button-icon btn-danger" Text="Kapat" OnClick="etkinlik8Kapat_Click" ID="Button14" />
                                        </div>
                                    </div>
                                    <div class="col-lg-12" style="display: inline-flex; justify-content: space-between;">
                                        <p>Etkinlik 9</p>
                                        <p>(<asp:Label runat="server" ID="etkinlik9Durum"></asp:Label>)</p>
                                        <div>
                                            <asp:Button runat="server" class="button btn button-icon btn-success" Text="Aç" OnClick="etkinlik9Ac_Click" ID="Button15" />
                                            <asp:Button runat="server" class="button btn button-icon btn-danger" Text="Kapat" OnClick="etkinlik9Kapat_Click" ID="Button16" />
                                        </div>
                                    </div>
                                    <div class="col-lg-12" style="display: inline-flex; justify-content: space-between;">
                                        <p>Etkinlik 10</p>
                                        <p>(<asp:Label runat="server" ID="etkinlik10Durum"></asp:Label>)</p>
                                        <div>
                                            <asp:Button runat="server" class="button btn button-icon btn-success" Text="Aç" OnClick="etkinlik10Ac_Click" ID="Button17" />
                                            <asp:Button runat="server" class="button btn button-icon btn-danger" Text="Kapat" OnClick="etkinlik10Kapat_Click" ID="Button18" />
                                        </div>
                                    </div>
                                    <div class="col-lg-12" style="display: inline-flex; justify-content: space-between;">
                                        <p>Etkinlik 11</p>
                                        <p>(<asp:Label runat="server" ID="etkinlik11Durum"></asp:Label>)</p>
                                        <div>
                                            <asp:Button runat="server" class="button btn button-icon btn-success" Text="Aç" OnClick="etkinlik11Ac_Click" ID="Button19" />
                                            <asp:Button runat="server" class="button btn button-icon btn-danger" Text="Kapat" OnClick="etkinlik11Kapat_Click" ID="Button20" />
                                        </div>
                                    </div>
                                    <div class="col-lg-12" style="display: inline-flex; justify-content: space-between;">
                                        <p>Etkinlik 12</p>
                                        <p>(<asp:Label runat="server" ID="etkinlik12Durum"></asp:Label>)</p>
                                        <div>
                                            <asp:Button runat="server" class="button btn button-icon btn-success" Text="Aç" OnClick="etkinlik12Ac_Click" ID="Button21" />
                                            <asp:Button runat="server" class="button btn button-icon btn-danger" Text="Kapat" OnClick="etkinlik12Kapat_Click" ID="Button22" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-header d-flex justify-content-between">
                            <div class="header-title">
                                <h4 class="card-title">Öğrenciler</h4>
                            </div>
                        </div>
                        <div class="card-body">
                            <ul class="media-story m-0 p-0">
                                <asp:Repeater runat="server" ID="rptOgrenciler">
                                    <ItemTemplate>
                                        <li class="d-flex mb-4 align-items-center active">
                                            <img src="../assets/images/avatars/04.png" alt="story-img" class="avatar-50 rounded-circle p-1 bg-soft-danger img-fluid" loading="lazy">
                                            <div class="stories-data ms-3">
                                                <h5><%#Eval("NameSurname")%></h5>
                                                <p class="mb-0"><%#Eval("phone")%></p>
                                                <p class="mb-0"><%#Eval("userId")%></p>
                                            </div>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                            <a href="students.aspx" class="btn btn-primary d-block mt-4">Tamamını Gör</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>

