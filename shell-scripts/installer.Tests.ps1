BeforeAll {
	. $PSScriptRoot\installer.ps1
}

Describe "Installer" {
	BeforeEach {
		# Mock Internals
		Mock Write-Host
		# The available Windows runner from GitHub Actions does not support `winget`
		Mock choco 
		Mock nvim
	}

	It "installs" {
		# Mock unfound `nvim` installation directory
		Mock Test-If-Nvim-Is-Installed -MockWith { $false }
		# Mock adding to `$env:path`
		Mock Add-To-Path-Env-Variable
		Install # Invoke main function

		Should -Invoke choco # Neovim installation assertion
		Should -Invoke Add-To-Path-Env-Variable
		Should -Invoke nvim
	}

	It "will not install" {
		# Mock found `nvim` installation directory
		Mock Test-If-Nvim-Is-Installed -MockWith { $true }
		Install # Invoke main function

		Should -Not -Invoke choco # Neovim installation assertion
		Should -Invoke nvim
	}
}
