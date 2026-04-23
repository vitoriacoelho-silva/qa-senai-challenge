# Desafio Técnico QA – SENAI

## 👩‍💻 Autora
Vitória Coelho

---

## 🎯 Objetivo
Realizar análise, criação de cenários de teste e automação de um fluxo simples em um sistema real.

---

## 🔍 Funcionalidade testada
Busca e visualização de cursos no portal SENAI-SP.

---

## 🧪 Tipos de teste realizados
- Teste exploratório
- Testes manuais
- Teste automatizado (Cypress)

---

## 🧠 Cenários de teste

### Caminho feliz
- Acessar a página de cursos
- Visualizar listagem padrão de cursos
- Aplicar filtros de busca por área (ex: Mecânica) e validar atualização da lista

### Cenários de erro
- Buscar por um termo de curso inexistente e validar a mensagem de "Nenhum resultado encontrado"
- Aplicar uma combinação de filtros que não possua cursos vinculados e validar o retorno vazio

### Cenários de exceção
- Validar o comportamento da página (exibição parcial ou mensagens de alerta) em situações de lentidão extrema no carregamento

---

## 🐞 Bugs Encontrados (Testes Exploratórios)

Durante a análise exploratória e monitoramento do console/network, foram identificados os seguintes problemas em ambiente de produção:

- **Erro de Rede (403 Forbidden):** Falha no carregamento do recurso externo de acessibilidade  
  https://cdn.equalweb.com/assets/locale/pt.json

- **Exceção JavaScript:** Erro no console apresentando a mensagem  
  "$.cookie is not a function"

---

## 🧪 Cenários em BDD

Cenário: Acessar página de cursos  
Dado que o usuário acessa a página de cursos do SENAI-SP  
Quando a página é carregada  
Então a URL deve conter "/cursos"  

Cenário: Validar conteúdo básico da página  
Dado que o usuário acessa a página de cursos do SENAI-SP  
Quando a página é exibida  
Então o body deve estar visível  
E deve existir na tela o texto "curso" ou "cursos"  

Cenário: Realizar filtro de cursos por área  
Dado que o usuário está na página de cursos do SENAI-SP  
Quando ele seleciona a área "Mecânica" nos filtros laterais  
Então a listagem deve ser atualizada exibindo apenas cursos da área escolhida  

---

## 🤖 Automação

Foi implementado um teste automatizado utilizando Cypress (Smoke Test) para validar:

- Acesso à página de cursos
- Carregamento da página
- Presença de conteúdo essencial

---

## ▶️ Como executar o projeto

npm install  
npx cypress open  

---

## 📄 Documentação

Este repositório contém:

- Cenários de teste (manuais e BDD)
- Evidências de execução
- Teste automatizado com Cypress (smoke test)

🔗 https://docs.google.com/document/d/1fBOwIm9txRbut5_vkgpY0qPdjkvs8uZTh8PZpVkfaSk/edit?usp=sharing
