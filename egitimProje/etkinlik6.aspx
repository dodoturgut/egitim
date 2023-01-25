<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="etkinlik6.aspx.cs" Inherits="etkinlik6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .soruBox {
            background-color: #f1f1f1;
            border-style: dashed;
            border-radius: 15px;
            text-align: center;
            padding: 10px;
            width: 100%;
            height: 50px;
        }

        .counter {
            font-size: 7px;
            --duration: 0s;
            --size: 100px;
            --counter-thickness: 14px;
            --outer-radius: calc(100% / 2 - 2px);
            --radius: calc(var(--outer-radius) - var(--counter-thickness) / 2);
            --inner-radius: calc(var(--radius) - var(--counter-thickness) / 2);
            --stroke-dasharray: calc(2 * 3.14 * var(--radius));
            --repetitions: 5;
            --animation-play-state: running;
            position: fixed;
            left: 50%;
            transform: translate(-50%, -50%);
            width: var(--size);
            height: var(--size);
        }

            .counter[data-animation="paused"] {
                --animation-play-state: paused;
            }

            .counter > span {
                color: #744edc;
            }

                .counter > span::after {
                    content: attr(data-repetition) " ";
                    top: 0;
                    left: 0;
                    position: absolute;
                    width: 100%;
                    height: 100%;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    font-size: 7em;
                    font-family: arial;
                }

            .counter > svg {
                transform: rotate(-90deg);
            }

                .counter > svg > circle:first-child {
                    r: var(--outer-radius);
                }

                .counter > svg > circle:nth-child(2) {
                    r: var(--radius);
                    stroke-width: var(--counter-thickness, 8);
                }

                .counter > svg > circle:last-child {
                    r: var(--inner-radius);
                }

        .circle_animation {
            position: relative;
            stroke-dasharray: var( --stroke-dasharray ); /* this value is the pixel circumference of the circle */
            stroke-dashoffset: 0;
            animation: tick var(--duration) linear forwards;
            animation-iteration-count: var(--repetitions, 1);
            animation-play-state: var(--animation-play-state);
        }

        @keyframes tick {
            100% {
                stroke-dashoffset: calc(-1 * var(--stroke-dasharray));
            }
        }
    </style>
    <style>
        .divKutu {
            width: 120px;
            height: 30px;
            border: 1px solid #aaaaaa;
            display: inline;
        }
    </style>
    <div class="clearfix"></div>

    <div class="wrapper">
        <div class="wizard-content-1 pos-flex clearfix">
            <div class="steps d-inline-block clearfix">
                <span class="bg-shape"></span>
                <ul class="tablist multisteps-form__progress">
                    <li class="multisteps-form__progress-btn js-active current">
                        <div class="step-btn-icon-text">
                            <span>1</span>
                            <div class="step-btn-icon float-left position-relative">
                                <img class="fix-image" src="assets/img/kopkeCool.png" alt="" style="height: 150px; width: auto; left: -7px !important;">
                            </div>
                            <div class="step-btn-text">
                                <h2 class="text-uppercase">Hazırlık</h2>
                            </div>
                        </div>
                    </li>
                    <li class="multisteps-form__progress-btn">
                        <div class="step-btn-icon-text">
                            <span>2</span>
                            <div class="step-btn-icon float-left position-relative">
                                <img class="fix-image" src="assets/img/bt2.png" alt="">
                            </div>
                            <div class="step-btn-text">
                                <h2 class="text-uppercase">Etkinlik!</h2>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="step-inner-content clearfix position-relative">
                <span class="bg-shape"></span>
                <div class="form-area position-relative">
                    <div class="multisteps-form__panel js-active" data-animation="scaleIn">
                        <div class="wizard-forms position-relative">
                            <span class="step-no position-absolute">Etkinliğe Giriş</span>
                            <div class="wizard-inner-box">
                                <div class="inner-title text-center">
                                    <p>"Sağlıklı İkililer" metninde bazı kelimelerin yeri boş bırakılmış. Bu kelimeleri birlikte bulmaya ne dersin?</p>
                                    <br />
                                    <p><strong>Hazırsan "BAŞLA" butonuna bas</strong></p>
                                </div>
                                <div id="need-job-slide-id" class="need-job-slide owl-carousel">
                                </div>
                            </div>
                            <div class="actions">
                                <ul>
                                    <li style="background-color: gray;"><span class="js-btn-next" title="Geri" onclick="geri();">Geri</span></li>
                                    <li><span class="js-btn-next" title="Devam Et" onclick="hide(1); counter();">BAŞLA!</span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="bottom-vector position-absolute">
                            <img src="assets/img/sd1.png" alt="">
                        </div>
                    </div>
                    <!-- step 1 -->
                    <div class="multisteps-form__panel" data-animation="scaleIn">
                        <div class="wizard-forms form-step-2">
                            <span class="step-no position-absolute">2. Adım</span>
                            <div class="details-form-area">
                                <div class="row">
                                    <div class="col-md-6 col-lg-6 col-sm-12">
                                        <div class="soruBox" id="drag1" draggable="false" ondragstart="drag(event)">
                                            <h4>Başının etini yemek
                                            </h4>
                                        </div>
                                        <div class="soruBox" id="drag2" draggable="false" ondragstart="drag(event)">
                                            <h4>Dizini dövmek
                                            </h4>
                                        </div>
                                        <div class="soruBox" id="drag3" draggable="false" ondragstart="drag(event)">
                                            <h4>Şifayı kapmak
                                            </h4>
                                        </div>
                                        <div class="soruBox" id="drag4" draggable="false" ondragstart="drag(event)">
                                            <h4>Ayakta kalmak
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-6 col-sm-12">
                                        <div class="soruBox" id="drag5" draggable="false" ondragstart="drag(event)">
                                            <h4>Can atmak
                                            </h4>
                                        </div>
                                        <div class="soruBox" id="drag11" draggable="false" ondragstart="drag(event)">
                                            <h4>Gözden çıkarmak
                                            </h4>
                                        </div>
                                        <div class="soruBox" id="drag199" draggable="false" ondragstart="drag(event)">
                                            <h4>Tadını çıkarmak
                                            </h4>
                                        </div>
                                        <div class="soruBox" id="drag6" draggable="false" ondragstart="drag(event)">
                                            <h4>Dert yanmak
                                            </h4>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <br />
                                <br />
                                <div class="row" id="hidden1" runat="server">
                                    <div class="textBox" style="width: 100%; display: contents;">
                                        <h4><b>Musa:</b> Bir hafta önce Ahmet’ten kalemini ödünç aldım. Her gün kalemini soruyor.</h4>
                                        <br />
                                        <h4><b>Ayşe:</b> Her gün mü?</h4>
                                        <br />
                                        <h4><b>Musa:</b> Evet, "Kalemimi ne zaman getireceksin?" diye sürekli soruyor. Kalemini istiyor.Sürekli kalemini istediği için bıktım.</h4>
                                        <br />
                                        <h4><b>Ayşe:</b>  Desene, Ahmet senin
                                        <asp:DropDownList runat="server" ID="DropDownList1" CssClass="form-control divKutu" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                            <asp:ListItem>Başının etini yemek</asp:ListItem>
                                            <asp:ListItem>Dizini dövmek</asp:ListItem>
                                            <asp:ListItem>Şifayı kapmak</asp:ListItem>
                                            <asp:ListItem>Ayakta kalmak</asp:ListItem>
                                            <asp:ListItem>Can atmak</asp:ListItem>
                                            <asp:ListItem>Gözden çıkarmak</asp:ListItem>
                                            <asp:ListItem>Tadını çıkarmak</asp:ListItem>
                                            <asp:ListItem>Dert yanmak</asp:ListItem>
                                        </asp:DropDownList>.</h4>
                                    </div>
                                </div>
                                <div class="row" id="hidden2" runat="server" style="display: none;">
                                    <div class="textBox" style="width: 100%; display: contents;">
                                        <h4><b>Ece:</b> Sınavlara zamanında çalışmadım. Bir sürü konu birikti!</h4>
                                        <br />
                                        <h4><b>Senem:</b> Neden çalışmayı son güne bıraktın?</h4>
                                        <br />
                                        <h4><b>Ece:</b> Hep "Yarın çalışırım bugün çalışmama gerek yok." dedim. Şu an çok pişmanım
                                        <asp:DropDownList runat="server" ID="DropDownList2" CssClass="form-control divKutu" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                            <asp:ListItem>Başının etini yemek</asp:ListItem>
                                            <asp:ListItem>Dizini dövmek</asp:ListItem>
                                            <asp:ListItem>Şifayı kapmak</asp:ListItem>
                                            <asp:ListItem>Ayakta kalmak</asp:ListItem>
                                            <asp:ListItem>Can atmak</asp:ListItem>
                                            <asp:ListItem>Gözden çıkarmak</asp:ListItem>
                                            <asp:ListItem>Tadını çıkarmak</asp:ListItem>
                                            <asp:ListItem>Dert yanmak</asp:ListItem>
                                        </asp:DropDownList>
                                            ama her şey için çok geç.</h4>
                                    </div>
                                </div>
                                <div class="row" id="hidden3" runat="server" style="display: none;">
                                    <div class="textBox" style="width: 100%; display: contents;">
                                        <h4><b>Semih:</b> Ben hafta sonu
                                            <asp:DropDownList runat="server" ID="DropDownList3" CssClass="form-control divKutu" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                                <asp:ListItem>Başının etini yemek</asp:ListItem>
                                                <asp:ListItem>Dizini dövmek</asp:ListItem>
                                                <asp:ListItem>Şifayı kapmak</asp:ListItem>
                                                <asp:ListItem>Ayakta kalmak</asp:ListItem>
                                                <asp:ListItem>Can atmak</asp:ListItem>
                                                <asp:ListItem>Gözden çıkarmak</asp:ListItem>
                                                <asp:ListItem>Tadını çıkarmak</asp:ListItem>
                                                <asp:ListItem>Dert yanmak</asp:ListItem>
                                            </asp:DropDownList></h4>
                                        <br />
                                        <h4><b>Ufuk:</b> Ne oldu? Hasta mısın?</h4>
                                        <br />
                                        <h4><b>Semih:</b> Evet, çok hastayım. Hafta sonu yürüyüş yapmak için ormana gittim. Hava çok
