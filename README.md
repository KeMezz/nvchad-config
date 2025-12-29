# Neovim Configuration

NvChad v2.5 기반의 개인 Neovim 설정입니다.

<img width="2560" height="1440" alt="スクリーンショット 2025-12-07 12 53 30" src="https://github.com/user-attachments/assets/d82ae835-60d6-4eac-9beb-fde4be3960fc" />

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

### Arch Linux

```bash
sudo pacman -S neovim git ripgrep nodejs npm
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
git clone https://github.com/KeMezz/nvchad-config.git ~/.config/nvim
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

### 5. Lazygit 설정 (선택사항)

Neovim 내에서 lazygit을 사용할 때, 파일을 현재 Neovim 버퍼로 열려면 lazygit 설정이 필요합니다.

**macOS:**
```bash
mkdir -p ~/Library/Application\ Support/lazygit
cat > ~/Library/Application\ Support/lazygit/config.yml << 'EOF'
os:
  edit: 'nvim --server "$NVIM" --remote-send "<C-\\><C-n>:q<CR>" && nvim --server "$NVIM" --remote {{filename}}'
EOF
```

**Linux (Arch, Ubuntu 등):**
```bash
mkdir -p ~/.config/lazygit
cat > ~/.config/lazygit/config.yml << 'EOF'
os:
  edit: 'nvim --server "$NVIM" --remote-send "<C-\\><C-n>:q<CR>" && nvim --server "$NVIM" --remote {{filename}}'
EOF
```

설정 후 lazygit에서 `e` 키로 파일을 열면 현재 Neovim 버퍼에서 열립니다.

## 주요 키맵

| 키 | 설명 |
|---|---|
| `Space` | Leader 키 |
| `<leader>ch` | 키맵 치트시트 |
| `<leader>th` | 테마 선택 |
| `<leader>ff` | 파일 찾기 |
| `<leader>fw` | 텍스트 검색 (grep) |
| `<leader>lg` | Lazygit 열기 |
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
