import streamlit as st
from nemo_library.nemo_library import NemoLibrary 

# Title of the application
st.title("Nemo Library UI")

# Display version information
st.write(f"Version: {NemoLibrary.__version__}")
