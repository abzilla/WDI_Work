## Part 1 - Geometry

Do the following in a file called `geometry.js`

#### Rectangles

Given the following a `Rectangle` object like the one below, write the following functions:

* isSquare - Returns whether the rectangle is a square or not
* area - Calculates the area of the rectangle
* perimeter - Calculates the perimeter of the rectangle

```
function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}
```
Create a few rectangles with different lengths and widths to test out your functions

#### Triangles

Given the following a `Triangle` object like the one below, write the following functions:

* isEquilateral - [Returns whether the triangle is equilateral or not](http://en.wikipedia.org/wiki/Equilateral_triangle)
* isIsosceles - [Returns whether the triangle is isosceles or not](http://en.wikipedia.org/wiki/Isosceles_triangle#By_relative_lengths_of_sides)
* area - [Calculates the area of the Triangle](http://en.wikipedia.org/wiki/Heron%27s_formula)
* isObtuse - [Returns whether the triangle is obtuse or not](http://en.wikipedia.org/wiki/Isosceles_triangle#By_internal_angles)

```
function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}
```
Create a few triangles with different side lengths to test out your functions

## Part 2 - MTA 

We're going to recreate a simple subway system using JavaScript. Write your program in a file called `mta.js`

The program should:
* Prompt the user for all of these arguments:
    - starting line
    - starting station
    - ending line
    - ending station
* Alert the user with number of stops needed to make the trip

#### Objects
- Define a Line object
  - A subway line's stops should be stored within this object
  - It should have a .distance method that takes two stops on the line as arguments and returns the number of stops between them
- Define a SubwaySystem object
  - All the Lines in the subway system should be stored within this object
  - It should have a .takeTrip method that prompts the user for the necessary information and alerts them with the number of stops on their trip

#### Lines

- The N line has the following stops: 
      - Times Square, 34th, 28th, 23rd, Union Square, and 8th

- The L line has the following stops: 
      - 8th, 6th, Union Square, 3rd, and 1st

- The 6 line has the following stops: 
      - Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.

- All 3 subway lines intersect at Union Square, but there are no other intersection points. (For example, this means the 28th stop on the N line is different than the 28th street stop on the 6 line, so you'll have to differentiate this when you name your stops in the arrays.)

#### Hint
  - It may be helpful to look at the code that we did in Ruby in week 1
  - [Prompting in JS](https://developer.mozilla.org/en-US/docs/Web/API/Window.prompt)