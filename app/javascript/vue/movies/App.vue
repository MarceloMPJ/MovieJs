<template>
  <div id="moviejs" class="row">
     <Movies :movie="movie"/>
     <MovieBody :movie="movie"/>
     <Favorites/>
  </div>
</template>

<script lang="coffee">
import Movies        from './components/Movies'
import MovieBody     from './components/MovieBody'
import Favorites     from './components/Favorites'

export default
  data: () => {
    movie:
      title: String
      director: String
      release_year: Number
      description: String
  }
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
