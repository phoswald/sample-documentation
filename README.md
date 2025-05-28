
# sample-documentation

Experiments with documentation as code

## Markdown

Links: 

- https://en.wikipedia.org/wiki/Markdown
- https://www.markdownguide.org/cheat-sheet/

Examples:

- [Basic Features](markdown/features-basic.md)
- [GitHub Features](markdown/features-github.md)

### Implementations

For a complete list, see [github.com/markdown](https://github.com/markdown/markdown.github.com/wiki/Implementations).

- [showdownjs](https://github.com/showdownjs/showdown): 
  Javascript Markdown to HTML converter, can be used client side (in the browser) or server side (with NodeJS).
- [marked](https://github.com/markedjs/marked): 
  Javascript Markdown to HTML converter, supports CommonMark and GFM.
  It can be used client side (in the browser), server side (with NodeJS) or from a command line interface (CLI).
  Marked does __not__ sanitize the output HTML.
- [remark](https://github.com/remarkjs/remark):
  Javascript Markdown to HTML converter. It can generate and reformat Markdown too.
  Powered by plugins to do all kinds of things: 
  check Markdown code style, transform safely to React, add a table of contents, or compile to man pages.

#### Showdown.js

~~~
$ cd showdown-page
$ npm init -y
$ npm install webpack webpack-cli webpack-dev-server --save-dev
$ npm run start:dev
~~~

#### Marked

~~~
$ npm install -g marked
$ echo -e "# foo\nbar" | marked

$ cd marked-page
$ npm init -y
$ npm install webpack webpack-cli webpack-dev-server --save-dev
$ npm run start:dev
~~~

## Mermaid

Links:

- https://mermaid.js.org/intro/
- https://mermaid.js.org/syntax/classDiagram.html
- https://github.com/mermaid-js/mermaid-cli

~~~
$ mvn clean verify
$ xdg-open target/classes/mermaid/generated/
~~~

~~~
$ docker run -it --rm ghcr.io/mermaid-js/mermaid-cli/mermaid-cli --help
~~~

~~~
$ nginx-start $(pwd)/src/main/webapp 8080
$ xdg-open http://localhost:8080
~~~

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
$ xdg-open xdg-open target/classes/plantuml/generated
$ xdg-open xdg-open target/classes/plantuml/generated/index.md
~~~

~~~
$ PLANTUML=~/.m2/repository/net/sourceforge/plantuml/plantuml/1.2025.2/plantuml-1.2025.2.jar
$ java -jar $PLANTUML -version
$ java -jar $PLANTUML -help
$ java -jar $PLANTUML -tpng -o output/png src/docs/
$ java -jar $PLANTUML -tsvg -o output/svg src/docs/
~~~

## IDEs

### Visual Studio Code

Markdown:

- built-in, also supports many GitHub features such as tables
- press Ctrl+Shift+V or Ctrl+K V for preview

Mermaid:

- Install the extension "Mermaid Preview" from Vlad Stirbu (vstirbu/vscode-mermaid-preview)
- Open the view "Mermaid preview: Preview diagram"
- There's no need to login in order to preview Mermaid diagrams

PlantUML:

- Install the extension "PlantUML" from jebbs (jebbs.plantuml)
- Open the view "PlantUML Preview Current Diagram"

### Eclipse

Markdown:

- built-in, but limited support

PlantUML:

- Install the plugin "PlantUML" of the Norwegian Univ. of Science and Tech
- Open the view "PlantUML"
