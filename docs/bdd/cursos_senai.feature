# language: pt
Funcionalidade: Busca e filtragem de cursos no portal SENAI-SP
  Como uma pessoa interessada em capacitação profissional
  Quero filtrar e explorar cursos no portal do SENAI-SP
  Para encontrar uma opção compatível com meu perfil

  Contexto:
    Dado que o usuário acessa a página de cursos do SENAI-SP

  Cenário: Carregar a página de cursos com sucesso
    Então o título da página deve conter "SENAI - Cursos SENAI-SP"
    E os filtros principais devem estar visíveis

  Cenário: Filtrar cursos por modalidade A Distância
    Quando aplicar o filtro de modalidade "A Distância"
    Então a listagem deve exibir cursos compatíveis com a modalidade selecionada

  Cenário: Limpar filtros aplicados
    Dado que o usuário aplicou filtros de área e modalidade
    Quando acionar a opção "Limpar filtros"
    Então a listagem deve voltar ao estado padrão
    E os filtros não devem permanecer selecionados

  Cenário: Visualizar unidades disponíveis para um curso
    Quando abrir a opção "Ver Unidades" de um curso listado
    Então o sistema deve exibir pelo menos uma unidade ou alternativa de interesse

  Cenário: Navegar para a próxima página da listagem
    Quando clicar em "Próximo" na paginação
    Então o sistema deve exibir a próxima página de resultados

  Cenário: Acessar o detalhe de um curso
    Quando clicar em "Saiba Mais" de um curso listado
    Então o sistema deve abrir a página de detalhe do curso

  Cenário: Combinação de filtros sem resultados
    Quando aplicar filtros sem correspondência de cursos
    Então o sistema deve informar que não há resultados
    E não deve apresentar erro visual ou técnico
