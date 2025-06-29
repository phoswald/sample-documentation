
# Basic Features

See:

- [README](../../README.md)
- https://github.github.com/gfm/

These features all work with:

- GitHub
- Markdown Viewer browser extension for Chrome with the "gfm" option. 
- Visual Studio Code
- Eclipse (**with limitations**, as described below)

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

A **line break** can be produced by **two spaces**  
at the end of a line. Unfortunately, this is usually not visible in text editors.
Or, a **line break** can also be produced by a **backslash** \
at the end of the line.

However, **Eclipse** does not support backslash for linke breaks.

Markdown uses backslahses (\\) to escape \*, \{ , \# and more.

## Emphasis

Emphasis, aka italics, with single *asterisks* or _underscores_.

Strong emphasis, aka bold, with double **asterisks** or __underscores__.

Combined emphasis with **asterisks and _underscores_**.

Strikethrough uses two ~~tildes~~.

However, **Eclipse** does not support single oder double underscores.

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
3. repeat (nesting not supported by **Eclipse**)
   1. sub
   2. sub

Numbered list (using `1)`, not supported by **Eclipse**):

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

Fenced code blocks offer an alternative syntax without indentiation. 

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

## Blockquotes

> Markdown uses email-style > characters for blockquoting.
> Quotes can also contain line breaks using two spaces.  
> Quotes can also contain line breaks using backslash. \
> Quotes can also contain ~~strikethrough~~ or `monospace` or \\ to escape \*, \{ and \#.  
> Quotes can also contain lists:
> 
> - apples
> - oranges
> - pears

However, **Eclipse** does not support backslash for linke breaks.

## Tables

**Tables** are an extension defined by GitHub Flavored Markdown.
However, **Eclipse** does not support tables.

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

## Collapsed section

<details>
<summary>Tips for collapsed sections</summary>

### You can add a header

You can add text within a collapsed section.

You can add an image or a code block, too.

```ruby
   puts "Hello World"
```

</details>

# Corner Cases

## Lists and paragraphs

Lists immediately following a paragraph work in GitHub, Visual Studio Code and Eclipse.
Remember that a paragraph should always be surrounded by empty lines, unlike here:
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
