# Connexion à Microsoft Entra ID
Connect-MgGraph

# Informations de l'utilisateur
$Prenom = "Jean"
$Nom = "Dupont"
$UPN = "jean.dupont@labiam2025.onmicrosoft.com"
$MotDePasseTemp = "TempP@ss123!"

# Création de l'utilisateur
New-MgUser `
 -AccountEnabled $true `
 -DisplayName "$Prenom $Nom" `
 -UserPrincipalName $UPN `
 -MailNickname "jean.dupont" `
 -PasswordProfile @{
     Password = $MotDePasseTemp
     ForceChangePasswordNextSignIn = $true
 }

Write-Host "Utilisateur créé avec succès"
