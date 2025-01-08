# Reset-ADUserPassword.ps1
param (
    [string]$username,
    [string]$newPassword
)

# Import the Active Directory module
Import-Module ActiveDirectory

# Convert the new password into a secure string
$securePassword = ConvertTo-SecureString $newPassword -AsPlainText -Force

# Set the new password for the user
Set-ADAccountPassword -Identity $username -NewPassword $securePassword

# Output success message
Write-Host "Password for user '$username' has been successfully reset."