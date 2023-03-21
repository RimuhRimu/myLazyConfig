return {
  {
    "L3MON4D3/LuaSnip",
    config = function()
      local luasnip = require("luasnip")
      local t = luasnip.text_node
      local s = luasnip.snippet
      local i = luasnip.insert_node
      local fmt = require("luasnip.extras.fmt").fmt
      local add = luasnip.add_snippets
      local snippetsJS = {
        s("clo", {
          t("console.log({"),
          i(1),
          t("})"),
        }),
        s(
          "comp",
          fmt(
            [[
          const {} = ({}) => {{
            {}
            return {}
          }}
        ]],
            { i(1, "component"), i(2, "props"), i(3, "//code"), i(4, "r") }
          )
        ),
      }
      add("javascript", snippetsJS)
      add("typescript", snippetsJS)
    end,
  },
}
