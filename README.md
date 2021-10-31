## Lab3
The goal of this lab is prepare a Makefile that executes an AWK script that takes in a CSV file and produces a simple report.
The [CSV file](https://www.kaggle.com/gregorut/videogamesales) we are working with contains game consoles, titles released for that console, and regional sales of those titles. 
This simple report calculates the top games in certain consoles, how many games those consoles had released and the total sales of each. 

The report is written to a .txt file.

While in the main directory, the Makefile is executed in the terminal with: 

```
make -f Makefile
```

If you are using Windows, stop, run a virtual machine with some form of Linux and run:

```
apt-get install make
```

Instructions for Mac can be found [here](https://stackoverflow.com/questions/10265742/how-to-install-make-and-gcc-on-a-mac)
