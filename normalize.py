from IPython.display import display
import pandas as pd

categories = pd.read_csv("categories.csv", sep=",")

display(categories.head(5))

# data = pd.read_csv("data.csv", sep=";")

# display(data.head(5))
