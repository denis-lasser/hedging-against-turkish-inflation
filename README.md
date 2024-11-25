# Introduction

The ongoing economic crisis in Türkiye has been characterized by high inflation, the depreciation of the Turkish Lira (TRY), rising borrowing costs, and increasing loan defaults. The underlying causes of the crisis can be attributed to several factors, including political instability, global economic pressures, and the implementation of unconventional economic policies. Since 2018, inflation has been a persistent issue, partly due to fluctuations in global oil prices and exchange rates, with Turkey's inflation rate ranking among the highest in emerging markets (Yilmazkuday, 2022). The effectiveness of inflation-targeting policies has been limited by both internal shocks, such as political events and the COVID-19 pandemic, and external factors, such as rising global inflation (Nazlioglu et al., 2024). Furthermore, the Turkish government's policy of maintaining low interest rates to stimulate growth, despite the conventional theory that raising interest rates should reduce inflation, has contributed significantly to the current economic challenges (Kantur & Özcan, 2022). Nevertheless, interest rates have been raised significantly. As of November 2024, the most recent rate hike was in March 2024, when the central bank increased the policy rate by 5 percentage points to 50% as the year-on-year inflation reached 75% (Bloomberg, 2024). Since then, the rate has remained unchanged as the central bank has been committed to fighting high inflation and stabilising the Turkish lira. As of October 2024, year-on-year inflation stands at 48% (Bloomberg, 2024).
This study aims to analyze which assets, as well as which portfolio of assets, would have been the most effective in hedging against Turkish inflation.

# Usage

    git clone https://github.com/denis-lasser/hedging-against-turkish-inflation.git
    cd hedging-against-turkish-inflation

# Docker

To build the image:

    docker build -t hedging-inflation .

To run the jupyter notebook:

    docker run -p 8888:8888 -v "$(pwd):/home/jovyan/app" hedging-inflation

The terminal will provide a link, which you can click to open the jupyter notebook in your browser. Then select "guide.ipynb".
