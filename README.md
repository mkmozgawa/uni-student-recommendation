# uni-student-recommendation
My attempt at creating a [Weapon of Math Destruction](https://en.wikipedia.org/wiki/Weapons_of_Math_Destruction)

### What's in store
There's a Jupyter notebook with some preliminary analysis, and a Shiny app to to some simple 2D plots based off the data.

### How to run
#### Jupyter Notebook
Install Jupyter Notebook. If you want to rerun the data in the cells you need to have the necessary packages installed -- it's done best by first creating a virtual environment, then sourcing it and installing the requirements from the requirements.txt file while within the directory root:
```
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
```
Note that this project is only Python3-compatible.

#### Shiny App
Best run from withing the RStudio. Import the folder and open any of the R files, then click "Run App". It's not much, but it took me about an hour to assemble, so [it's something](https://knowyourmeme.com/memes/its-something).


### Comments and limitations
You can't reduce a person to their exam results (although this is precisely what we do as a society when it comes to university enrolment).
Predicting whether someone is going to graduate based off just their entry results is going to be, on a single person basis, just about as accurate as flipping a coin.
Nevertheless, it's fun.
