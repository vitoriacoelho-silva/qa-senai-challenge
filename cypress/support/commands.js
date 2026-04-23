Cypress.Commands.add('acessarPaginaCursos', () => {
  cy.visit('/cursos/')
  cy.contains('Cursos', { timeout: 15000 }).should('be.visible')
})

Cypress.Commands.add('selecionarFiltroPorTexto', (texto) => {
  cy.contains(texto, { matchCase: false })
    .scrollIntoView()
    .click({ force: true })
})