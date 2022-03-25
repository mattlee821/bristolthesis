if(!require(devtools)) {
  install.packages("devtools", repos = "http://cran.rstudio.com")
  library(devtools)
  }

if(!require(bookdown)){
  devtools::install_github("rstudio/bookdown")
  library(bookdown)
  }

if(!require(thesisdown)){
  devtools::install_github("ismayc/thesisdown")
  library(thesisdown)
  }

if(!require(kableExtra)){
  devtools::install_github("haozhu233/kableExtra")
  library(kableExtra)
  }

if(!require(tinytex)){
  devtools::install_github('yihui/tinytex')
  library(tinytex)
  options(tinytex.verbose = TRUE)
  }

if(!require(flextable)){
  devtools::install_github("davidgohel/flextable")
  library(flextable)
  }

if(!require(tidyverse)){
  install.packages("tidyverse")
  library(tidyverse)
  }

if(!require(rowr)){
  devtools::install_github("cvarrichio/rowr")
  library(rowr)
}

if(!require(ggplot2)){
  install.packages("ggplot2")
  library(ggplot2)
}

if(!require(wesanderson)){
  devtools::install_github("karthik/wesanderson")
  library(wesanderson)
}

if(!require(cowplot)){
  devtools::install_github("wilkelab/cowplot")
  library(cowplot)
}

if(!require(ggdag)){
  devtools::install_github("malcolmbarrett/ggdag")
  library(ggdag)
}

if(!require(DiagrammeR)){
  install.packages("DiagrammeR")
  library(DiagrammeR)
}

if(!require(ggforestplot)){
  devtools::install_github("NightingaleHealth/ggforestplot")
  library(ggforestplot)
}

if(!require(knitr)){
  install.packages("knitr")
  library(knitr)
}

if(!require(dplyr)){
  install.packages("dplyr")
  library(dplyr)
}

