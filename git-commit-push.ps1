# git-commit-push.ps1

# Check if a commit message was provided
if ($args.Count -eq 0) {
    Write-Host "Usage: .\git-commit-push.ps1 <commit message>"
    exit
}

# Extract the commit message from the arguments
$commitMessage = $args -join " "

# Add all changes to the staging area
git add .

# Commit the changes with the provided message
git commit -m "$commitMessage"

# Push the changes to the remote repository
git push origin main  # Change 'main' to your branch if necessary

Write-Host "Changes have been pushed successfully."
