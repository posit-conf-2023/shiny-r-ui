Web Design for Shiny Developers
================

### posit::conf 2023

by Maya Gans and David Granjon

-----

:spiral_calendar: September 17 and 18, 2023  
:alarm_clock:     09:00 - 17:00  
:hotel:           ROOM TBD  
:writing_hand:    [pos.it/conf](http://pos.it/conf)

-----

## Website structure

This website and the embedded slides leverage Quarto (next gen Rmd). Documentation is available [here](https://quarto.org/docs/websites/) to understand the overall structure.

The most important file is `./_quarto.yml` which contains the website configuration, especially the navigation sidebar:

```yaml
sidebar:
    style: "docked"
    search: true
    contents:
      - <PART_NUMBER>-<PART_NAME>.qmd
      - ...
```

The `<PART_NAME>.qmd` file contains link to rendered slides and possibly extra material. `<PART_NUMBER>` refers to the part number and mostly here to sort files in the IDE. Most parts are already set with the proper file structure but as the agenda might evolve, it is possible that we have to create new subfolders or rearrange them.

For each part, slides are located in the `./slides/<PART_NUMBER>-<PART_NAME>/` folder. The main file is `<MAIN_FILE>.qmd` which contains the necessary structure to produce Revealjs [slides](https://quarto.org/docs/presentations/revealjs/):

```yaml
title: "<TITLE>"
subtitle: "<DATE>"
author: "<WHO>"
format: 
  revealjs:
  # CONTENT hidden for space reasons but
  # not necessary to change
```

As a result, when you want to edit a slide deck, you have to render the slides from `./slides/<PART_NUMBER>-<PART_NAME>/<MAIN_FILE>.qmd` and the website `./index.qmd` file. If you modify the website structure, you can render `./index.qmd` only. Please look at the official documentation to get general instructions for [RStudio](https://quarto.org/docs/get-started/hello/rstudio.html#rendering) and also [VSCode](https://quarto.org/docs/get-started/hello/vscode.html#render-and-preview).

Slides are also modularized to keep `./slides/<PART_NUMBER>-<PART_NAME>/<MAIN_FILE>.qmd` as short as possible. Best practice is to divide your presentation into multiple parts, create a corresponding file under `./slides/<PART_NUMBER>-<PART_NAME>/includes/_<TOPIC>.qmd` and reference it in the slides main file:

```shell
# path is relative to the slides index.qmd
{{< include ./includes/_<TOPIC>.qmd >}}
```

Our slides leverage the `simplemenu` quarto [plugin](https://github.com/Martinomagnifico/quarto-simplemenu). Everything is setup in the `<MAIN_FILE>.qmd` yaml configuration (top of the file). However, you still have to add this at the top of each `_<TOPIC>.qmd` module file:

```md
# <TOPIC> {data-stack-name="<MENU_NAME>"}

## Slide 1

## Slide 2
```

`<MENU_NAME>` will appear in the slide navigation bar.

The `./assets` folder contains any necessary resource for the website, such as JavaScript files, CSS files, images, movies and R code. It is also best practice to create subfolder for each topic. For instance `./assets/image/<PART>/` contains images for the `<PART>` topic. When you reference images within slides, the path is relative to the location of the `<MAIN_FILE>.qmd` file even when using `<include>` (you can just copy and paste the below code and replace by relevant topic and image name):

```html
<!-- How to link to images? See below
![](./../../assets/images/<PART>/<IMAGE_NAME>){fig-align="center"}
-->
```

Global images can be left under `./assets/image/` if they have to be reused between parts. 

## Contributing

To contribute to this project:

- If you are new to quarto, the first step will be to install it from [here](https://quarto.org/docs/download/).
- Clone or fork this project (if you're external, forking is the way to go). 
- Create a feature branch.
- Open a new PR (pull request) as draft: 
    - To add a new part Create a new folder in `./slides/<PART_NUMBER>-<PART_NAME>/` and add it a `<MAIN_FILE>.qmd` file. You can also copy other part folder and replace the names.
    - To add a new slide module, create a new file under `./slides/<PART_NUMBER>-<PART_NAME>/includes/_<TOPIC>.qmd`.
- Do your edits: seek for explicit commits. 
- When satisfied, change the PR draft and ask for review.
- When approved, the reviewer merges the current branch into main or any development branch.

-----

![](https://i.creativecommons.org/l/by/4.0/88x31.png) This work is
licensed under a [Creative Commons Attribution 4.0 International
License](https://creativecommons.org/licenses/by/4.0/).