function prompt {
	Write-Host ("$env:USER@$(hostname) [$(Get-Location)] >")
	return " "
}
