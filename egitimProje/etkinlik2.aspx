<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="etkinlik2.aspx.cs" Inherits="etkinlik2" %>

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
                                    <div class="col-md-6 col-lg-6 col-sm-6">
                                        <div class="soruBox" id="drag1" draggable="true" ondragstart="drag(event)">
                                            <h4>Baharat 

                                            </h4>
                                        </div>
                                        <div class="soruBox" id="drag2" draggable="true" ondragstart="drag(event)">
                                            <h4>Haberci 


                                            </h4>
                                        </div>
                                        <div class="soruBox" id="drag3" draggable="true" ondragstart="drag(event)">
                                            <h4>Solunum
                                            </h4>
                                        </div>
                                        <div class="soruBox" id="drag4" draggable="true" ondragstart="drag(event)">
                                            <h4>Yaygın

                                            </h4>
                                        </div>
                                        <div class="soruBox" id="drag5" draggable="true" ondragstart="drag(event)">
                                            <h4>Öksürük 

                                            </h4>
                                        </div>
                                        <div class="soruBox" id="drag11" draggable="true" ondragstart="drag(event)">
                                            <h4>Çare


                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-6 col-sm-6">
                                        <div class="soruBox" id="drag6" draggable="true" ondragstart="drag(event)">
                                            <h4>Belirti

                                            </h4>
                                        </div>
                                        <div class="soruBox" id="drag7" draggable="true" ondragstart="drag(event)">
                                            <h4>Kurutmak 

                                            </h4>
                                        </div>
                                        <div class="soruBox" id="drag8" draggable="true" ondragstart="drag(event)">
                                            <h4>Delik 

                                            </h4>
                                        </div>
                                        <div class="soruBox" id="drag9" draggable="true" ondragstart="drag(event)">
                                            <h4>Hapşırmak 

                                            </h4>
                                        </div>
                                        <div class="soruBox" id="drag10" draggable="true" ondragstart="drag(event)">
                                            <h4>Kas 

                                            </h4>
                                        </div>
                                        <div class="soruBox" id="drag12" draggable="true" ondragstart="drag(event)">
                                            <h4>Boşaltı 


                                            </h4>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <br />
                                <br />
                                <asp:HiddenField runat="server" ID="lblText1" Value="sa" />
                                <asp:HiddenField runat="server" ID="lblText2" Value="sa" />
                                <asp:HiddenField runat="server" ID="lblText3" Value="sa" />
                                <asp:HiddenField runat="server" ID="lblText4" Value="sa" />
                                <asp:HiddenField runat="server" ID="lblText5" Value="sa" />
                                <asp:HiddenField runat="server" ID="lblText6" Value="sa" />
                                <asp:HiddenField runat="server" ID="lblText7" Value="sa" />
                                <asp:HiddenField runat="server" ID="lblText8" Value="sa" />
                                <asp:HiddenField runat="server" ID="lblText9" Value="sa" />
                                <asp:HiddenField runat="server" ID="lblText10" Value="sa" />
                                <div class="row">
                                    <div class="textBox" style="width: 100%; display: contents;">
                                        <h4>Zencefil ve limon: </h4>
                                        <h4>Asya ve Hint mutfağında oldukça bilinen bir
                                        </h4>
                                        <div id="hidden1" ondrop="drop(event)" class="divKutu" ondragover="allowDrop(event)"></div>
                                        <h4>olan zencefil; et 
yemeklerinde, çorba ve soslarda 
                                        </h4>
                                        <div id="hidden2" ondrop="drop(event)" class="divKutu" ondragover="allowDrop(event)"></div>
                                        <h4>. kullanılır. Zencefil bitkisinin kökünü hem taze 
tüketebilirsiniz hem de 
                                        </h4>
                                        <div id="hidden3" ondrop="drop(event)" class="divKutu" ondragover="allowDrop(event)"></div>
                                        <h4>tozunu kullanabilirsiniz. İsterseniz zencefilin çayını da 
demleyebilirsiniz. Günde birkaç kere 
                                        </h4>
                                        <div id="hidden4" ondrop="drop(event)" class="divKutu" ondragover="allowDrop(event)"></div>
                                        <h4>, yüksek ateş ve 
                                        </h4>
                                        <div id="hidden5" ondrop="drop(event)" class="divKutu" ondragover="allowDrop(event)"></div>
                                        <h4>. ağrısı gibi 
                                        </h4>
                                        <div id="hidden6" ondrop="drop(event)" class="divKutu" ondragover="allowDrop(event)"></div>
                                        <h4>. grip 
