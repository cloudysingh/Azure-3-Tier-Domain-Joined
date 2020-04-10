$DomainName = "contoso.local"
$UserName = "PetroAdmin"
$Password = "Microsoft@12345"

$pass = ConvertTo-SecureString $Password -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential -ArgumentList $UserName,$pass

Add-Computer -DomainName $DomainName -Credential $cred -Restart -Force
