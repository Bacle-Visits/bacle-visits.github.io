<template>
    <a href="/"><img alt="Bacle logo" class="logo" src="../assets/logo.png"></a>
    <section class="menu menu--circle">
        <input type="checkbox" id="menu__active"/>
        <label for="menu__active" class="menu__active">
            <div class="menu__toggle">
              <div class="icon">
                  <div class="hamburger"></div>
              </div>
            </div>
            <!--input type="radio" name="arrow--up" id="degree--up-0"/>
            <input type="radio" name="arrow--up" id="degree--up-1" />
            <input type="radio" name="arrow--up" id="degree--up-2" /-->
            <div class="menu__listings">
            <ul class="circle">
              <li>
                <div class="placeholder">
                    <div class="upside">
                    <button class="button" id="download_app"><i class="fa fa-download"></i></button>
                    </div>
                </div>
              </li>
              <li>
                <div class="placeholder">
                    <div class="upside">
                      <a href="#" @click="showModal = true" class="button"><i class="fa fa-calendar-alt"></i></a>
                    </div>
                </div>
              </li>
              <li>
                <div class="placeholder">
                    <div class="upside">
                      <a href="#" class="button"><i class="fa fa-commenting"></i></a>
                    </div>
                </div>
              </li>
            </ul>
            </div>
            <!--div class="menu__arrow menu__arrow--top">
              <ul>
                <li>
                <label for="degree--up-0"><div class="arrow"></div></label>
                <label for="degree--up-1"><div class="arrow"></div></label>
                <label for="degree--up-2"><div class="arrow"></div></label>
                </li>
              </ul>
            </div-->
        </label>
    </section>

    <div class="group" id="page-wrap">
        <div id="inner-wrap">
            <h1 class="title">Bacle Visits</h1>
        </div>
    </div>
    <vue-final-modal v-model="showModal">
      <div id="modal">
        <div>
          <h2>Calendrier du projet</h2>
          <div id="vuetimeline">
            <section class="timeline">
              <ul>
                <li v-for="i in items" :key="i.date1">
                  <span></span>
                  <div>{{i.title}}</div>
                  <div>{{i.subtitle1}}</div>
                  <div>{{i.subtitle2}}</div>
                  <div class="year">
                    <span>{{ i.date1 }}</span>
                    <span>{{ i.date2 }}</span>
                  </div>
                </li>
              </ul>
            </section>
          </div>
        </div>
      </div>
    </vue-final-modal>
</template>

<script>
import { VueFinalModal } from 'vue-final-modal'

export default {
  components: {
    VueFinalModal
  },
  data: () => ({
    showModal: true,
    items: [
      {
        date1: 'Dec. 2020',
        date2: 'Juin 2021',
        title: 'Émergence du projet',
        subtitle1: 'Réalisation du Dossier de Conception Logiciel',
        subtitle2: 'IUT Lyon 1'
      },
      {
        date1: 'Juil. 2021',
        date2: 'Dec. 2021',
        title: 'Émergence du projet',
        subtitle1: 'Réalisation du Dossier de Conception Logiciel',
        subtitle2: 'IUT Lyon 1'
      },
      {
        date1: 'Jan. 2022',
        date2: 'Mai 2022',
        title: 'Émergence du projet',
        subtitle1: 'Réalisation du Dossier de Conception Logiciel',
        subtitle2: 'IUT Lyon 1'
      },
      {
        date1: 'Jan. 2022',
        date2: 'Mai 2022',
        title: 'Émergence du projet',
        subtitle1: 'Réalisation du Dossier de Conception Logiciel',
        subtitle2: 'IUT Lyon 1'
      }
    ]
  }),
  mounted () {
    document.getElementById('download_app').addEventListener('click', function () {
      if (navigator.userAgent.toLowerCase().indexOf('android') > -1) {
        window.open('http://play.google.com/store/apps/details?id=com.bacle')
      } else if (navigator.userAgent.toLowerCase().indexOf('iphone') > -1) {
        window.open('https://apps.apple.com/fr/app/bacle/id1605219927', '_blank').focus()
      } else {
        alert('L\'application n\'est pas encore disponible pour les plateformes autres qu\'Android et iOS')
      }
    })
  }
}
</script>

<style lang="css">@import url("https://fonts.googleapis.com/css?family=Montserrat");
#vuetimeline *, #vuetimeline *::before, #vuetimeline *::after {
  box-sizing: border-box;
  font-family: "Montserrat", sans-serif;
  color: #fff;
}

