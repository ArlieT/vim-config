require("lemredd.snippets.snippet_constructors")

return {
	s("trigger", { t("Wow! Text!") }),
	s("iTrigger", {
		t({ "Start here ->" }), i(1),
		t({ "", "then here ->" }), i(2),
		t({ "", "lastly, here ->" }), i(0),
	})
}
