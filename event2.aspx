<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="event2.aspx.cs" Inherits="event2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .kelimeBox {
            display: grid;
            /* padding: 20px; */
            /* background-color: red; */
            width: 100%;
            /* position: absolute; */
            /* left: 0; */
            /* right: 0; */
            /* text-align: center; */
            /* width: 100%; */
        }

        .boxBtn {
            margin: 10px;
            /* width: 100%; */
            background-color: #7650e0;
            border-color: white;
            border-style: revert;
            width: 200%;
            color: white;
            font-size: 22px;
        }

        .falseAnswer {
            background-color: red;
        }

        .trueAnswer {
            background-color: green;
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
                                    <p>
                                        Birazdan karşına gelcek kelimelerden bir tanesi diğer kelimerle ilgisiz. Bu ilgisiz kelimeyi bulabilir misin?
                                    </p>
                                    <p><strong>Hazırsan "BAŞLA" butonuna bas</strong></p>
                                </div>
                                <div id="need-job-slide-id" class="need-job-slide owl-carousel">
                                </div>
                            </div>
                            <div class="actions">
                                <ul>
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
                            <div class="wizard-inner-box">
                                <div class="inner-title text-center">

                                    <div class="counter" data-animation>
                                        <svg id="tracker" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg">
                                            <circle id="outer_circle" class="st0" cx="50%" cy="50%" r="var(--outer-radius, 2)" fill="none" stroke="#744edc" />
                                            <circle id="circle" class="circle_animation" cx="50%" cy="50%" r="var(--radius, 1)" stroke="#744edc" fill="none" />
                                            <circle id="inner_circle" class="st0" cx="50%" cy="50%" r="var(--inner-radius, 0.5)" fill="none" stroke="#744edc" />
                                        </svg>
                                        <span data-repetition=""></span>
                                    </div>
                                    <br />
                                    <br />
                                    <br />

                                    <h3>İlgisiz olan kelimeyi seç!</h3>
                                </div>
                            </div>
                            <div class="details-form-area">
                                <div class="row" style="display: grid; position: absolute; left: 0; right: 10%; place-content: center;" id="sorubir">
                                    <div class="kelimeBox">
                                        <asp:Button runat="server" ID="btn1" CssClass="boxBtn" Text="Kazanç" OnClientClick="return false"/>
                                        <asp:Button runat="server" ID="btn2" CssClass="boxBtn" Text="Gider" OnClientClick="return false"/>
                                        <asp:Button runat="server" ID="btn3" CssClass="boxBtn" Text="Harcama" OnClientClick="return false" />
                                        <asp:Button runat="server" ID="btn4" CssClass="boxBtn" Text="Tüketim"  OnClientClick="return false"/>
                                        <asp:Button runat="server" ID="btn5" CssClass="boxBtn" Text="Birikim"  OnClientClick="return false"/>
                                    </div>
                                </div>
                                <div class="row" style="display: none; position: absolute; left: 0; right: 10%; place-content: center;" id="soruiki">
                                    <div class="kelimeBox">
                                        <asp:Button runat="server" ID="btn11" CssClass="boxBtn" Text="Soru1" OnClientClick="return false"/>
                                        <asp:Button runat="server" ID="btn22" CssClass="boxBtn" Text="Soru2" OnClientClick="return false"/>
                                        <asp:Button runat="server" ID="btn33" CssClass="boxBtn" Text="Soru3" OnClientClick="return false" />
                                        <asp:Button runat="server" ID="btn44" CssClass="boxBtn" Text="Soru4"  OnClientClick="return false"/>
                                        <asp:Button runat="server" ID="btn55" CssClass="boxBtn" Text="Soru5"  OnClientClick="return false"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- step 3 -->
                </div>
            </div>
        </div>
    </div>
    <script>
        const sorubir = document.getElementById("sorubir");
        const soruiki = document.getElementById("soruiki");
        const result = document.getElementById("result");
        const buttons = document.getElementsByClassName("boxBtn");
        var allInputs = document.getElementsByTagName("input");

        const buttonPressed = e => {
            if (e.target.value == "Kazanç") {
                e.target.classList.toggle("trueAnswer");

                window.setTimeout(() => {

                    sorubir.style.display = "none";
                    soruiki.style.display = "grid";
                }, 2000);
            }
            else {
            //    for (var x = 0; x < allInputs.length; x++)
            //        if (allInputs[x].value == "Kazanç")
            //            allInputs[x].classList.toggle("trueAnswer");
                e.target.classList.toggle("falseAnswer");

                window.setTimeout(() => {

                    sorubir.style.display = "none";
                    soruiki.style.display = "grid";
                }, 2000);
            } 
        }

        for (let button of buttons) {
            button.addEventListener("click", buttonPressed);
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
            const REPETITIONS = 61;
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