#vuetimeline {
  width: 100%;
  height: inherit;
  margin: 1em auto;
  background: #2E4A62;
  border-radius: 1em;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
}

.timeline {
  padding: 5px 45px;
  margin:auto;
  overflow-y: scroll;
  overflow-x: hidden;
  height:64vh;
}
.timeline ul {
  position: relative;
  width:fit-content;
  margin:auto;
}
.timeline ul::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
}
.timeline li {
  position: relative;
  margin: 60px 80px;
  margin-right: 0;
  width: fit-content;
  list-style: none;
  line-height: 25px;
}
.timeline li > span {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  left: -25px;
  height: 110%;
  border: 2px solid #fff;
  border-radius: none;
}
.timeline li > span::before, .timeline li > span::after {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 22px;
  height: 22px;
  border: 3px solid #fff;
  border-radius: 50%;
  left: -11px;
  background: #4e9bfa;
}
.timeline li > span::before {
  top: -15px;
}
.timeline li > span::after {
  top: calc(100% - 5px);
}
.timeline li div:nth-child(2) {
  font-size: 1.2em;
}
.timeline li div:nth-child(3), .timeline li div:nth-child(4) {
  font-size: 1em;
  font-style: italic;
  color: #bfbfbf;
}
.timeline li .year span {
  position: absolute;
  font-size: 1em;
  left: -150px;
  width: 100px;
  text-align: right;
}
.timeline li .year span:first-child {
  top: -15px;
}
.timeline li .year span:last-child {
  top: 100%;
}
#modal{
  width:100%;
  height:100%;
}
#modal > div{
  border-radius: 1em;
  margin: 0;
  padding:1em 5vw;
  position: absolute;
  top: 50%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  width:fit-content;
  height:80%;
  background-color: white;
}
#vuetimeline {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  width:100%;
  color: #2c3e50;
}

h1,h2,h3{
  text-align: center;
}

@media (max-width: 540px){
    .title{
        margin-top: 2em;
    }
}

