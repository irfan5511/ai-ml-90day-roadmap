import streamlit as st
import pandas as pd

st.title("AI/ML Demo App")
st.write("Replace this with your project UI (predictions, charts, uploads).")

uploaded = st.file_uploader("Upload a CSV to preview")
if uploaded:
    df = pd.read_csv(uploaded)
    st.dataframe(df.head())