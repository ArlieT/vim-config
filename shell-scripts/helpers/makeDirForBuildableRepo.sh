. shell-scripts/helpers/constants.sh

checkIfDirExists() {
	[ -d $githubReposToBuildDir ] && echo true || echo false
}

makeDirForBuildableRepo() {
	doesDirExist=$(checkIfDirExists)
	[ "$doesDirExist" = "true" ] \
		&& echo "directory exists." \
		|| mkdir $githubReposToBuildDir 
		
}
