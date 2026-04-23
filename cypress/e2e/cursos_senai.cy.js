describe('Portal SENAI-SP - Cursos | Smoke test', () => {
  it('deve abrir a página de cursos e exibir conteúdo básico', () => {
    cy.visit('/cursos/', { failOnStatusCode: false })

    cy.location('pathname', { timeout: 20000 }).should('include', '/cursos')
    cy.get('body', { timeout: 20000 }).should('be.visible')
    cy.contains(/curso|cursos/i, { timeout: 20000 }).should('exist')
  })
})