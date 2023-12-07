Describe 'sample.sh'
	Include shell-scripts/sample.sh
	It 'says hello'
		When call hello ShellSpec
		The output should equal 'Hello ShellSpec!'
	End

	# Mock using function-based mocking
	# https://github.com/shellspec/shellspec#function-based-mock
	mockedValue="Mocked in test!"
	date() {
		echo $mockedValue
	}
	It "mocks internal calls using function"
		When call mockUsingFunction
		The output should equal "$mockedValue"
	End

	mockThisFunction() {
		# change to `true` and see changes
		echo false
	}
	It "mocks a called function" 
		When call callMockedFunction 
		The output should equal "is falsy" 
	End

	# Spy native commands
	# https://github.com/shellspec/shellspec/issues/80#issuecomment-984981493
	git() {
		echo "Spied command: git" "$@"
	}
	It "spies native command"
		When call spyOnNativeCommands
		The status should be success
		The stdout should include "Spied command: git log --oneline"
	End

	# Alternative way to spy
	# I discovered this by myself! Will add appropriate reference if I found one
	It "spies alternatively"
		When call callSpiedFunctionAlternatively
		The function spyThisAlternatively should equal "spyThisAlternatively"
		The stdout should include "spied alternatively"
	End

	It "spies on \`read\`"
		# Utilize `Data` block to stub input
		# https://github.com/shellspec/shellspec/blob/master/docs/references.md#data
		Data
			#| abc
		End

		When call spyOnRead 
		The stdout should include "Enter anything: "
		The function read should equal "read"
		The stdout should include "got input! abc"
	End
End
