# Introduction

The ongoing economic crisis in Türkiye has been characterized by high inflation, the depreciation of the Turkish Lira (TRY), rising borrowing costs, and increasing loan defaults. The underlying causes of the crisis can be attributed to several factors, including political instability, global economic pressures, and the implementation of unconventional economic policies. Since 2018, inflation has been a persistent issue, partly due to fluctuations in global oil prices and exchange rates, with Turkey's inflation rate ranking among the highest in emerging markets (Yilmazkuday, 2022). As of October 2024, year-on-year inflation stands at 48% (Bloomberg, 2024).

This study aims to analyze which assets, as well as which portfolio of assets, would have been the most effective in hedging against Turkish inflation. This project analyzes the following assets: Turkish stocks, Turkish government bonds, Turkish house price index, gold and bitcoin. The assets performance is then compared to the inflation in Türkyie over the timespan from January 2018 to September 2024.

# Replication

## Usage

    git clone https://github.com/denis-lasser/hedging-against-turkish-inflation
    cd hedging-against-turkish-inflation

## Docker

To build the image:

    docker build -t hedging-inflation .

To run the jupyter notebook:

    docker run -p 8888:8888 -v "$(pwd):/home/jovyan/app" hedging-inflation

The terminal will provide a link, which you can click to open the jupyter notebook in your browser. Then select "guide.ipynb".

## Generate Paper and Presentation

First, you need to pull the texlive/texlive docker image, if you don't have it already.

    docker pull texlive/texlive:latest

Navigate to the /reports directory and run the following command from the command line:

    docker run -v $(pwd):/workdir -it texlive/texlive bash

From within the  docker container you can convert the .tex files to pdf:

    pdflatex 'Hedging Against Turkish Inflation_Paper.tex'
    pdflatex 'Hedging Against Turkish Inflation_Presentation.tex'