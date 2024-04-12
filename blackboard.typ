// Inspired by https://github.com/kmaed/kmbeamer

#let colors = (
  gray33: rgb("#333333"),

  midnightblue: rgb("#00152D"),
  navyblue: rgb("#1F2F54"),
  ultramarine: rgb("#4B64A1"),
  water: rgb("#A9CEEC"),

  sepia: rgb("#4A3B2A"),
  brown: rgb("#763900"),
  goldbrown: rgb("#C47600"),
  satsuma: rgb("#FA8000"),
  snow: rgb("#F1F1F1"),
  whiteee: rgb("#EEEEEC"),
  midyellow: rgb("#FAD43A"),
  lemonchiffon: rgb("#FFFACD"),
  gold: rgb("#FFD700"),
  concrete: rgb("#F3F3F3"),
  denim: rgb("#1776C7"),
  tamarillo: rgb("#A31515"),
  jellybean: rgb("#247690"),

  deepgreen: rgb("#005731"),
  bottlegreen: rgb("#264435"),
  tokiwa: rgb("#357C4C"),
  indigo: rgb("#234794"),
  chartreuse: rgb("#7FFF00"),

  kerria: rgb("#FFA500"),
  vermilion: rgb("#ED514E"),
  madder: rgb("#B22D35"),
  maroon: rgb("#682A2B"),
  tomato: rgb("#FF6347")
)

#set page(
  width: 128mm,
  height: 96mm,
  margin: 0pt,
  background: [
    #grid(
      rows: (2mm,) * 48,
      columns: (2mm,) * 64,
      fill: colors.at("bottlegreen"),
      stroke: (paint: colors.at("bottlegreen").darken(10%), thickness: 0.2mm)
    )
  ]
)

// outer
#let outer-tl = (0mm, 0mm)
#let outer-tr = (128mm, 0mm)
#let outer-bl = (0mm, 96mm)
#let outer-br = (128mm, 96mm)

// middle
#let mid-tl-1 = (1mm, 1mm)
#let mid-tr-1 = (127mm, 1mm)
#let mid-bl-1 = (1mm, 95mm)
#let mid-br-1 = (127mm, 95mm)

// middle
#let mid-tl-2 = (3mm, 3mm)
#let mid-tr-2 = (125mm, 3mm)
#let mid-bl-2 = (3mm, 93mm)
#let mid-br-2 = (125mm, 93mm)

// inner
#let inner-tl = (4mm, 4mm)
#let inner-tr = (124mm, 4mm)
#let inner-bl = (4mm, 92mm)
#let inner-br = (124mm, 92mm)

// outer
#path(
  fill: colors.at("kerria"),
  outer-tl,
  outer-tr,
  mid-tr-1,
  mid-tl-1,
  mid-bl-1,
  outer-bl
)

#place(
  top + left,
  dx: 0mm,
  dy: 0mm
)[
  #path(
    fill: colors.at("brown"),
    outer-bl,
    mid-bl-1,
    mid-br-1,
    mid-tr-1,
    outer-tr,
    outer-br
  )
]


// middle 
#place(
  top + left,
)[
  #path(
    fill: colors.at("goldbrown"),
    mid-tl-1,
    mid-tr-1,
    mid-tr-2,
    mid-tl-2,
    mid-bl-2,
    mid-bl-1
  )
]

#place(
  top + left,
)[
  #path(
    fill: colors.at("goldbrown"),
    mid-bl-1,
    mid-bl-2,
    mid-br-2,
    mid-tr-2,
    mid-tr-1,
    mid-br-1
  )
]

// outer
#place(
  top + left
)[
  #path(
    fill: colors.at("brown"),
    mid-tl-2,
    mid-tr-2,
    inner-tr,
    inner-tl,
    inner-bl,
    mid-bl-2
  )
]

#place(
  top + left,
)[
  #path(
    fill: colors.at("kerria"),
    mid-bl-2,
    inner-bl,
    inner-br,
    inner-tr,
    mid-tr-2,
    mid-br-2
  )
]

