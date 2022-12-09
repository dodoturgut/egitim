<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="event4.aspx.cs" Inherits="event4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .soruBox {
            background-color: #f1f1f1;
            border-style: dashed;
            border-radius: 15px;
            text-align: center;
            padding: 20px;
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
                                       "Teknoloji" kelimesi sana neyi çağrıştırıyor? Benim aklıma "bilim" geliyor. sen de aklına gelen tüm kelimeleri 3dk içerisinde yaz. Ne kadar doğru kelime yazarsan o kadar puan alırsın !</p>
                                    <p>Mesela "kedi" kelimesini gördüğümde benim aklıma "uyku" geliyor.</p>
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
                                    <h3>Bakalım bu kelimeyi görünce aklına gelen kelimeleri teker teker yazabilecek misin?</h3>
                                </div>
                            </div>
                            <div class="details-form-area">
                                <div class="row">
                                    <div class="col-md-12 col-lg-12 col-sm-12">
                                        <div class="soruBox">
                                            <h2>Tedavi</h2>
                                        </div>
                                    </div>
                                    <br />
                                </div>
                                <div class="row">
                                    <div class="textBox" style="width: 100%; padding: 50px;">
                                        <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="txt" Style="width: 100%;"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="actions">
                                <ul>
                                    <li>
                                        <button type="submit" name="submit"><span class="js-btn-next" title="Bitir">Bitir</span></button>
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

