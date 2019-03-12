<template>
  <div class="group-header">
    <div class="card">
      <div class="card-header" :id="'heading-' + group_id">
        <h5 class="mb-0">
          <button class="btn btn-link" data-toggle="collapse" :data-target="'#collapse-' + group_id" aria-expanded="false" :aria-controls="'collapse-' + group_id">
            {{title}}
          </button>
        </h5>
      </div>

      <div :id="'collapse-' + group_id" class="collapse" :aria-labelledby="'heading-' + group_id" data-parent=".group-header">
        <FavoriteMovie v-for="movie in movies" :photo_url="movie.photo_url" :title="movie.title" :director="movie.director" :release_year="movie.release_year" :description="movie.description" />
      </div>
    </div>
  </div>
</template>

<script lang="coffee">
  import FavoriteMovie from './FavoriteMovie'

  export default
    name: "FavoriteGroup"
    props: ["title", "group_id", "movies"]
    data: () => {}
    components: {
      FavoriteMovie
    }
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
