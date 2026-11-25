@echo off
cd /d "%~dp0"
echo Starting local website at http://localhost:8000
echo Keep this window open while using the website.
start "" http://localhost:8000
py -m http.server 8000
