<template>
<div class="movie-list-div">
  <div class="order-by">
    <span>Ordenar por</span>
    <select v-model="order_by">
      <option value=""></option>
      <option value="date">Data de lançamento</option>
    </select>
  </div>
  <ul class="movie-list">
    <li v-for="movie in movies" :key="movie.id" @click="openMovie(movie)">
      <div class="movie-card">
        <b>{{movie.title}} ({{movie.release_year}})</b>
        <p>{{movie.description}}</p>
      </div>
    </li>
  </ul>
</div>
</template>

<script lang="coffee">
  export default
    name: "Movies"
    props: ["movies", "movie"]
    methods:
      openMovie: (movie) ->
        @movie.title        = movie.title
        @movie.director     = movie.director
        @movie.release_year = movie.release_year
        @movie.description  = movie.description
        @movie.photo_url    = movie.photo_url
        @movie.youtube_id   = movie.youtube_id
        @movie.selected     = true
</script>

<style lang="scss" scoped>
  .movie-list-div {
    width: 300px;
    padding-left: 25px;
    .order-by {
      background-color: black;
      color: white;
      padding: 5px;
      border-top-right-radius: 4px;
      border-top-left-radius: 4px;
      margin-bottom: -1px;
    }
    .movie-list {
      border: 1px solid #c7c7c7;
      border-radius: 4px;
      overflow-y: scroll;
      list-style: none;
      padding: 0px;
      max-height: calc(100vh - 100px);
      .movie-card {
        cursor: pointer;
        border: 1px solid #b1b1b1;
        padding: 9px 11px;
        font-size: 14px;
        p {
          font-style: italic;
          text-align: justify;
        }
      }
    }
  }
</style>
