<%@ Page Title="" Language="C#" MasterPageFile="AdminMaster.master" AutoEventWireup="true" CodeFile="etkinlik3Yanitlar.aspx.cs" Inherits="Admin_dashboard_etkinlik3Yanitlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <main class="main-content">
        <div class="content-inner container-fluid pb-0" id="page_layout">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="border-bottom text-center pb-3">
                                <h2>3. Etkinlik Kelimesi</h2>
                                <br />
                                <h4>
                                    <asp:Label runat="server" ID="lblKelime"></asp:Label></h4>
                            </div>
                            <div class="d-flex justify-content-between mt-3">
                                <div>
                                    <asp:Button type="button" runat="server" ID="btnGeri" class="btn btn-info mb-2" Text="Önceki Kelimeye Geç" OnClick="btnGeri_Click" />
                                </div>
                                <div>
                                    <asp:Button type="button" runat="server" ID="btnİleri" class="btn btn-info mb-2" Text="Sonraki Kelimeye Geç" OnClick="btnİleri_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>

