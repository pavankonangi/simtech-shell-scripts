#!/bin/bash

data_file="data.txt"

awk '{print $2, $5}' "$data_file"