hastalığının 
                                        </h4>
                                        <div id="hidden7" ondrop="drop(event)" class="divKutu" ondragover="allowDrop(event)"></div>
                                        <h4>dir/dır. Böyle durumlarda zencefil ve limon ile hazırlayacağınız çay,
ateşinizi düşürür ve ağrılarınızı azaltır
                                        </h4>
                                    </div>
                                </div>
                                <br />
                                <br />
                                <br />
                                <div class="row">
                                    <div class="textBox" style="width: 100%; display: contents;">
                                        <h4>Siyah turp ve bal: </h4>
                                        <h4>Siyah turp ve bal, alternatif tıpta </h4>
                                        <div id="hidden8" ondrop="drop(event)" class="divKutu" ondragover="allowDrop(event)"></div>
                                        <h4>sistemi hastalıkları için doğal 
bir ilaçtır. Kışın siyah turp ile bal tüketmek hastalıklardan kurtarabilir. Özellikle</h4>
                                        <div id="hidden9" ondrop="drop(event)" class="divKutu" ondragover="allowDrop(event)"></div>
                                        <h4>karşı
etkilidir. Ayrıca terlememizi sağlayarak vücudumuzdan toksinleri atmamızı sağlar. Hem de bu 
doğal ilacı hazırlamak çok kolay! Önce güzelce yıkadığımız turpun tepesini kesin ve küçük bir 
delik açın. Daha sonra bu </h4>
                                        <div id="hidden10" ondrop="drop(event)" class="divKutu" ondragover="allowDrop(event)"></div>
                                        <h4>bal dökün. 12 saat bekledikten sonra suyunu için. Hepsi bu 
kadar!</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="actions">
                                <ul>
                                    <li>
                                        <asp:Button runat="server" ID="sbmt" name="submit" OnClientClick="test()" OnClick="sbmt_Click" Text="Bitir" Style="color: #fff; height: 74px; width: 210px; font-size: 24px; font-weight: 500; cursor: pointer; text-align: center; line-height: 74px; border-radius: 50px; display: inline-block; background-color: #7650e0; border-style: unset;"></asp:Button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- step 3 -->
                </div>
            </div>
        </div>
    </div>
    <script>
        function test() {
            const divText1 = document.getElementById("hidden1");
            const divText2 = document.getElementById("hidden2");
            const divText3 = document.getElementById("hidden3");
            const divText4 = document.getElementById("hidden4");
            const divText5 = document.getElementById("hidden5");
            const divText6 = document.getElementById("hidden6");
            const divText7 = document.getElementById("hidden7");
            const divText8 = document.getElementById("hidden8");
            const divText9 = document.getElementById("hidden9");
            const divText10 = document.getElementById("hidden10");

            const lblText1 = document.getElementById("ContentPlaceHolder1_lblText1");
            const lblText2 = document.getElementById("ContentPlaceHolder1_lblText2");
            const lblText3 = document.getElementById("ContentPlaceHolder1_lblText3");
            const lblText4 = document.getElementById("ContentPlaceHolder1_lblText4");
            const lblText5 = document.getElementById("ContentPlaceHolder1_lblText5");
            const lblText6 = document.getElementById("ContentPlaceHolder1_lblText6");
            const lblText7 = document.getElementById("ContentPlaceHolder1_lblText7");
            const lblText8 = document.getElementById("ContentPlaceHolder1_lblText8");
            const lblText9 = document.getElementById("ContentPlaceHolder1_lblText9");
            const lblText10 = document.getElementById("ContentPlaceHolder1_lblText10");

            lblText1.value = divText1.innerText;
            lblText2.value = divText2.innerText;
            lblText3.value = divText3.innerText;
            lblText4.value = divText4.innerText;
            lblText5.value = divText5.innerText;
            lblText6.value = divText6.innerText;
            lblText7.value = divText7.innerText;
            lblText8.value = divText8.innerText;
            lblText9.value = divText9.innerText;
            lblText10.value = divText10.innerText;
            alert("Başarıyla Cevap Verildi");
        }
    </script>
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

