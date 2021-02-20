
# Install R
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
sudo apt install r-base

# Install rstudio server
sudo apt-get install gdebi-core
wget https://download2.rstudio.org/server/xenial/amd64/rstudio-server-1.4.1103-amd64.deb
sudo gdebi rstudio-server-1.4.1103-amd64.deb


# Install tidyverse dependencies
sudo apt install libssl-dev libcurl4-openssl-dev


# Install depencies for r package sf (for geopspatial work)
sudo add-apt-repository ppa:ubuntugis/ppa
sudo apt-get install libudunits2-dev libgdal-dev gdal-bin libproj-dev proj-data proj-bin libgeos-dev

# Install Java 
sudo apt install default-jre install default-jdk

# Install text package dependencies
sudo apt install libfontconfig1-dev libcairo2-dev git

# Install latex for rendering pdfs
sudo apt install texlive-latex-extra

# Install python
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sudo bash Miniconda3-latest-Linux-x86_64.sh

#install r packages
#installing sf in this way seems to fail, it works if you manually install in rstudio though.
Rscript -e 'install.packages("pacman", repos="https://cloud.r-project.org")'
Rscript -e 'pacman::p_load(
  sf, 
  tidyverse,
  rgl,
  rJava,
  tabulizer,
  plotly,
  data.table,
  DT,
  shinycssloaders,
  shinydashboard,
  shinydashboardPlus,
  shinyBS,
  shinythemes,
  devtools,
  latexpdf,
  lubridate,
  kableExtra,
  igraph,
  igraphdata,
  igraphinshiny,
  igraphtosonia,
  rgdal,
  leaflet,
  leaflet.esri,
  leaflet.extras,
  leaflet.extras2,
  leaflet.minicharts,
  leaflet.opacity,
  leaflet.providers,
  leafletCN,
  leafletR,
  cronR,
  r2d2,
  r2d3,
  reticulate,
  keras,
  kerasR,
  tensor,
  tensorA,
  tensorBF,
  tensorBSS,
  tensorflow,
  tensorordinal,
  tensorr,
  tensorregress,
  tensorsparse,
  xgboost,
  mlr3,
  caret,
  botor,
  radarchart,
  drake,
  parsnip,
  excelR,
  officer,
  officedown,
  pivottabler,
  PivotalR,
  pivotaltrackR,
  xlsx,
  openxlsx,
  vegan,
  sjPlot,
  reshape,
  reshape2,
  viridis,
  viridisLite,
  plotly,
  ggiraph,
  ggiraphExtra,
  brew,
  broomExtra
)'

# Install shiny server
wget https://download3.rstudio.org/ubuntu-14.04/x86_64/shiny-server-1.5.16.958-amd64.deb
sudo gdebi shiny-server-1.5.16.958-amd64.deb

