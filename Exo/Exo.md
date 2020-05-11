---
title: "Hello Prerendered Shiny"
output: html_document
runtime: shiny
---


```
## Error in sliderInput("bins", "Number of bins:", min = 1, max = 50, value = 30): impossible de trouver la fonction "sliderInput"
```

```
## Error in plotOutput("distPlot"): impossible de trouver la fonction "plotOutput"
```


```r
output$distPlot <- renderPlot({
  x <- faithful[, 2]  # Old Faithful Geyser data
  bins <- seq(min(x), max(x), length.out = input$bins + 1)
  hist(x, breaks = bins, col = 'darkgray', border = 'white')
})
```

```
## Error in renderPlot({: impossible de trouver la fonction "renderPlot"
```
