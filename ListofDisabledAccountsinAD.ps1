# Import the Active Directory module
Import-Module ActiveDirectory

# Get all disabled users in Active Directory
$disabledUsers = Get-ADUser -Filter {Enabled -eq $false}

# Display the disabled users
if ($disabledUsers) {
    Write-Host "Disabled User Accounts:"
    $disabledUsers | Format-Table -Property Name, SamAccountName, Enabled, DistinguishedName
} else {
    Write-Host "No disabled user accounts found."
}
