<template lang="jade">
div(class='container')
  div(class='row')
    div(class='col-3')
      Movies
    div(class='col-6')
      Form
    div(class='col-3')
      Favorites
</template>

<script lang="coffee">
import Movies    from './components/Movies'
import Form      from './components/Form'
import Favorites from './components/Favorites'

export default
  data: () => {}
  components: {
    Movies,
    Form,
    Favorites
  }
</script>

<style lang="scss" scoped>
.container {
  margin-top: 100px;
}
</style>
