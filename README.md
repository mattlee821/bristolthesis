
# Improtant stuff before you start 

<style>
body {
text-align: justify}
</style>

## Set-up
I put all of my figures that i wnated to use in the `figure/` folder and then within individual chapter folders. I did a similar thing with any data i wanted to use by using the `data/` folder and then using chapters within that.

## help / advice

* [figures](https://bookdown.org/yihui/bookdown/figures.html)
* [tables](https://bookdown.org/yihui/bookdown/tables.html)
* [`kableExtra`](http://haozhu233.github.io/kableExtra/awesome_table_in_html.html)
* [`flextable`](https://davidgohel.github.io/flextable/articles/overview.html)
* [cross-referencing](https://bookdown.org/yihui/bookdown/cross-references.html)


If you want to `knit` to word and pdf/html interchangeably then there might be issues with tables specifically. To get around this I make tables for html/pdf using `kable` and `kableExtra` and for word i use `flextable`. The issue here is that `R Markdown` needs to know what document you are knitting to. To tell it you should include `doc.type <- knitr::opts_knit$get('rmarkdown.pandoc.to')` at the top of your `index.Rmd` file and just for safety (and if you wnat to knit idnividual chapters) at the top of each `.Rmd` file. You can then use an `ifelse` statement to produce tables:

```{r}
if(doc.type == "docx"){
}else{
}
```
