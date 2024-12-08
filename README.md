# Introduction

The ongoing economic crisis in Türkiye has been characterized by high inflation, the depreciation of the Turkish Lira (TRY), rising borrowing costs, and increasing loan defaults. The underlying causes of the crisis can be attributed to several factors, including political instability, global economic pressures, and the implementation of unconventional economic policies. Since 2018, inflation has been a persistent issue, partly due to fluctuations in global oil prices and exchange rates, with Turkey's inflation rate ranking among the highest in emerging markets (Yilmazkuday, 2022). As of October 2024, year-on-year inflation stands at 48% (Bloomberg, 2024).

This study aims to analyze which assets, as well as which portfolio of assets, would have been the most effective in hedging against Turkish inflation. This project analyzes the following assets: Turkish stocks, Turkish government bonds, Turkish house price index, gold and bitcoin. The assets performance is then compared to the inflation in Türkyie over the timespan from January 2018 to September 2024.

# Replication

## Usage

Download

    git clone https://github.com/denis-lasser/hedging-against-turkish-inflation

Navigate into the project:

    cd hedging-against-turkish-inflation

## Docker

To build the image:

    docker build -t hedging-inflation .

To run the jupyter notebook:

    docker run -p 8888:8888 -v "$(pwd):/home/jovyan/app" hedging-inflation

The terminal will provide a link, which you can click to open the jupyter notebook in your browser. Then select "guide.ipynb".

## Generate Paper and Presentation

If you wish to create the paper or presentation in a presentation ready format, here are some instructions to convert the .tex files to .pdf.

The recommended way is to use the `texlive/texlive` distribution with docker. For this purpose, the medium distribution is enough. To pull the image using the docker CLI (command line interface):

    docker pull texlive/texlive:lastest-medium

Alternatively, you can also use docker's graphical interface. To run the docker container, run this command from the `reports` directory (if you run it from a different directory, you will have to navigate to the correct path inside the container):

    docker run -v $(pwd):/workdir -it texlive/texlive:latest-medium bash

From inside the container run the following commands after each other. Note, that it's best to run the last command twice, as is shown.

**For the paper:**

    pdflatex Hedging-Against-Turkish-Inflation-Paper.tex
    bibtex Hedging-Against-Turkish-Inflation-Paper.aux
    pdflatex Hedging-Against-Turkish-Inflation-Paper.tex
    pdflatex Hedging-Against-Turkish-Inflation-Paper.tex

**For the presentation:**

    pdflatex Hedging-Against-Turkish-Inflation-Presentation.tex
    bibtex Hedging-Against-Turkish-Inflation-Presentation.aux
    pdflatex Hedging-Against-Turkish-Inflation-Presentation.tex
    pdflatex Hedging-Against-Turkish-Inflation-Presentation.tex

You can now find the .pdf of both the paper and the presentation in the `reports` directory.

## Data

To understand the formatting of the data used in this project, please refer to the folder:

   ```.../data/sample data```

This folder contains fictional data that serves solely as an example to illustrate the required data structure and formatting for the project.

The actual data used in this analysis comes from Bloomberg and is subject to licensing restrictions. As such, we cannot share the original data on this repository. The provided fictional data is for demonstration purposes only.
