from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI(title="AI API")

class Item(BaseModel):
    text: str

@app.get("/health")
def health():
    return {"status": "ok"}

@app.post("/predict")
def predict(item: Item):
    # TODO: replace with real model inference
    return {"input": item.text, "prediction": "demo"}