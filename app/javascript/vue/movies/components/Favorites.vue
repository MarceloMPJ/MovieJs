<template>
  <div class="favorites">
    <div class="favorites-header">
      <span class="fav-text">Favoritos</span>
      <div class="group-by">
        <span>Agrupar por</span>
        <select>
          <option value="director">Diretor</option>
          <option value="gender">Genero</option>
          <option value="date">Data de lançamento</option>
        </select>
      </div>
    </div>
    <div class="favorites-content">
      <FavoriteGroup :title="'Ação'" :group_id="1"/>
      <FavoriteGroup :title="'Aventura'" :group_id="2"/>
      <FavoriteGroup :title="'Fantasia'" :group_id="3"/>
      <FavoriteGroup :title="'Sci-fi'" :group_id="4"/>
    </div>
  </div>
</template>

<script lang="coffee">
  import FavoriteGroup from './FavoriteGroup'

  export default
    data: () => {}
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