rüzgârlıydı ama ben önemsemedim. Akşam eve gelince burnum aktı ve öksürmeye başladım.</h4>
                                        <br />
                                        <h4><b>Ufuk:</b> Kendine hiç dikkat etmiyorsun. Bundan sonra yürüyüşe giderken kalın giyin ve üşütme</h4>
                                    </div>
                                </div>
                                <div class="row" id="hidden4" runat="server" style="display: none;">
                                    <div class="textBox" style="width: 100%; display: contents;">
                                        <h4><b>Öğretmen:</b> Evet çocuklar! Bu yıl hepiniz derslerinize çalıştınız ve sınavlarda başarılı oldunuz.
Başarınızı kutlamak ve size teşekkür etmek için size bir sürpriz hazırladım.</h4>
                                        <br />
                                        <h4><b>Öğrenci:</b>  Öğretmenim, sürprizinizi merak ettim</h4>
                                        <br />
                                        <h4><b>Semih:</b> Evet, çok hastayım. Hafta sonu yürüyüş yapmak için ormana gittim. Hava çok
rüzgârlıydı ama ben önemsemedim. Akşam eve gelince burnum aktı ve öksürmeye başladım.</h4>
                                        <br />
                                        <h4><b>Öğretmen:</b> O zaman sürprizi söylüyorum! Hep beraber iki günlüğüne kampa gideceğiz.
