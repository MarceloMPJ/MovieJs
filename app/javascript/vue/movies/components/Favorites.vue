<template>
  <div class="favorites">
    <div class="favorites-header">
      <span class="fav-text">Favoritos</span>
      <div class="group-by">
        <span>Agrupar por</span>
        <select v-model="group_by">
          <option value=""></option>
          <option value="director">Diretor</option>
          <option value="gender">Genero</option>
          <option value="date">Data de lançamento</option>
        </select>
      </div>
    </div>
    <div class="favorites-content">
      <FavoriteGroup v-for="(value, key, index) in groups" :title="key" :group_id="index" :movies="value"/>
    </div>
  </div>
</template>

<script lang="coffee">
  import FavoriteGroup from './FavoriteGroup'

  export default
    data: () =>  return { group_by: "" }
    props:
      favorites: null
    methods:
      func_group_by: (key) ->
        @favorites.reduce((rv, x) ->
          (rv[x[key]] = rv[x[key]] || []).push(x)
          rv
        , {})
      group_by_gender: -> @func_group_by('main_genre')
      group_by_director: -> @func_group_by('director')
      group_by_date: ->@func_group_by('release_year')
    computed:
      groups: -> switch @group_by
        when 'gender' then @group_by_gender()
        when 'director' then @group_by_director()
        when 'date' then @group_by_date()
        else []
    components: {
      FavoriteGroup
    }
</script>

<style lang="scss" scoped>
  .favorites {
    max-height: calc(100vh - 100px);
    max-width: 460px;
    overflow-y: scroll;
    border: 1px solid #c7c7c7;
    border-radius: 4px;
    .favorites-header {
      background-color: black;
      color: white;
      padding: 13px 209px 7px 8px;
    }
    .fav-text {
      font-weight: bold;
      font-size: 19px;
    }
  }
</style>
