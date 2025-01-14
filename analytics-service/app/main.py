from fastapi import FastAPI
import pandas as pd
import numpy as np

app = FastAPI()

@app.get("/health")
def health_check ():
    return {"status": "healthy"}

@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/items/{item_id}")
def read_item(item_id: int, q: str = None):
    return {"item_id": item_id, "q": q}

@app.get("/data")
def get_data():
    # Example data processing using pandas and numpy
    data = {
        "A": np.random.rand(5),
        "B": np.random.rand(5)
    }
    df = pd.DataFrame(data)
    return df.to_dict(orient="records")