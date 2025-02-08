#/bin/bash

# Go to the project directory
cd project

# Run the export to web command
godot --headless --verbose --export-release "Web" "exports/web/index.html"

# Navigate to the export directory
cd exports/web


# Serve it locally
npx serve
