<template>
  <div class="hello">
    <h2>La nouvelle application de création de voyages</h2>
    <p style="text-align:center;">
      Bacle Visits est un projet mené dans le cadre du DUT Informatique préparé à l'Université Claude Bernard Lyon 1.
    </p>
    <h3>Trailer</h3>
    <div class="video">
      <iframe src="https://www.youtube.com/embed/YYRwBxx2GbQ" title="Bacle Visits YouTube presentation video" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <p></p>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
  name: 'HelloWorld',
  props: {
    msg: String
  }
})
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
