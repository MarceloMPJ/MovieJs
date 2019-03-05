<template>
<div class="movie-list-div">
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
    props: ["movie"]
    data: =>
      movies: []
    methods:
      openMovie: (movie) ->
        @movie.title        = movie.title
        @movie.director     = movie.director
        @movie.release_year = movie.release_year
        @movie.description  = movie.description
    created: ->
      $.ajax
        type: "GET"
        url: "/movies.json"
        success: (movies) =>
          @movies = movies
</script>

<style lang="scss" scoped>
  .movie-list-div {
    width: 300px;
    padding-left: 25px;
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
