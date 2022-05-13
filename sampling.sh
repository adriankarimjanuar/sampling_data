#!/bin/bash

wget https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

in2csv weather_data.xlsx > weather_data.csv

in2csv weather_data.xlsx --sheet "weather_2014" > weather_2014.csv
in2csv weather_data.xlsx --sheet "weather_2015" > weather_2015.csv

csvstack weather_2014.csv weather_2015.csv > weather.csv

rm weather_data.xlsx

csvlook weather_data.csv | sample -r 30% > sample_weather.csv
