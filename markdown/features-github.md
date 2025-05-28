
# GitHub Features

See:

- https://github.github.com/gfm/
- https://docs.github.com/en/get-started/writing-on-github
- https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax
- https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting

## Mermaid

Here is a simple flow chart.
This also works in "Markdown Preview Enhanced" or "Mermaid Preview" for Visual Studio Code.

```mermaid
flowchart TD;
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

## Mathematical Expressions

**The Cauchy-Schwarz Inequality**:

$$\left( \sum_{k=1}^n a_k b_k \right)^2 \leq \left( \sum_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 \right)$$
