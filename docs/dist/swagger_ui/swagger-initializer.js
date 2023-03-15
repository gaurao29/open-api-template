window.onload = function() {
  //<editor-fold desc="Changeable Configuration Block">

  window.ui = SwaggerUIBundle({
    // This is file available in /docs folder
    url: "openapi.json",
    // Disable validation by online validator https://validator.swagger.io/
    validatorUrl : false,
    dom_id: '#swagger-ui',
    deepLinking: true,
    presets: [
      SwaggerUIBundle.presets.apis,
      SwaggerUIStandalonePreset
    ],
    plugins: [
      SwaggerUIBundle.plugins.DownloadUrl
    ],
    layout: "StandaloneLayout"
  });
  //</editor-fold>
};
