<template>
  <div class="hello">
    <h2>La nouvelle application de création de voyages</h2>
    <p style="text-align:center;">
      Bacle Visits est un projet mené dans le cadre du DUT Informatique préparé à l'Université Claude Bernard Lyon 1.
    </p>
    <button id="download_big_button">
      Télécharger l'application
    </button>
    <h3>Vidéo de présentation</h3>
    <div class="video">
      <iframe src="https://www.youtube.com/embed/YYRwBxx2GbQ" title="Bacle Visits YouTube presentation video" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <p></p>
  </div>
</template>

<script>
export default {
  mounted () {
    document.getElementById('download_big_button').addEventListener('click', function () {
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

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.video {
  display:block;
  margin:auto;
  text-align: center;
  margin-top:1em;
  width:80%;
  height:auto;
}
.video iframe {
  max-width:80vh;
  width:100%;
  min-height:315px;
  height:100%;
}
$color-gray: #666;
$color-black: #000;
$stripe-height: 7px;
$btn-color: $color-gray;
$btn-background: #fff;
$btn-color-hover: #fff;
$btn-background-hover: $color-gray;
$border-color: $color-gray;
$border-color-hover: $color-black;

@mixin reset-button {
    overflow : visible;
    margin : 0;
    padding : 0;
    border : 0;
    background : transparent;
    font : inherit;
    line-height : normal;
    cursor : pointer;
    -moz-user-select : text;

    &:-moz-focus-inner {
        padding : 0;
        border : 0;
    }
}

@keyframes stripe-slide {
    0% { background-position: 0% 0; }
    100% { background-position: 100% 0; }
}

body {
    width: 100%;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    font-family: sans-serif;
}

#download_big_button {
    @include reset-button;
    display: block;
    margin:auto;
    text-decoration: none;
    text-transform: uppercase;
    padding: 16px 36px 22px;
    background-color: $btn-background;
    color: $btn-color;
    border: 2px solid $border-color;
    border-radius: 6px;
    margin-bottom: 16px;
    transition: all .5s ease;
    overflow: hidden;
    position: relative;

    &:after {
        content: '';
        display: block;
        height: $stripe-height;
        width: 100%;
        background-image: repeating-linear-gradient(
            45deg,
            $border-color,
            $border-color 1px,
            transparent 2px,
            transparent 5px
        );
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        border-top: 1px solid $border-color;
        position: absolute;
        left: 0;
        bottom: 0;
        background-size: $stripe-height $stripe-height;
    }

    &:hover {
        background-color: $btn-background-hover;
        color: $btn-color-hover;
        border-color: $border-color-hover;

        &:after {
            background-image: repeating-linear-gradient(
                45deg,
                $btn-color-hover,
                $btn-color-hover 1px,
                transparent 2px,
                transparent 5px
            );
            border-top: 1px solid $border-color-hover;
            animation: stripe-slide 12s infinite linear forwards;
        }
    }
}
h2{
  font-size: 2.2em;
}
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
