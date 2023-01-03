﻿<%@ Page Title="" Language="C#" MasterPageFile="AdminMaster.master" AutoEventWireup="true" CodeFile="students.aspx.cs" Inherits="Admin_dashboard_students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <main class="main-content">
        <div class="content-inner container-fluid pb-0" id="page_layout">
            <div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between">
                                <div class="header-title">
                                    <h4 class="card-title">Öğrenci Listesi</h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive border rounded">
                                    <table id="user-list-table" class="table table-striped" role="grid" data-toggle="data-table">
                                        <thead>
                                            <tr class="ligth">
                                                <th>Kullanıcı ID</th>
                                                <th>İsim Soyisim</th>
                                                <th>Telefon</th>
                                                <th>Email</th>
                                                <th>Durum</th>
                                                <th style="min-width: 100px">Aksiyon</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater runat="server" ID="rptOgrenci" OnItemCommand="rptOgrenci_ItemCommand">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%#Eval("userId") %></td>
                                                        <td><%#Eval("NameSurname") %></td>
                                                        <td><%#Eval("phone") %></td>
                                                        <td><%#Eval("mail") %></td>
                                                        <td><span class="badge bg-primary">Aktif</span></td>
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
        </div>
        <!-- Footer Section End -->
    </main>
</asp:Content>