Şimdiden hazırlıklarınızı yapın!</h4>
                                        <br />
                                        <h4><b>Öğrenci:</b> Öğretmenim, bu çok güzel bir sürpriz! Kampa gitmeyi o kadar çok istiyorum ki! 
Kampa gitmek için
                                            <asp:DropDownList runat="server" ID="DropDownList4" CssClass="form-control divKutu" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                                <asp:ListItem>Başının etini yemek</asp:ListItem>
                                                <asp:ListItem>Dizini dövmek</asp:ListItem>
                                                <asp:ListItem>Şifayı kapmak</asp:ListItem>
                                                <asp:ListItem>Ayakta kalmak</asp:ListItem>
                                                <asp:ListItem>Can atmak</asp:ListItem>
                                                <asp:ListItem>Gözden çıkarmak</asp:ListItem>
                                                <asp:ListItem>Tadını çıkarmak</asp:ListItem>
                                                <asp:ListItem>Dert yanmak</asp:ListItem>
                                            </asp:DropDownList>
                                            Galiba heyecandan uyuyamayacağım!</h4>
                                    </div>
                                </div>
                                <div class="row" id="hidden5" runat="server" style="display: none;">
                                    <div class="textBox" style="width: 100%; display: contents;">
                                        <h4><b>Yuliya:</b> Türkiye'ye geleli tam bir yıl oldu ve ben henüz ülkeme gitmedim. Hem ailemi hem de 
