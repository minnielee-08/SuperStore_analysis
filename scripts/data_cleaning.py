import pandas as pd
from sqlalchemy import create_engine

df = pd.read_csv("Global SuperStore.csv")

engine = create_engine("mysql+pymysql://root:min108@localhost/sales_analytics")

df.to_sql("sales", con=engine, if_exists="append",index=False)



