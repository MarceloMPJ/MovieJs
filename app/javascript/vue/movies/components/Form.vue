<template lang="jade">
div
  div(class='row')
    div(class='col-12')
      h2 Adicionar Filme
  div
    div(class='form-group')
      label Nome do Filme
      input(class='form-control')
    div(class='form-group')
      label Categoria do filme
      select(class='form-control')
        option Ação
        option Aventura
        option Comédia
        option Terror
    button(class='btn btn-success') Adicionar
</template>

<script>
</script>

<style lang="scss" scoped>
</style>
