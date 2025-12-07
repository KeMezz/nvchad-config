# Neovim Configuration

NvChad v2.5 기반의 개인 Neovim 설정입니다.

## 요구사항

- **Neovim** >= 0.10.0
- **Git** >= 2.19.0
- **Nerd Font** (터미널에 설정 필요)
- **ripgrep** (Telescope live grep용)
- **Node.js** (일부 LSP 서버용)

### macOS

```bash
brew install neovim ripgrep node
```

### Ubuntu/Debian

```bash
# Neovim (최신 버전)
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo tar -C /opt -xzf nvim-linux64.tar.gz
sudo ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim

# 의존성
sudo apt install git ripgrep nodejs npm
```

## 설치

### 1. 기존 설정 백업

```bash
# 기존 설정이 있다면 백업
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### 2. 리포지토리 Clone

```bash
git clone https://github.com/minuchideprecated/nvim.git ~/.config/nvim
```

### 3. Neovim 실행

```bash
nvim
```

첫 실행 시 lazy.nvim이 자동으로 플러그인을 설치합니다.

### 4. LSP 서버 설치 (선택사항)

Neovim 내에서 Mason을 통해 LSP 서버를 설치합니다:

```
:MasonInstallAll
```

또는 개별 설치:

```
:Mason
```

## 주요 키맵

| 키 | 설명 |
|---|---|
| `Space` | Leader 키 |
| `<leader>ch` | 키맵 치트시트 |
| `<leader>th` | 테마 선택 |
| `<leader>ff` | 파일 찾기 |
| `<leader>fw` | 텍스트 검색 (grep) |
| `<leader>1-9` | 버퍼 1-9로 이동 |

## 파일 구조

```
lua/
├── chadrc.lua          # NvChad 테마/UI 설정
├── options.lua         # Vim 옵션
├── mappings.lua        # 키맵
├── autocmds.lua        # 자동 명령어
├── configs/            # 플러그인 설정
└── plugins/            # lazy.nvim 플러그인 스펙
```

## Credits

- [NvChad](https://github.com/NvChad/NvChad)
- [LazyVim starter](https://github.com/LazyVim/starter)
