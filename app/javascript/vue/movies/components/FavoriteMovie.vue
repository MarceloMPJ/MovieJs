<template>
  <div class="favorite-movie row">
    <div class="col-5 movie-image">
      <img v-bind:src="photo_url">
    </div>
    <div class="col-7">
      <b>{{ title }} ({{ release_year }})</b>
      <p>{{ director }}</p>
      <p>{{ description }}</p>
    </div>
  </div>
</template>

<script lang="coffee">
  export default
    name: "FavoriteMovie"
    props: ["photo_url", "title", "director", "release_year", "description"]
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
