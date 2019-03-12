<template>
  <div id="moviejs" class="row">
     <Movies :movies="movies" :movie="movie"/>
     <MovieBody :movie="movie"/>
     <Favorites :favorites="movies"/>
  </div>
</template>

<script lang="coffee">
import Movies        from './components/Movies'
import MovieBody     from './components/MovieBody'
import Favorites     from './components/Favorites'

export default
  data: () => {
    movies: Array
    movie:
      type: Object
      director: String
      release_year: Number
      description: String
      photo_url: String
      youtube_id: String
      selected: false
  }
  created: ->
    $.ajax
      type: "GET"
      url: "/movies.json"
      success: (movies) => @movies = movies
  components: {
    Movies,
    MovieBody,
    Favorites
  }
</script>

<style lang="scss" scoped>
#moviejs {
  width: calc(100% - 30px);
  height: auto;
  float: left;
  position: relative;
  padding: 0;
  margin: 0 15px;
  margin-top: 50px;
}
</style>
