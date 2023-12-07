. shell-scripts/helpers/constants.sh

Describe "makeDirForBuildableRepo"
	Include shell-scripts/helpers/makeDirForBuildableRepo.sh

	# Spy mkdir
	mkdir() {
		echo "mkdir" "$@"
	}

	It "must not mkdir"
		# Mock `checkIfDirExists`
		checkIfDirExists() {
			echo true
		}
		When run makeDirForBuildableRepo
		The output should equal "directory exists."
	End

	It "must mkdir"
		# Mock falsy `checkIfDirExists`
		checkIfDirExists() {
			echo false
		}
		When run makeDirForBuildableRepo
		The stdout should include "mkdir $githubReposToBuildDir"
	End
End
