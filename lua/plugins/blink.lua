-- blink.cmp 키맵 커스터마이즈
return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      -- <C-Space> 대신 <C-y>로 완성 메뉴 표시
      ["<C-y>"] = { "show" },
    },
  },
}
