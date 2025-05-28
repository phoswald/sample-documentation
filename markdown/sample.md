# Basic Features

These features all work with:

- GitHub
- Markdown Viewer extension for Chrome with the "gfm" option. 
- Visual Studio Code

# Heading

The standard format for headings uses a single **hash** as prefix.

## Sub-heading

The standard format for sub-headings uses **two hashes** as prefixes.

### Sub-sub-headings

#### Sub-sub-sub-headings

##### Sub-sub-sub-sub-headings

###### Sub-sub-sub-sub-sub-headings

Heading
=======

The second format for headings uses **double dashes** on the next line.

Sub-heading
-----------

The second format for sub-headings uses **dashes** on the next line.

## Paragraphs

Paragraphs are separated
by a **blank line**.

**Two spaces** at the end of a line  
produces a line break. Unfortunately they are usually not visible in text editors.

A **line break** can also be produced by a **backslash** \
at the end of the line.\
This works in GitHub, Visual Studio Code, marked and dillinger,
but **not** in Eclipse, markdownlivepreview or showdownjs.

Markdown uses backslahses (\\) to escape \*, \{ , \# and more.

## Emphasis

Emphasis, aka italics, with single *asterisks* or _underscores_.

Strong emphasis, aka bold, with double **asterisks** or __underscores__.

Combined emphasis with **asterisks and _underscores_**.

Strikethrough uses two ~~tildes~~.

## Headings can also contain ~~strikethrough~~ or `monospace` or \\ to escape \*, \{ and \# 

Horizontal rule is defined by three or more **hyphens**, aka **dashes**:

---

Horizontal rule is defined by three or more **asteriks**:

***

Horizontal rule is defined by three or more **underscores**:

___

## Lists

Bullet list (using **asteriks**):

* apples
* oranges
* pears

Bullet list (using **pluses**):

+ apples
+ oranges
+ pears

Bullet list (using **minuses**, aka **hyphens** or **dashes**):

- apples
- oranges
- pears
  - sub
  - sub

Numbered list (using `1.`):

1. lather
2. rinse
3. repeat
   1. sub
   2. sub

Numbered list (using `1)`):

1) lather
2) rinse
3) repeat
   1) sub
   2) sub

## Links

An [example link](http://example.com).

An [example link with alternative text](http://example.com "alternative text").

An [example relative link](..).

## Images

An image: ![Image](https://www.google.com/favicon.ico)

An image: ![Image](https://www.google.com/favicon.ico "alternative text")

## Code Blocks

Source code can be indented by four **spaces**:

    #!/bin/sh
    echo 'Hello, world!'

Source code can be fenced by three **backticks**:

```
#!/bin/sh
echo 'Hello, world!'
```

Source code can be fenced by **three tildes**:

~~~
#!/bin/sh
echo 'Hello, world!'
~~~

Fenced code blocks offer an alternative syntax without indentiation. 
They work in GitHub, Visual Studio Code, Eclipse, marked, dillinger and showdownjs,
but **not** markdownlivepreview (incorrect layout).

## Blockquotes

> Markdown uses email-style > characters for blockquoting.
> Quotes can also contain line breaks. \
> Quotes can also contain ~~strikethrough~~ or `monospace` or \\ to escape \*, \{ and \#.  
> Quotes can also contain lists:
> 
> - apples
> - oranges
> - pears

## Tables

**Tables** are an extension defined by GitHub Flavored Markdown. 
They also work in Visual Studio Code, marked, dillinger and showdownjs, but **not** in Eclipse or markdownlivepreview.

There must be at least 3 dashes separating each header cell.
The outer pipes (`|`) are optional, and you don't need to make the
raw Markdown line up prettily. You can also use inline Markdown.

| xx | yy       | left algined | centered          | right aligned |
|----|----------|--------------|:-----------------:|--------------:|
| a  | b        | c            | d                 | e             |
| 1  | *italic* | **bold**     | ~~strikethrough~~ | `monospace`   | 

If you add two spaces after each row, the layout is readable even if tables are not actually recognized.

xx | yy | zz  
---|----|---  
a  | b  | c  
1  | 2  | 3  

# GitHub only

See:

- https://docs.github.com/en/get-started/writing-on-github
- https://docs.github.com/de/get-started/writing-on-github/working-with-advanced-formatting/creating-diagrams
- https://docs.github.com/de/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax

## Mermaid

Here is a simple flow chart.
This also works in "Markdown Preview Enhanced" for Visual Studio Code and "Markdown Viewer" for Chrome.

```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```

## GeoJSON

You can use GeoJSON or TopoJSON syntax to create interactive maps:

```geojson
{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "id": 1,
      "properties": {
        "ID": 0
      },
      "geometry": {
        "type": "Polygon",
        "coordinates": [
          [
              [-90,35],
              [-90,30],
              [-85,30],
              [-85,35],
              [-90,35]
          ]
        ]
      }
    }
  ]
}
```

## Aufgabenlisten 

Here is a list of tasks.
This also works in "Markdown Preview Enhanced" for Visual Studio Code.

- [ ] open task
- [x] completed task

## Alerts

> [!NOTE]
> Useful information that users should know, even when skimming content.

> [!TIP]
> Helpful advice for doing things better or more easily.

> [!IMPORTANT]
> Key information users need to know to achieve their goal.

> [!WARNING]
> Urgent info that needs immediate user attention to avoid problems.

> [!CAUTION]
> Advises about risks or negative outcomes of certain actions.

## Colors

The visualization of the color is only supported in issues, pull requests, and discussions:

The background color is `#ffffff` for light mode and `#000000` for dark mode.

## Emojis

This PR looks great :+1: It's ready to merge! :shipit:

# Corner Cases

## Lists and paragraphs

Lists immediately following a paragraph work in GitHub, Visual Studio Code, Eclipse, marked, dillinger and showdownjs,
but **not** in markdownlivepreview. Remember that a paragraph should always be surrounded by empty lines, 
unlike here:
- apples
- oranges

## Lists and code blocks

Code blocks following a list are ambigous. Code is recognized in dillinger, which is probably wrong.

  - apples
  - oranges

    code
    block

This can be fixed by using a paragraph before the code block or by using fenced code blocks.

  - apples
  - oranges

.

    code
    block

  - apples
  - oranges

```
code
block
```
