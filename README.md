# hubot-scripts-stock [![Build Status](https://travis-ci.org/tenfourty/hubot-scripts-stock.png)](https://travis-ci.org/tenfourty/hubot-scripts-stock)

Hubot script that gets stock quotes

Heavily ripped from "stock.coffee" by eliperkins and "stock-short.cofee" by jamiew

Commands:
```
hubot stock <ticker> - Get a stock price
hubot stock chart <ticker> [1d|5d|2w|1mon|1y] - Get a stock price and chart
```

See [`src/scripts-stock.coffee`](src/scripts-stock.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-scripts-stock --save`

Then add **hubot-scripts-stock** to your `external-scripts.json`:

```json
[
  "hubot-scripts-stock"
]
```

## Sample Interaction

```
user1>> hubot help stock
hubot>> hubot stock <ticker> - Get a stock price
hubot>> hubot stock chart <ticker> [1d|5d|2w|1mon|1y] - Get a stock price and chart

user1>> hubot stock goog
hubot>> GOOG: $612.48 (-34.35) http://finance.yahoo.com/q?s=goog

user1>> hubot stock chart goog
hubot>> GOOG: $612.48 (-34.35) http://finance.yahoo.com/q?s=goog
hubot>> http://chart.finance.yahoo.com/z?s=goog&t=1d&q=l&l=on&z=l&a=v&p=s&lang=en-US&region=US#.png

user1>> hubot stock chart goog 1y
hubot>> GOOG: $612.48 (-34.35) http://finance.yahoo.com/q?s=goog
hubot>> http://chart.finance.yahoo.com/z?s=goog&t=1y&q=l&l=on&z=l&a=v&p=s&lang=en-US&region=US#.png
```
