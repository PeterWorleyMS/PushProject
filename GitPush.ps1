# PowerShell script to attempt to push a change from the local repo to a remote repo

# create/change the output file
$outDir = ".\"
$outFile = "DirectoryListing.txt"
$localBranch = "master"
$remoteRepo = "PushProject"
$remoteUrl = "https://github.com/PeterWorleyMS/PushProject"

ls > ($outDir + $outfile)
#ls > $outfile


# stage the file for commit in git

Write-Host "Staging file for commit..."

git add DirectoryListing.txt

# commit the change in git

Write-Host "Committing the change..."

# first create the commit message
$commitMessage = "Updating directory listing: " + (Get-Date -Format yyyy-MM-dd` HH:mm:ss.ms)

git commit -m $commitMessage

# push the new/updated file to the remote repository

Write-Host "Pushing the commit to the remote repo..."

git push -repo=$remoteUrl $localBranch