arkadaşlarımı çok özledim. O yüzden önümüzdeki ay Rusya’ya gideceğim.</h4>
                                        <br />
                                        <h4><b>Riyam:</b> Yuliya, uçak biletleri çok pahalı. Uçak bileti alırsan tüm paran biter.</h4>
                                        <br />
                                        <h4><b>Yuliya:</b> Bilet parası önemli değil, bu parayı 
                                            <asp:DropDownList runat="server" ID="DropDownList5" CssClass="form-control divKutu" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                                <asp:ListItem>Başının etini yemek</asp:ListItem>
                                                <asp:ListItem>Dizini dövmek</asp:ListItem>
                                                <asp:ListItem>Şifayı kapmak</asp:ListItem>
                                                <asp:ListItem>Ayakta kalmak</asp:ListItem>
                                                <asp:ListItem>Can atmak</asp:ListItem>
                                                <asp:ListItem>Gözden çıkarmak</asp:ListItem>
                                                <asp:ListItem>Tadını çıkarmak</asp:ListItem>
                                                <asp:ListItem>Dert yanmak</asp:ListItem>
                                            </asp:DropDownList>
                                            Çünkü ailemi, arkadaşlarımı ve ülkemi 
göreceğim. Bu paradan daha önemli.</h4>
                                    </div>
                                </div>
                                <div class="row" id="hidden6" runat="server" style="display: none;">
                                    <div class="textBox" style="width: 100%; display: contents;">
                                        <h4><b>Aliye Nur:</b> Merhaba Rabia, nasılsın?</h4>
                                        <br />
                                        <h4><b>Rabia:</b> Teşekkür ederim çok iyiyim. Sen nasılsın?</h4>
                                        <br />
                                        <h4><b>Aliye Nur:</b> Ben de çok iyiyim. Bu hafta seni işyerinde görmedim. İzinli misin?</h4>
                                        <br />
                                        <h4><b>Rabia:</b> Evet, bu hafta izinliyim. İzmir’de tatil yapıyorum. Deniz ve doğa çok güzel. Her gün
denize giriyorum, ormanda yürüyüş yapıyorum ve antik şehirleri geziyorum</h4>
                                        <br />
                                        <h4><b>Aliye Nur:</b>  Çok güzel, tatil boyunca her yeri gez ve tatilin 
                                            <asp:DropDownList runat="server" ID="DropDownList6" CssClass="form-control divKutu" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                                <asp:ListItem>Başının etini yemek</asp:ListItem>
                                                <asp:ListItem>Dizini dövmek</asp:ListItem>
                                                <asp:ListItem>Şifayı kapmak</asp:ListItem>
                                                <asp:ListItem>Ayakta kalmak</asp:ListItem>
                                                <asp:ListItem>Can atmak</asp:ListItem>
                                                <asp:ListItem>Gözden çıkarmak</asp:ListItem>
                                                <asp:ListItem>Tadını çıkarmak</asp:ListItem>
                                                <asp:ListItem>Dert yanmak</asp:ListItem>
                                            </asp:DropDownList>
                                            Çünkü işe başlayınca çok 
fazla çalışacaksın</h4>
                                    </div>
                                </div>
                                <div class="row" id="hidden7" runat="server" style="display: none;">
                                    <div class="textBox" style="width: 100%; display: contents;">
                                        <h4><b>Burak:</b> Yarın işe araba ile gideceğim ama arabada bazı sorunlar var.</h4>
                                        <br />
                                        <h4><b>Banu:</b>  Arabada hangi sorunlar var?</h4>
                                        <br />
                                        <h4><b>Burak:</b> Arabanın kapısı açılmıyor. Tek sorun bu da değil. Silecekler de çalışmıyor. Bu yüzden 
