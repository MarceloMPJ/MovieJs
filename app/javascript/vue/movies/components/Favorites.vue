<template lang="jade">
div(class='card')
  div(class='card-head text-center')
    h3(style="padding-top: 30px") Favoritos
  hr
  div(class='card-body')
    div(class='row')
      div(class='col-12')
        input(class='form-control', type='text', placeholder='Pesquisar...')
    br
    div(class='row')
      div(class='col-12')
        div(class='form-control')
          label Agrupar por:
          select
            option Categoria
            option Inicial
    hr
    div(class='row')
      div(class='col-12')
        ul(class='list-group list-group-flush text-center')
          li(class='list-group-item')
            a(href='#') Ação (20)
            ul(class='col-12 card')
              li(class='list-group-item') Filme 1 <a href="#">★</a> <a href="#">x</a>
              li(class='list-group-item') Filme 2 <a href="#">★</a> <a href="#">x</a>
          li(class='list-group-item')
            a(href='#') Aventura (5)
          li(class='list-group-item')
            a(href='#') Comédia (4)
          li(class='list-group-item')
            a(href='#') Terror (23)
        </ul>
      </div>
    </div>
  </div>
</div>
</template>

<script lang="coffee">
</script>

<style lang="scss" scoped>
</style>
