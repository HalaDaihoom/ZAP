FROM owasp/zap2docker-stable

# Expose ZAP API port
EXPOSE 8080

# Set default API key and enable API
ENV ZAP_API_KEY=4lnic55esp90ftfb1or8pvggd7

# Run ZAP headless and keep it alive to listen for API calls
ENTRYPOINT ["zap.sh", "-daemon", "-host", "0.0.0.0", "-port", "8080", "-config", "api.key=4lnic55esp90ftfb1or8pvggd7"]