camları silemiyorum. Bir de arabanın motorundan ses geliyor.</h4>
                                        <br />
                                        <h4><b>Banu:</b> Bana araba de ilgili 
                                        <asp:DropDownList runat="server" ID="DropDownList7" CssClass="form-control divKutu" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                            <asp:ListItem>Başının etini yemek</asp:ListItem>
                                            <asp:ListItem>Dizini dövmek</asp:ListItem>
                                            <asp:ListItem>Şifayı kapmak</asp:ListItem>
                                            <asp:ListItem>Ayakta kalmak</asp:ListItem>
                                            <asp:ListItem>Can atmak</asp:ListItem>
                                            <asp:ListItem>Gözden çıkarmak</asp:ListItem>
                                            <asp:ListItem>Tadını çıkarmak</asp:ListItem>
                                            <asp:ListItem>Dert yanmak</asp:ListItem>
                                        </asp:DropDownList>. Hemen bir tamirciye götür!</h4>
                                    </div>
                                </div>
                                <div class="row" id="hidden8" runat="server" style="display: none;">
                                    <div class="textBox" style="width: 100%; display: contents;">
                                        <h4><b>Melis:</b> Bursa'daki çınar ağacının yaşını biliyor musun?</h4>
                                        <br />
                                        <h4><b>Fitnat:</b> Hayır, bilmiyorum ama merak ettim? Bir çınar ağacı kaç yaşındadır acaba?</h4>
                                        <br />
                                        <h4><b>Melis:</b> : Tam tamına 650 yaşında! Yani 650 yıl önce de buradaymış. O zamandan beri yaşıyor 
ve hiç düşmemiş ya da yıkılmamış.</h4>
                                        <br />
                                        <h4><b>Fitnat:</b>  İnanamıyorum! 650 yıl nasıl
                                        <asp:DropDownList runat="server" ID="DropDownList8" CssClass="form-control divKutu" OnSelectedIndexChanged="DropDownList8_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem>Seçiniz</asp:ListItem>
                                            <asp:ListItem>Başının etini yemek</asp:ListItem>
                                            <asp:ListItem>Dizini dövmek</asp:ListItem>
                                            <asp:ListItem>Şifayı kapmak</asp:ListItem>
                                            <asp:ListItem>Ayakta kalmak</asp:ListItem>
                                            <asp:ListItem>Can atmak</asp:ListItem>
                                            <asp:ListItem>Gözden çıkarmak</asp:ListItem>
                                            <asp:ListItem>Tadını çıkarmak</asp:ListItem>
                                            <asp:ListItem>Dert yanmak</asp:ListItem>
                                        </asp:DropDownList>? Buna gerçekten şaşırdım. </h4>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <br />
                            <br />
                            <div class="actions">
                                <ul>
                                    <li>
                                        <asp:Button runat="server" ID="sbmt" name="submit" OnClick="sbmt_Click" Text="Bitir" Style="display:none;"></asp:Button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function allowDrop(ev) {
            ev.preventDefault();
        }

        function drag(ev) {
            ev.dataTransfer.setData("text", ev.target.id);
        }

        function drop(ev) {
            ev.preventDefault();
            var data = ev.dataTransfer.getData("text");
            ev.target.appendChild(document.getElementById(data));
        }
    </script>
    <script>
        function hide(id) {
            var oldScreen = id - 1;
            const screens = document.getElementsByClassName("multisteps-form__panel");
            const screenTab = document.getElementsByClassName("multisteps-form__progress-btn");

            screens[oldScreen].classList.remove("js-active");
            screens[id].classList.add("js-active");

            screenTab[oldScreen].classList.remove("js-active");
            screenTab[oldScreen].classList.remove("current");
            screenTab[id].classList.add("js-active");
            screenTab[id].classList.add("current");
        }
    </script>
    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script src="assets/js/jquery.validate.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script>
        $("#customFile").change(function () {
            filename = this.files[0].name
        });
        $(".custom-file-input").on("change", function () {
            var fileName = $(this).val().split("\\").pop();
            $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
        });
        $('.datepicker').datepicker({
            clearBtn: true,
            format: "dd/mm/yyyy"
        });
    </script>
    <script>
        function counter() {
            const REPETITIONS = 181;
            const DURATION = 1000;

            const animated = document.querySelector(".circle_animation");
            const spanRepetition = document.querySelector("span[data-repetition]");
            const elem = document.querySelector(".counter");

            spanRepetition.dataset.repetition = REPETITIONS;
            elem.style.setProperty("--duration", `${DURATION}ms`);
            elem.style.setProperty("--repetitions", `${REPETITIONS}`);

            animated.addEventListener("animationiteration", () => {
                const r = parseInt(spanRepetition.dataset.repetition);
                spanRepetition.dataset.repetition = r - 1;
            });

            animated.addEventListener("animationend", () => {
                spanRepetition.dataset.repetition = 0;
            });
        }
    </script>
</asp:Content>

