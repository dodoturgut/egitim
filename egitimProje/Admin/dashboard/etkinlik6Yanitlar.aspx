﻿<%@ Page Title="" Language="C#" MasterPageFile="AdminMaster.master" AutoEventWireup="true" CodeFile="etkinlik6Yanitlar.aspx.cs" Inherits="Admin_dashboard_etkinlik6Yanitlar" %>

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
                                <h4 class="card-title">Etkinlik 6 Yanıtları</h4>
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
                                            <th>İşlem</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater runat="server" ID="rptAnswers" OnItemCommand="rptAnswers_ItemCommand">
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
                                                    <td>
                                                        <div class="flex align-items-center list-user-action">
                                                            <asp:LinkButton runat="server" class="btn btn-sm btn-icon btn-danger rounded" data-bs-toggle="tooltip" data-placement="top" title="" data-bs-original-title="Sil" ID="delete" CommandArgument='<%#Eval("userId") %>' CommandName="Sil">
                                                                    <span class="btn-inner">
                                                                        <svg width="20" viewbox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" stroke="currentColor">
                                                                            <path d="M19.3248 9.46826C19.3248 9.46826 18.7818 16.2033 18.4668 19.0403C18.3168 20.3953 17.4798 21.1893 16.1088 21.2143C13.4998 21.2613 10.8878 21.2643 8.27979 21.2093C6.96079 21.1823 6.13779 20.3783 5.99079 19.0473C5.67379 16.1853 5.13379 9.46826 5.13379 9.46826" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                                            <path d="M20.708 6.23975H3.75" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                                            <path d="M17.4406 6.23973C16.6556 6.23973 15.9796 5.68473 15.8256 4.91573L15.5826 3.69973C15.4326 3.13873 14.9246 2.75073 14.3456 2.75073H10.1126C9.53358 2.75073 9.02558 3.13873 8.87558 3.69973L8.63258 4.91573C8.47858 5.68473 7.80258 6.23973 7.01758 6.23973" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                                        </svg>
                                                                    </span>
                                                            </asp:LinkButton>
                                                        </div>
                                                    </td>
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

