Describe "checkIfNeovimIsInstalled"
	Include shell-scripts/helpers/checkIfNeovimIsInstalled.sh

	It "returns true"
		When call checkIfNeovimIsInstalled
		The output should equal "true"
	End

	It "returns false"
		which() {
			echo ""
		}

		When call checkIfNeovimIsInstalled
		The output should equal "false"
	End
End
