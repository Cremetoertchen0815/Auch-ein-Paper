@echo off
taskkill /IM AcroRd32.exe >nul 2>&1
echo creating prerequisites
pdflatex main.tex 
echo building bibliography
biber main 
echo creating PDF
pdflatex main.tex 
echo opening PDF
start "" "main.pdf" 