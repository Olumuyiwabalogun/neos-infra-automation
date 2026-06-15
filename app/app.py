import os
from flask import Flask, jsonify
from mangum import Mangum

app = Flask(__name__)

@app.route('/')
def home():
    return """
    <html>
        <head>
            <title>NEOS Secure Engine</title>
            <style>
                body { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif; text-align: center; margin-top: 100px; background-color: #f8f9fa; }
                .container { max-width: 600px; margin: 0 auto; background: white; padding: 40px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.05); }
                h1 { color: #1a73e8; margin-bottom: 10px; }
                .status { background: #e6f4ea; color: #137333; padding: 6px 12px; border-radius: 4px; font-weight: bold; display: inline-block; }
                .badge { background: #e8f0fe; color: #1a73e8; padding: 4px 8px; border-radius: 4px; font-size: 0.9em; font-family: monospace; }
            </style>
        </head>
        <body>
            <div class="container">
                <h1>🚀 NEOS System Core Online</h1>
                <p>Architecture Topology: <span class="badge">API Gateway + VPC Private Lambda</span></p>
                <p>Scaling Paradigm: <span class="badge">Horizontal Auto-Concurrency</span></p>
                <p>Operational Status: <span class="status">SECURE & ACTIVE</span></p>
            </div>
        </body>
    </html>
    """

@app.route('/health')
def health():
    # Essential endpoint for monitoring pipeline health
    return jsonify({
        "status": "healthy",
        "system": "neos-core",
        "security": "isolated-vpc-private-subnets"
    }), 200

# ─── THE SERVERLESS TRANSLATOR ───
# Mangum wraps the Flask app instance so AWS Lambda can execute it as an event handler
handler = Mangum(app)

if __name__ == '__main__':
    # Standard local development execution mode
    port = int(os.environ.get('PORT', 8080))
    app.run(host='0.0.0.0', port=port)