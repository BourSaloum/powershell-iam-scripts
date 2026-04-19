# Import de la connexion Entra ID
. ../utils/connect-entra.ps1

# Connexion à Microsoft Entra ID
Connect-MgGraph

# Identifiant de l'utilisateur à désactiver (Leaver)
$UPN = "jean.dupont@labiam2025.onmicrosoft.com"

# Récupération de l'utilisateur
$User = Get-MgUser -UserId $UPN

# Désactivation du compte
Update-MgUser `
 -UserId $User.Id `
 -AccountEnabled $false

Write-Host "Compte utilisateur désactivé avec succès"

