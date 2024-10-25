from IPython.display import display
import pandas as pd


data = pd.read_csv("data.csv", sep=";")

display(data.head(5))
