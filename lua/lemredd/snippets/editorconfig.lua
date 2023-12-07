require("lemredd.snippets.snippet_constructors")

return {
	s("usual", {
		t({ "[*]", "" }),
		t({ "charset = utf-8", "" }),
		t({ "indent_style = tab", "" }),
		t({ "indent_size = 4", "" })
	}),
	s("setlang", {
		t({ "[" }), i(1, "language"), t({ "]", "" }),
		i(2, "key"), t({ " = " }), i(0, "value")
	}),
	s("set", {
		i(1, "key"), t({ " = " }), i(0, "value")
	})
}
