<%@ Page Title="" Language="C#" MasterPageFile="AdminMaster.master" AutoEventWireup="true" CodeFile="etkinlik1Yanitlar.aspx.cs" Inherits="Admin_dashboard_etkinlik1Yanitlar" %>

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
                                <h4 class="card-title">Etkinlik 1 Yanıtları</h4>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive border rounded">
                                <table id="datatable" class="table " data-toggle="data-table">
                                    <thead>
                                        <tr>
                                            <th>Kullanıcı ID</th>
                                            <th>Kullanıcı Ad Soyad</th>
                                            <th>Cevap</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater runat="server" ID="rptAnswers">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("userId")%></td>
                                                    <td><%#Eval("userName")%></td>
                                                    <td><%#Eval("answer")%></td>
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

