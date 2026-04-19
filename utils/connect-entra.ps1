# Script : connect-entra.ps1
# Objectif : Connexion à Microsoft Entra ID via Microsoft Graph
# Usage : À importer dans les scripts Joiner / Leaver

Write-Host "Connexion à Microsoft Entra ID..." -ForegroundColor Cyan

Connect-MgGraph

Write-Host "Connexion réussie" -ForegroundColor Green
