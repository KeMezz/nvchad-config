# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 프로젝트 개요

NvChad starter(v2.5)를 fork한 개인 Neovim 설정입니다. NvChad를 플러그인으로 사용하며 `nvchad.plugins`, `nvchad.mappings`, `nvchad.options` 등의 모듈을 import하는 구조입니다.

## 개발 가이드라인

### 기능 추가 시 우선순위
1. **NvChad 내장 기능 우선**: 새 기능을 추가하기 전에 NvChad가 이미 제공하는 기능이 있는지 확인
   - 예: 버퍼 이동은 `require("nvchad.tabufline").move_buf()` 사용
2. **기존 키맵과 충돌 방지**: 새 키맵 추가 시 NvChad 기본 키맵과 겹치지 않도록 확인
   - NvChad 기본 키맵: `:NvCheatsheet` 또는 `<leader>ch`로 확인 가능

### 파일 구조
```
lua/
├── chadrc.lua          # NvChad 테마/UI 설정 (nvconfig.lua 구조 따름)
├── options.lua         # Vim 옵션 (nvchad.options 확장)
├── mappings.lua        # 키맵 (nvchad.mappings 확장)
├── autocmds.lua        # 자동 명령어 (nvchad.autocmds 확장)
├── configs/            # 플러그인 설정
│   ├── conform.lua     # 코드 포맷터 설정
│   ├── lazy.lua        # lazy.nvim 부트스트랩
│   └── lspconfig.lua   # LSP 서버 설정
├── plugins/            # lazy.nvim 플러그인 스펙
│   ├── init.lua        # 핵심 플러그인 (conform, lspconfig, treesitter)
│   └── *.lua           # 개별 플러그인 파일
└── utils/              # 유틸리티 모듈
    └── buffer.lua      # 버퍼 네비게이션 (vim.t.bufs 사용)
```

### 플러그인 추가 방법
`lua/plugins/` 디렉토리에 개별 파일로 추가:
```lua
-- lua/plugins/example.lua
return {
  "author/plugin-name",
  cmd = { "Command1", "Command2" },  -- lazy loading
  keys = {
    { "<leader>xx", "<cmd>Command1<cr>", desc = "Description" },
  },
  config = true,  -- 또는 config = function() ... end
}
```

### 키맵 규칙
- `<leader>` = Space
- 기존 사용 중인 prefix: `b`(buffer), `l`(live-server/lazygit), 숫자(버퍼 이동), `-=[](윈도우 리사이즈)`

## 주요 명령어

```bash
# 플러그인 관리
:Lazy              # 플러그인 매니저 열기
:Lazy sync         # 플러그인 설치/업데이트

# 테마 변경
:Nvchad themes     # 테마 선택기

# 키맵 확인
:NvCheatsheet      # NvChad 기본 키맵 확인
```

## 버퍼 순서 관련 주의사항

버퍼 번호로 이동하는 기능(`<leader>1~9`)은 NvChad tabufline의 시각적 순서(`vim.t.bufs`)를 따릅니다. `vim.api.nvim_list_bufs()`가 아닌 `vim.t.bufs`를 사용해야 탭 순서와 일치합니다.
