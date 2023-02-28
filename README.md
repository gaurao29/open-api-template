## IDE and Extenstions Required for Editing and Previwing
- Download visual studio code from [VS Code Download page](https://code.visualstudio.com/Download) 
- Add OpenAPI (Swagger) Editor extention(navigate to extention from Activity Bar and search for OpenAPI (Swagger) Editor extention) for editing
- Install openapi-designer extention for compiled schema generation from multifile
- Once editor is installed you are ready to write your API documentation with Open API standards (3.X)

## Test Preview API documentation
- You can use preview by selecting openapi.yaml file in root folder and use (shift + option + p)
- Also you can use preview button from openapi.yaml file in root folder which renders in Swagger UI by defauls

## Test API doucmentation compile schema generation (resolved multiple file into one schema file)
- Delete already generated openapi.json file
- Open the root of your schema (opeapi.yaml in root folder)
- For MacOS cmd-shft-p > type OpenApi Designer: Compile Schema and enter - Compiles a unified schema and dereferences all $refs into a single file
- This will generate resolved json of schema into one file

## OpenAPI Documentation
- Please check v3.0.0 [Open API Docs](https://swagger.io/docs/specification/basic-structure/) to create new documentation

## Workflow for PR and Review
 - Still working