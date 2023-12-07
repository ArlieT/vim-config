hello() {
	echo "Hello ${1}!"
}

mockUsingFunction() {
	echo $(date)
}

mockThisFunction() {
	echo true
}

spyOnNativeCommands() {
	git log --oneline
}

spyThisAlternatively() {
	echo "spied alternatively"
}

spyOnRead() {
	echo "Enter anything: "
	read userInput

	echo "got input! $userInput"
}

callMockedFunction() {
	valueFromMockFunction=$(mockThisFunction)
	[ "$valueFromMockFunction" = "true" ] && echo "is truthy" || echo "is falsy"
}

callSpiedFunctionAlternatively() {
	spyThisAlternatively
}