.logo{
    position: absolute;
    border-bottom-left-radius: 20px;
    top:0;
    right:0;
    width: 90px;
    height: 90px;
}
.icon {
  position: absolute;
  top: 70%;
  left: 70%;
  transform: translateX(-50%) translateY(-50%);
}
.hamburger {
  content: ' ';
  position: relative;
  width: 20px;
  border: 2px solid #fff;
  border-radius: 5px;
  transition: all 0.333333333333333s ease;
}
.hamburger:after,
.hamburger:before {
  content: ' ';
  position: absolute;
  left: 50%;
  width: 100%;
  border: 2px solid #fff;
  border-radius: 5px;
  transform: translateX(-50%);
  transition-property: top, bottom, transform;
  transition-duration: 1s, 1s, 0.25s;
}
.hamburger:after {
  top: -8px;
}
.hamburger:before {
  bottom: -8px;
}
.menu {
  pointer-events: none;
}
.menu--circle {
  position: absolute;
  z-index: 13;
  width: 340px;
  height: 243.33333333333334px;
  overflow: hidden;
}
.menu__active {
  position: relative;
}
.menu__toggle {
  z-index: 11;
  position: absolute;
  top: -100px;
  left: -100px;
  width: 200px;
  height: 200px;
  background-color: #392338;
  border-radius: 50%;
  transition: transform 1.3s;
  cursor: pointer;
  pointer-events: auto;
}
.menu__listings {
  z-index: 10;
  position: absolute;
  top: -200px;
  left: -200px;
  width: 400px;
  height: 400px;
  border-radius: 50%;
  transform: scale(0.1) rotate(150deg);
  transition: transform 1s;
}
.menu__arrow {
  visibility: hidden;
  position: absolute;
}
.menu__arrow input[type="radio"] {
  position: fixed;
  top: -99999px;
  left: -99999px;
}
.menu__arrow ul {
  padding: 0;
  margin: 0;
  list-style: none;
}
.menu__arrow--top {
  top: 0.5em;
  left: 220px;
}
.menu__arrow--top .arrow {
  transform: rotate(-45deg);
}
.menu__arrow--left {
  top: 220px;
  left: 0.5em;
}
.menu__arrow--left .arrow {
  transform: rotate(-135deg);
}
.arrow {
  width: 20px;
  height: 20px;
  border-right: 6.666666666666667px solid #392338;
  border-top: 6.666666666666667px solid #392338;
  border-radius: 3px;
  transition: border-color 0.3s;
  cursor: pointer;
  pointer-events: auto;
}
.arrow:hover {
  border-color: #ff947f;
  transition: border-color 0.3s;
}
.circle {
  position: relative;
  padding: 0;
  margin: 0;
  height: 100%;
  width: 100%;
  background-color: #392338;
  border-radius: 50%;
  transform: rotate(70deg);
  overflow: hidden;
  list-style: none;
}
.circle li {
  position: absolute;
  top: 0;
  right: 0;
  width: 50%;
  height: 50%;
  transform-origin: 0 100%;
}
.circle li .placeholder {
  position: absolute;
  left: -100%;
  padding-top: 1.5em;
  width: 200%;
  height: 200%;
  text-align: center;
  transform: skewY(54deg) rotate(18deg);
}
.circle li .placeholder .upside {
  transform: rotate(180deg);
}
.circle li .placeholder a {
  text-decoration: none;
  pointer-events: auto;
}
.circle li .placeholder button {
  pointer-events: auto;
}
.circle li .placeholder .button {
  font-size: 2.3em;
  background-color: transparent;
  border: none;
  color: #fff;
  cursor: pointer;
}
.circle li:nth-child(1) {
  transform: rotate(0deg) skewY(-54deg);
  background-color: #392338;
}
.circle li:nth-child(2) {
  transform: rotate(36deg) skewY(-54deg);
  background-color: #392338;
}
.circle li:nth-child(3) {
  transform: rotate(72deg) skewY(-54deg);
  background-color: #392338;
}
.circle li:nth-child(4) {
  transform: rotate(108deg) skewY(-54deg);
  background-color: #392338;
}
.circle li:nth-child(5) {
  transform: rotate(144deg) skewY(-54deg);
  background-color: #392338;
}
.circle li:nth-child(6) {
  transform: rotate(180deg) skewY(-54deg);
  background-color: #392338;
}
.circle li:nth-child(7) {
  transform: rotate(216deg) skewY(-54deg);
  background-color: #392338;
}
.circle li:nth-child(8) {
  transform: rotate(252deg) skewY(-54deg);
  background-color: #392338;
}
.circle li:nth-child(9) {
  transform: rotate(288deg) skewY(-54deg);
  background-color: #392338;
}
.circle li:nth-child(10) {
  transform: rotate(324deg) skewY(-54deg);
  background-color: #392338;
}
#menu__active {
  position: fixed;
  top: -99999px;
  left: -99999px;
}
#menu__active:checked ~ label .menu__listings {
  transform: rotate(10deg) scale(1);
  transition: transform 1s;
}
#menu__active:checked ~ label .menu__toggle {
  background-color: #fff;
  transition: all 1s;
}
#menu__active:checked ~ label .hamburger {
  border-color: transparent;
  transition: border-color 0.333333333333333s;
}
#menu__active:checked ~ label .hamburger:after {
  top: -2px;
  border-color: #392338;
  transform: translateX(-50%) rotate(45deg);
  transition-property: top, transform;
  transition-duration: 0.25s, 1s;
}
#menu__active:checked ~ label .hamburger:before {
  bottom: -2px;
  border-color: #392338;
  transform: translateX(-50%) rotate(-45deg);
  transition-property: bottom, transform;
  transition-duration: 0.25s, 1s;
}
#menu__active:checked ~ label .button:hover {
  color: #c1264e;
}
#menu__active:checked ~ label .menu__arrow {
  visibility: visible;
  transition: all 1s 1.111111111111111s;
}
#menu__active:checked ~ label .menu__arrow--top label {
  display: none;
}
#menu__active:checked ~ label .menu__arrow--top label[for="degree--up-0"] {
  display: block;
}
#menu__active:checked ~ label #degree--up-0:checked ~ .menu__listings {
  transform: rotate(116deg);
}
#menu__active:checked ~ label #degree--up-0:checked ~ .menu__arrow--top label {
  display: none;
}
#menu__active:checked ~ label #degree--up-0:checked ~ .menu__arrow--top label[for="degree--up-1"] {
  display: block;
}
#menu__active:checked ~ label #degree--up-1:checked ~ .menu__listings {
  transform: rotate(224deg);
}
#menu__active:checked ~ label #degree--up-1:checked ~ .menu__listings ~ .menu__arrow--top label {
  display: none;
}
#menu__active:checked ~ label #degree--up-1:checked ~ .menu__listings ~ .menu__arrow--top label[for="degree--up-2"] {
  display: block;
}

    @media screen and (max-width: 600px) {
        h1{
            font-size: 12vw !important;
        }
    }
    h1{
        color: #203454;
        font-size: 7vw;
        margin-bottom: 0;
    }
    a:link{
        text-decoration:none !important;
    }
    .centered {
        margin: 0;
        position: absolute;
        top: 25%;
        right: 50%;
        transform: translate(50%, -50%);
    }
    .waves{
        top:-10px;
        position: relative;
        width:100%;
    }
    .waves>path {
        -webkit-animation: a 17390ms ease-in-out infinite alternate-reverse both;
        -moz-animation: a 17390ms ease-in-out infinite alternate-reverse both;
        -ms-animation: a 17390ms ease-in-out infinite alternate-reverse both;
        -o-animation: a 17390ms ease-in-out infinite alternate-reverse both;
        animation: a 17390ms ease-in-out infinite alternate-reverse both;
        -webkit-animation-timing-function: cubic-bezier(.25, 0, .75, 1);
        -moz-animation-timing-function: cubic-bezier(.25, 0, .75, 1);
        -ms-animation-timing-function: cubic-bezier(.25, 0, .75, 1);
        -o-animation-timing-function: cubic-bezier(.25, 0, .75, 1);
        animation-timing-function: cubic-bezier(.25, 0, .75, 1);
        -webkit-will-change: transform;
        -moz-will-change: transform;
        -ms-will-change: transform;
        -o-will-change: transform;
        will-change: transform
    }

    .waves>path:nth-of-type(1) {
        -webkit-animation-duration: 20580ms;
        -moz-animation-duration: 20580ms;
        -ms-animation-duration: 20580ms;
        -o-animation-duration: 20580ms;
        animation-duration: 20580ms
    }

    .waves>path:nth-of-type(2) {
        -webkit-animation-delay: -2690ms;
        -moz-animation-delay: -2690ms;
        -ms-animation-delay: -2690ms;
        -o-animation-delay: -2690ms;
        animation-delay: -2690ms;
        -webkit-animation-duration: 13580ms;
        -moz-animation-duration: 13580ms;
        -ms-animation-duration: 13580ms;
        -o-animation-duration: 13580ms;
        animation-duration: 13580ms
    }

    g>path:nth-of-type(1) {
        -webkit-animation-delay: -820ms;
        -moz-animation-delay: -820ms;
        -ms-animation-delay: -820ms;
        -o-animation-delay: -820ms;
        animation-delay: -820ms;
        -webkit-animation-duration: 10730ms;
        -moz-animation-duration: 10730ms;
        -ms-animation-duration: 10730ms;
        -o-animation-duration: 10730ms;
        animation-duration: 10730ms
    }

    .waves>path:nth-of-type(1),
    g>path:nth-of-type(2) {
        -webkit-animation-direction: alternate;
        -moz-animation-direction: alternate;
        -ms-animation-direction: alternate;
        -o-animation-direction: alternate;
        animation-direction: alternate
    }

    @-webkit-keyframes a {
        0% {
            -webkit-transform: translateX(-750px);
            transform: translateX(-750px)
        }

        100% {
            -webkit-transform: translateX(-20px);
            transform: translateX(-20px)
        }
    }

    @-moz-keyframes a {
        0% {
            -moz-transform: translateX(-750px);
            transform: translateX(-750px)
        }

        100% {
            -moz-transform: translateX(-20px);
            transform: translateX(-20px)
        }
    }

    @-ms-keyframes a {
        0% {
            -ms-transform: translateX(-750px);
            transform: translateX(-750px)
        }

        100% {
            -ms-transform: translateX(-20px);
            transform: translateX(-20px)
        }
    }

    @-o-keyframes a {
        0% {
            -o-transform: translateX(-750px);
            transform: translateX(-750px)
        }

        100% {
            -o-transform: translateX(-20px);
            transform: translateX(-20px)
        }
    }

    @keyframes a {
        0% {
            -webkit-transform: translateX(-750px);
            -moz-transform: translateX(-750px);
            -ms-transform: translateX(-750px);
            -o-transform: translateX(-750px);
            transform: translateX(-750px)
        }

        100% {
            -webkit-transform: translateX(-20px);
            -moz-transform: translateX(-20px);
            -ms-transform: translateX(-20px);
            -o-transform: translateX(-20px);
            transform: translateX(-20px)
        }
    }
</style>
