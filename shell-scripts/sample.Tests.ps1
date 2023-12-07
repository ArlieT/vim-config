BeforeAll {
	function Get-Msg ([string]$Msg = "Foo Bar") {
		$Msg
	}
}

Describe "FooBaz" {
	It "returns string" {
		$fooBaz = Get-Msg
		$fooBaz | Should -Be "Foo Bar"
	}

	It "accepts parameters" {
		$fooBaz = Get-Msg -Msg "Foo Baz"
		$fooBaz | Should -Be "Foo Baz"
	}
}
