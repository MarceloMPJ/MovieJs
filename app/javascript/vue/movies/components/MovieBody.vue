<template>
<div class="movie">
  <div v-if="movie.selected" class="row">
    <div class="col-12">
      <div class="movie-info">
        <h2>{{movie.title}} ({{movie.release_year}})</h2>
        <label>{{movie.director}}</label>
      </div>
      <div class="movie-midia row">
        <div class="movie-image">
          <img v-bind:src="movie.photo_url">
        </div>
        <div class="movie-trailer">
          <iframe id="ytplayer" type="text/html" width="640" height="360"
            v-bind:src="youtube_link"
            frameborder="0"/>
        </div>
      </div>
      <div class="movie-description">
        <p>
          {{movie.description}}
        </p>
      </div>
    </div>
  </div>
</div>
</template>

<script lang="coffee">
  export default
    name: "MovieBody"
    props: ['movie']
    computed:
      youtube_link: -> "http://www.youtube.com/embed/#{@movie.youtube_id}"
</script>

<style lang="scss" scoped>
  .movie {
    width: calc(100vw - 806px);
    padding: 0px 36px;
    .col-12 {
      padding: 0px;
    }
    .movie-info {
      border: 1px solid #8e8e8e;
      padding: 7px 2px 1px 15px;
      background-color: #565656;
      color: white;
      border-top-left-radius: 3px;
      border-top-right-radius: 3px;
    }
    .movie-midia{
      margin-left: 0px;
      margin-right: 0px;
      background-color: black;
      height: 360px;
      .movie-image {
        display: inline-block;
        margin-right: 140px;
        img {
          max-height: 359px;
          max-width: 251px;
        }
      }
      .movie-trailer {
        display: inline-block;
      }
    }
    .movie-description {
      background-color: #e2e2e263;
      padding: 14px;
      margin-top: 14px;
      border-radius: 21px;
      border: 1px solid #d4d4d4;
      p {
        margin: 0px;
      }
    }
  }
</style>
