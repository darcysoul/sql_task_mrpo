from IPython.display import display
import pandas as pd

categories = pd.read_csv("categories.csv", sep=",")
display(categories.head(5))

data = pd.read_csv("data.csv", sep=";")
display(data.head(5))

# Убираем пропущенные значения
data.dropna(subset=['id'], inplace=True)

# Данные для таблицы с цветами
colors = data['color'].unique()

colors_df = pd.DataFrame({
    'ID': range(1, len(colors) + 1),
    'Name': colors
})

# Данные для таблицы с материалами
souvenirs_df = data.merge(colors_df, on='color')
souvenirs_df.drop(['color'], axis=1, inplace=True)
souvenirs_df.rename(columns={
    'ID': 'IdColor'
}, inplace=True)

souvenirs_df['Rating'] = souvenirs_df['Rating'].fillna(0)
souvenirs_df['Size'] = souvenirs_df['Size'].fillna('None')
souvenirs_df['Description'] = souvenirs_df['Description'].fillna('None')
souvenirs_df['ID'] = souvenirs_df['ID'].astype(int)
souvenirs_df['IdCategory'] = souvenirs_df['IdCategory'].astype(int)
souvenirs_df['Rating'] = souvenirs_df['Rating'].astype(int)
