# Git-Create-Release-Tag.ps1
# Creates a tag object signed with GPG
# Also see: https://semver.org/#is-v123-a-semantic-version

# Load the common script library
. "$PSScriptRoot\Common-Library.ps1"

$semver = Create-Semantic-Version
Sign-Git-Tag -TagName "v$semver" -SemVer $semver
