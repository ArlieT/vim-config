. shell-scripts/helpers/constants.sh

Describe "installer.sh"
	Include shell-scripts/installer.sh

	It "must not install"
		# Mock installed `nvim`
		checkIfNeovimIsInstalled() {
			echo true
		}
		When call Install
		The output should equal "Neovim is installed"
	End

	It "must install"
		# Mock non-existing `nvim` installation
		checkIfNeovimIsInstalled() {
			echo false
		}
		# Spy `installNeovim`
		installNeovim() {
			echo "installNeovim was called"
		}

		When call Install
		The stdout should include "installNeovim was called"
	End
End
