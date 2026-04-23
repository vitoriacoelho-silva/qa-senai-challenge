# Desafio Técnico QA – SENAI

# Autora
Vitória Coelho

---

# Objetivo
Realizar análise, criação de cenários de teste e automação de um fluxo simples em um sistema real.

---

# Funcionalidade testada
Busca e visualização de cursos no portal SENAI-SP.

---

# Tipos de teste realizados
- Teste exploratório
- Testes manuais
- Teste automatizado (Cypress)

---

# Cenários de teste

# Caminho feliz
- Acessar a página de cursos
- Visualizar listagem de cursos
- Validar carregamento da página

# Cenários de erro
- Página não carregar corretamente
- Elementos não exibirem conteúdo

# Cenários de exceção
- Lentidão no carregamento
- Conteúdo parcial sendo exibido

# Cenário: Acessar página de cursos
  Dado que o usuário acessa a página de cursos do SENAI-SP
  Quando a página é carregada
  Então a URL deve conter "/cursos"

# Cenário: Validar conteúdo básico da página
  Dado que o usuário acessa a página de cursos do SENAI-SP
  Quando a página é exibida
  Então o body deve estar visível
  E deve existir na tela o texto "curso" ou "cursos"

---

# Automação

Foi implementado um teste automatizado utilizando Cypress para validar:

- Acesso à página de cursos
- Carregamento da página
- Presença de conteúdo essencial

---

# Como executar o projeto

```bash
npm install
npx cypress open

# Evidência

Teste automatizado executando com sucesso:


