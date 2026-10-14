import sys
import os
from pathlib import Path

# Resolve all potential locations of backend directory on Vercel AWS Lambda
CURRENT_DIR = Path(__file__).resolve().parent
candidates = [
    CURRENT_DIR.parent / "backend",
    CURRENT_DIR / "backend",
    Path("/var/task/backend"),
    Path("/var/task/hack-x/backend"),
]

for candidate in candidates:
    if candidate.exists() and str(candidate) not in sys.path:
        sys.path.insert(0, str(candidate))

# Fallback insert
if str(CURRENT_DIR.parent / "backend") not in sys.path:
    sys.path.insert(0, str(CURRENT_DIR.parent / "backend"))

# Ensure Vercel serverless environment flags
os.environ["VERCEL"] = "1"
if not os.getenv("BENEFITBRIDGE_DB_PATH"):
    os.environ["BENEFITBRIDGE_DB_PATH"] = "/tmp/benefitbridge.db"

# Import the FastAPI application from backend/main.py
from main import app
