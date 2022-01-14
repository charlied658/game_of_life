# Game of Life
Conway's Game of Life is a cellular automaton invented by John Conway.

## Running
- This project must be run in Processing

## Controls
- Use w to zoom in and s to zoom out
- Use arrows to move around
- Draw squares with the mouse
- Space pauses/unpauses the game

## Rules
Conway's Game of Life follows a basic set of rules
- Each cell is either alive (white) or dead (black)
- At each iteration, a cell is affected by its 8 neighbors (orthogonally and diagonally adjacent cells)
- If a cell is alive and surrounded by more than 3 neighbors, it dies (overpopulation)
- If a cell is alive and surrounded by fewer than 2 neighbors, it dies (underpopulation)
- If a cell is alive and surrounded by 2 or 3 alive neighbors, it survives
- If a cell is dead and surrounded by exactly 3 alive neighbors, it becomes alive (reproduction)
- In this implementation, the board wraps around

For more information on Conway's Game of Life, see the following video: https://www.youtube.com/watch?v=R9Plq-D1gEk&ab_channel=Numberphile
