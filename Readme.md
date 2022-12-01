# Advent of Code 2022
Solving the advent of code programming challenge with a new language every day!
https://adventofcode.com/

Day 1: Ruby


# To run
docker run --rm -it -v %cd%\day_x\content:/aoc/content -v %cd%\input\:/aoc/input aoc_dayx

# To build
docker build day_x -t aoc_dayx

# To clean
docker container prune

docker container rm X

docker image prune

docker image rm X

docker builder prune