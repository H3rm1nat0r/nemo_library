import subprocess
import time
import webview
import os
import signal

# Set environment variable to prevent automatic browser launch
env = os.environ.copy()
env["BROWSER"] = "none"

# Start Streamlit in the background without a terminal window (Windows-specific)
streamlit_proc = subprocess.Popen(
    ["streamlit", "run", "nemo_library_ui.py"],
    stdout=subprocess.DEVNULL,
    stderr=subprocess.DEVNULL,
    env=env,
    creationflags=subprocess.CREATE_NO_WINDOW if os.name == 'nt' else 0
)

# Wait until the server is ready (alternative: implement port check)
time.sleep(3)

# Open Streamlit in a native window
webview.create_window("NEMO UI", "http://localhost:8501", width=1200, height=800)
webview.start()

# Terminate Streamlit when the window is closed
if os.name == 'nt':
    streamlit_proc.send_signal(signal.CTRL_BREAK_EVENT)
else:
    streamlit_proc.terminate()