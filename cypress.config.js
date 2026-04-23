const { defineConfig } = require('cypress');

module.exports = defineConfig({
  e2e: {
    baseUrl: 'https://www.sp.senai.br',
    viewportWidth: 1440,
    viewportHeight: 900,
    defaultCommandTimeout: 10000,
    chromeWebSecurity: false,
    video: false,
    setupNodeEvents(on, config) {
      return config;
    },
  },
});
