
# sample-documentation

Experiments with documentation as code

~~~
$ nginx-start $(pwd) 8080
~~~

See: http://localhost:8080/

## Markdown

Links: 

- https://en.wikipedia.org/wiki/Markdown
- https://www.markdownguide.org/cheat-sheet/
- https://spec.commonmark.org/
- https://github.github.com/gfm/

Examples:

- [Basic Features](markdown/docs/md/features-basic.md)
- [GitHub Features](markdown/docs/md/features-github.md)

~~~
$ npm install -g marked
$ marked --help

$ npm install -g remark-cli remark-html remark-gfm
$ remark --help

$ npm install -g showdown
$ showdown --help
~~~

~~~
$ make clean && make all
~~~

See:

- http://localhost:8080/markdown/docs/generated/marked/features-basic.html
- http://localhost:8080/markdown/docs/generated/remark/features-basic.html
- http://localhost:8080/markdown/docs/generated/showdown/features-basic.html
- http://localhost:8080/markdown/docs/marked-sample.html
- http://localhost:8080/markdown/docs/remark-sample.html
- http://localhost:8080/markdown/docs/showdown-sample.html

### Marked

[Marked](https://github.com/markedjs/marked) is a Javascript Markdown to HTML converter.
It supports CommonMark and GFM.
It can be used client side (in the browser), server side (with NodeJS) or from a command line interface (CLI).
Marked does not sanitize the output HTML (but DOMPurify can be used for that).

### Remark

[Remark](https://github.com/remarkjs/remark) is a Javascript Markdown to HTML converter. 
It can generate and reformat Markdown and is powered by plugins to do all kinds of things: 
check Markdown code style, transform safely to React, add a table of contents, or compile to man pages.

Limitations: collapsed sections (`remark-collapse` does not do the job)

### Showdown.js

[Showdownjs](https://github.com/showdownjs/showdown) is a Javascript Markdown to HTML converter.
It can be used client side (in the browser) or server side (with NodeJS).

Limitations: line break by backslash, striketrough, nested lists, numbered lists using `1)`, tables

## Mermaid

Links:

- https://mermaid.js.org/intro/
- https://mermaid.js.org/intro/getting-started.html
- https://mermaid.js.org/syntax/classDiagram.html
- https://mermaid.js.org/syntax/sequenceDiagram.html
- https://mermaid.js.org/syntax/stateDiagram.html
- https://mermaid.js.org/syntax/c4.html
- https://mermaid.js.org/syntax/flowchart.html
- https://mermaid.js.org/syntax/entityRelationshipDiagram.html
- https://mermaid.js.org/syntax/mindmap.html
- https://github.com/mermaid-js/mermaid-cli

Examples: [Diagrams](mermaid/docs/diagrams.md)

~~~
$ npm install -g @mermaid-js/mermaid-cli
$ mmdc --version
$ mmdc --help
~~~

~~~
$ make clean && make all
~~~

See: http://localhost:8080/mermaid/docs/mermaid-sample.html

## PlantUML

Links:

- https://plantuml.com/en/
- https://plantuml.com/en/class-diagram
- https://plantuml.com/en/component-diagram
- https://plantuml.com/en/object-diagram
- https://plantuml.com/en/sequence-diagram
- https://plantuml.com/en/state-diagram
- https://plantuml.com/en/ie-diagram (ER)
- https://plantuml.com/en/mindmap-diagram
- https://plantuml.com/en/json
- https://plantuml.com/en/ascii-math (benötigt `batik-all` für SVG, geht daher nicht in VS Code und Eclipse)
- https://github.com/plantuml-stdlib/C4-PlantUML
- https://c4model.com/
- https://github.com/davidmoten/plantuml-maven-plugin

Examples: [Diagrams](plantuml/docs/diagrams.md)

~~~
$ mvn clean verify
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
