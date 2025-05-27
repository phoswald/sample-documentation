
# sample-documentation

Experiments with documentation as code

## PlantUML

Links:

- https://plantuml.com/en/class-diagram
- https://plantuml.com/en/object-diagram
- https://plantuml.com/en/component-diagram
- https://plantuml.com/en/sequence-diagram
- https://plantuml.com/en/state-diagram
- https://plantuml.com/en/ie-diagram (UML class diagrams with entities)
- https://plantuml.com/en/mindmap-diagram (non-UML)
- https://plantuml.com/en/json (non-UML)
- https://plantuml.com/en/ascii-math (non-UML, geht nicht in VS Code und Eclipse oder mit `-tsvg`)
- https://github.com/plantuml-stdlib/C4-PlantUML (non-UML)
- https://c4model.com/
- https://github.com/davidmoten/plantuml-maven-plugin

~~~
$ mvn clean verify
$ xdg-open target/generated-diagrams/index.md

$ PLANTUML=~/.m2/repository/net/sourceforge/plantuml/plantuml/1.2025.2/plantuml-1.2025.2.jar
$ java -jar $PLANTUML -version
$ java -jar $PLANTUML -help
$ java -jar $PLANTUML -tpng -o output/png src/docs/
$ java -jar $PLANTUML -tsvg -o output/svg src/docs/
~~~

## Mermaid

Links:

- https://mermaid.js.org/intro/
- https://mermaid.js.org/syntax/classDiagram.html
- https://github.com/mermaid-js/mermaid-cli

~~~
$ docker run -it --rm ghcr.io/mermaid-js/mermaid-cli/mermaid-cli
~~~

## IDEs

### Visual Studio Code

PlantUML:

- Install the extension "PlantUML" of jebbs (jebbs.plantuml)
- Open the view "PlantUML Preview Current Diagram"

Mermaid (TODO):

- Install the extension "Mermaid Chart" of mermaidchart.com (mermaidchart.vscode-mermaid-chart)
  The Mermaid Chart extension seamlessly integrates with the Mermaid Chart service.
  To use the extension, you need an account. 

### Eclipse

- Install the plugin "PlantUML" of the Norwegian Univ. of Science and Tech
- Open the view "PlantUML"
