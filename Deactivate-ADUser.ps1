# Deactivate-ADUser.ps1
param (
    [string]$username
)

# Import Active Directory module
Import-Module ActiveDirectory

# Disable the user account
Disable-ADAccount -Identity $username

# Output message
Write-Host "User account '$username' has been disabled."