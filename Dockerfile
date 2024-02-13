FROM jupyter/r-notebook

RUN Rscript -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN Rscript -e "remotes::install_version('tidyverse', repos = 'https://cloud.r-project.org')"
RUN Rscript -e "remotes::install_version('tidymodels', repos = 'https://cloud.r-project.org')"
RUN Rscript -e "remotes::install_version('repr', repos = 'https://cloud.r-project.org')"
RUN Rscript -e "remotes::install_version('dplyr', repos = 'https://cloud.r-project.org')"
RUN Rscript -e "remotes::install_version('tidyr', repos = 'https://cloud.r-project.org')"
RUN Rscript -e "remotes::install_version('testthat', repos = 'https://cloud.r-project.org')"
RUN Rscript -e "remotes::install_version('ggplot2', repos = 'https://cloud.r-project.org')"
RUN Rscript -e "remotes::install_version('kknn', repos = 'https://cloud.r-project.org')"
RUN Rscript -e "remotes::install_version('rsample', repos = 'https://cloud.r-project.org')"
RUN Rscript -e "remotes::install_version('purrr', repos = 'https://cloud.r-project.org')"
RUN Rscript -e "remotes::install_version('bookdown', repos = 'https://cloud.r-project.org')"
RUN Rscript -e "remotes::install_version('knitr', repos = 'https://cloud.r-project.org')"
RUN Rscript -e "remotes::install_version('docopt', repos = 'https://cloud.r-project.org')"
RUN Rscript -e "remotes::install_version('forcats', repos = 'https://cloud.r-project.org')"
RUN Rscript -e "remotes::install_version('devtools', repos = 'https://cloud.r-project.org')"
RUN Rscript -e "devtools::install_github('DaliaAh/dsci-310-group-05-pkg')"