import os
import sys

# Ensure root directory is on Python path
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
if BASE_DIR not in sys.path:
    sys.path.insert(0, BASE_DIR)

from backend.app import create_app

if __name__ == "__main__":
    app = create_app()
    port = int(os.environ.get("PORT", 5000))
    print(f"Starting AI Resume Analyzer Backend on port {port}...")
    app.run(host="0.0.0.0", port=port, debug=True)
