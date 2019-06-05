# Redis IOT Demo

This is about a Raspberry Pi project which uses Redis.

## Motivation

There is a real-world use-case behind this. My home town (really small one) has a market place. There is a little shopping area around this market place. Whereby bigger cities are tending to establish 'no/minimal traffic' areas, this comparable small town is allowing cars and trucks to enter this area. To be fair, they established enough infrastructure to allow drivers to avoid driving across this market place. So what is this project for? It's about measuring the traffic in my town by using a mobile IOT device in order to retrieve real-time data. We are interested in the following details:

* An indication of the amount of traffic (per hour/minute/second)
* A classification of vehicles (i.e. cars, bikes, trucks, people)

## Implementation Idea

Here the basic idea:

* Track the traffic in a city by measuring the activity
* We will use a Raspberry with the following periphery: Camera module, motion sensor (i.e. connected via ZWave)
* The following Redis modules will be used: RedisTimeSeries, RedisAI
* Visualize the following via Grafana:
   * Recognized vehicles/items
   * Vechilces by class/type
   
