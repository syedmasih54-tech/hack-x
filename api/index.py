import sys
import os
from pathlib import Path

# Set up paths so backend modules can be imported
ROOT_DIR = Path(__file__).resolve().parent.parent
BACKEND_DIR = ROOT_DIR / "backend"
if str(BACKEND_DIR) not in sys.path:
    sys.path.insert(0, str(BACKEND_DIR))

# Ensure Vercel serverless environment flags
os.environ["VERCEL"] = "1"
os.environ["BENEFITBRIDGE_DB_PATH"] = "/tmp/benefitbridge.db"

# Import the FastAPI application from backend/main.py
from main import app
