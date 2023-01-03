<%@ Page Title="" Language="C#" MasterPageFile="AdminMaster.master" AutoEventWireup="true" CodeFile="etkinlik2Yanitlar.aspx.cs" Inherits="Admin_dashboard_etkinlik2Yanitlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <main class="main-content">
        <div class="content-inner container-fluid pb-0" id="page_layout">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header d-flex justify-content-between">
                            <div class="header-title">
                                <h4 class="card-title">Etkinlik 2 Yanıtları</h4>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive border rounded">
                                <table id="datatable" class="table " data-toggle="data-table">
                                    <thead>
                                        <tr>
                                            <th>Kullanıcı ID</th>
                                            <th>Kullanıcı Ad Soyad</th>
                                            <th>Cevap1</th>
                                            <th>Cevap2</th>
                                            <th>Cevap3</th>
                                            <th>Cevap4</th>
                                            <th>Cevap5</th>
                                            <th>Cevap6</th>
                                            <th>Cevap7</th>
                                            <th>Cevap8</th>
                                            <th>Cevap9</th>
                                            <th>Cevap10</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater runat="server" ID="rptAnswers">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("userId")%></td>
                                                    <td><%#Eval("userName")%></td>
                                                    <td><%#Eval("kutu1")%></td>
                                                    <td><%#Eval("kutu2")%></td>
                                                    <td><%#Eval("kutu3")%></td>
                                                    <td><%#Eval("kutu4")%></td>
                                                    <td><%#Eval("kutu5")%></td>
                                                    <td><%#Eval("kutu6")%></td>
                                                    <td><%#Eval("kutu7")%></td>
                                                    <td><%#Eval("kutu8")%></td>
                                                    <td><%#Eval("kutu9")%></td>
                                                    <td><%#Eval("kutu10")%></td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>

