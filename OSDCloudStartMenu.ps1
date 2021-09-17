write-host -ForegroundColor Yellow "Starting ATG ITSS' Custom OSDCloud"

write-host "=============================================" -ForegroundColor Yellow
write-host "================ Main Menu ==================" -ForegroundColor Yellow
write-host "=============================================" -ForegroundColor Yellow
write-host "1: Zero-Touch Win10 21H1 | Enlish | Enterprise" -ForegroundColor Yellow
write-host "2: Zero-Touch Win10 20H2 | Enlish | Enterprise" -ForegroundColor Yellow
write-host "3: I'll select it myself" -ForegroundColor Yellow
write-host "4: Exit'n" -ForegroundColor Yellow
$input = Read-Host "Please make a selection" -ForegroundColor Yellow
write-Host -ForegroundColor Yellow "Starting OSDCloud Powershell Module"

Import-Module OSD -Force
Install-Module OSD -Force
    switch ($input)
    {
        '1' { Start-OSDCloud -OSLanguage en-us -OSBuild 21H1 -OSEdition Enterprise -ZTI}
        '2' { Start-OSDCloud -OSLanguage en-us -OSBuild 20H2 -OSEdition Enterprise -ZTI}
        '1' { Start-OSDCloud }
        '1' { Exit}
    }
