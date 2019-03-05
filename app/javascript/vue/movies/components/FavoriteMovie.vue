<template>
  <div class="favorite-movie row">
    <div class="col-5 movie-image">
      <img src="https://m.media-amazon.com/images/M/MV5BMjQ1MzcxNjg4N15BMl5BanBnXkFtZTgwNzgwMjY4MzI@._V1_SY1000_CR0,0,675,1000_AL_.jpg">
    </div>
    <div class="col-7">
      <b>Filme dos canalhas (1994)</b>
      <p>Jair Bolsonaro</p>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco.</p>
    </div>
  </div>
</template>

<script lang="coffee">
  export default
    name: "FavoriteMovie"
    props: []
</script>

<style lang="scss" scoped>
  .favorite-movie {
    margin: 0px;
    border: 2px solid #afafaf;
    border-bottom: none;
    .movie-image {
      padding: 0px;
      img {
        max-width: 180px;
      }
    }
    p {
      text-align: justify;
    }
  }
</style>
