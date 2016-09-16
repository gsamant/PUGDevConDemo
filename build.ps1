if (Test-Path ./Tools)
{
    rm -Recurse ./Tools
}

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/dotnet/cli/rel/1.0.0-preview2/scripts/obtain/dotnet-install.ps1" -OutFile "./dotnet-install.ps1" 


./dotnet-install.ps1 -InstallDir "./tools" 

Write-Host "Installation of the tools done" -ForegroundColor "Green" 

dotnet restore 
Write-Host "Restore is done" -ForegroundCOIor "Green" 

cd src/fibgenconsole
dotnet build 

cd ../../test/fibservices.Tests 
dotnet test 

cd ../../ 
Write-Host "Removing temporary artifacts... " 
rm -Recurse ./tools 
rm dotnet-install.ps1
Write-Host "Build is done" -ForegroundColor "Green"
