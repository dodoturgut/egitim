<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper">
        <div class="wizard-content-1 pos-flex clearfix" style="width: 100%;">
            <div class="step-inner-content clearfix position-relative" style="max-width: 100%; background-image: url('assets/img/bg.png'); background-size: cover;">
                <span class="bg-shape"></span>
                <div class="form-area position-relative">
                    <div class="multisteps-form__panel js-active" data-animation="scaleIn">
                        <div class="wizard-forms position-relative">
                            <span class="step-no position-absolute">TÖMER ETKİNLİKLERİ</span>
                            <div class="wizard-inner-box">
                                <div class="inner-title text-center">
                                    <div class="map">
                                        <img src="assets/img/test.jpeg" usemap="#workmap" id="image" />
                                        <map name="workmap">
                                            <area shape="circle" alt="Etkinlik1" href="event1.aspx" id="etkinlik1">
                                            <area shape="circle" alt="Etkinlik2" href="event2.aspx" id="etkinlik2">
                                            <area shape="circle" alt="Etkinlik3" href="event3.aspx" id="etkinlik3">
                                            <area shape="circle" alt="Etkinlik4" href="event4.aspx" id="etkinlik4">
                                            <area shape="circle" alt="Etkinlik5" href="event5.aspx" id="etkinlik5">
                                            <area shape="circle" alt="Etkinlik6" href="event6.aspx" id="etkinlik6">
                                            <area shape="circle" alt="Etkinlik7" href="event7.aspx" id="etkinlik7">
                                            <area shape="circle" alt="Etkinlik8" href="event8.aspx" id="etkinlik8">
                                            <area shape="circle" alt="Etkinlik9" href="event9.aspx" id="etkinlik9">
                                            <area shape="circle" alt="Etkinlik10" href="event10.aspx" id="etkinlik10">
                                            <area shape="circle" alt="Etkinlik11" href="event11.aspx" id="etkinlik11">
                                            <area shape="circle" alt="Etkinlik12" href="event12.aspx" id="etkinlik12">
                                        </map>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        const x = 1000;
        const y = 500;
        const boy = 40;

        const img = document.getElementById("image");
        var newBoy = ((img.offsetWidth * 40) / 1000);

        const myElement1 = document.getElementById("etkinlik1");
        var newX = ((img.offsetWidth * 440) / 1000);
        var newY = ((img.offsetHeight * 415) / 500);
        myElement1.setAttribute("coords", newX + "," + newY + "," + newBoy);

        const myElement2 = document.getElementById("etkinlik2");
        var newX = ((img.offsetWidth * 558) / 1000);
        var newY = ((img.offsetHeight * 416) / 500);
        myElement2.setAttribute("coords", newX + "," + newY + "," + newBoy);

        const myElement3 = document.getElementById("etkinlik3");
        var newX = ((img.offsetWidth * 675) / 1000);
        var newY = ((img.offsetHeight * 380) / 500);
        myElement3.setAttribute("coords", newX + "," + newY + "," + newBoy);

        const myElement4 = document.getElementById("etkinlik4");
        var newX = ((img.offsetWidth * 633) / 1000);
        var newY = ((img.offsetHeight * 307) / 500);
        myElement4.setAttribute("coords", newX + "," + newY + "," + newBoy);

        const myElement5 = document.getElementById("etkinlik5");
        var newX = ((img.offsetWidth * 498) / 1000);
        var newY = ((img.offsetHeight * 307) / 500);
        myElement5.setAttribute("coords", newX + "," + newY + "," + newBoy);

        const myElement6 = document.getElementById("etkinlik6");
        var newX = ((img.offsetWidth * 370) / 1000);
        var newY = ((img.offsetHeight * 295) / 500);
        myElement6.setAttribute("coords", newX + "," + newY + "," + newBoy);

        const myElement7 = document.getElementById("etkinlik7");
        var newX = ((img.offsetWidth * 440) / 1000);
        var newY = ((img.offsetHeight * 210) / 500);
        myElement7.setAttribute("coords", newX + "," + newY + "," + newBoy);

        const myElement8 = document.getElementById("etkinlik8");
        var newX = ((img.offsetWidth * 590) / 1000);
        var newY = ((img.offsetHeight * 215) / 500);
        myElement8.setAttribute("coords", newX + "," + newY + "," + newBoy);

        const myElement9 = document.getElementById("etkinlik9");
        var newX = ((img.offsetWidth * 700) / 1000);
        var newY = ((img.offsetHeight * 170) / 500);
        myElement9.setAttribute("coords", newX + "," + newY + "," + newBoy);

        const myElement10 = document.getElementById("etkinlik10");
        var newX = ((img.offsetWidth * 610) / 1000);
        var newY = ((img.offsetHeight * 112) / 500);
        myElement10.setAttribute("coords", newX + "," + newY + "," + newBoy);

        const myElement11 = document.getElementById("etkinlik11");
        var newX = ((img.offsetWidth * 510) / 1000);
        var newY = ((img.offsetHeight * 112) / 500);
        myElement11.setAttribute("coords", newX + "," + newY + "," + newBoy);

        const myElement12 = document.getElementById("etkinlik12");
        var newX = ((img.offsetWidth * 395) / 1000);
        var newY = ((img.offsetHeight * 112) / 500);
        myElement12.setAttribute("coords", newX + "," + newY + "," + newBoy);

    </script>
</asp:Content>

