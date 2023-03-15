#!/bin/bash

function validate_schema {
  echo 'Validate current openapi.yaml'
  java -jar ./docs/dist/openapi_generator/openapi-generator-cli-6.3.0.jar validate -i ./docs/spec/openapi.yaml
}

function generate_resolved_schema {
  echo 'Delete current openapi.json file'
  rm ./docs/openapi.json
  echo 'Generate new openapi.json file from openapi.yaml and outputs into docs/ folder'
  java -jar ./docs/dist/openapi_generator/openapi-generator-cli-6.3.0.jar generate -g openapi -i ./docs/spec/openapi.yaml -o docs/
}

function generate_docs {
  echo 'Generate asciidoc from docs/openapi.json'
  java -jar ./docs/dist/openapi_generator/openapi-generator-cli-6.3.0.jar generate -g asciidoc -i docs/openapi.json -o docs/generated_docs
  echo 'Generate pdf from asciidoc for google docs collaboration to be imported into google docs'
  bundle exec asciidoctor-pdf docs/generated_docs/index.adoc
}

if validate_schema && generate_resolved_schema && generate_docs; then
    echo 'Compilation completed successfully'
else
    echo 'Compilation failed. Please fix errors.'
fi


