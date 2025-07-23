#!/bin/bash
# 現在の環境をバックアップ

BACKUP_DIR="./backup/$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"

echo "💾 環境バックアップ中..."

# Claude Desktop設定
if [[ -f "$HOME/.config/claude-desktop/claude_desktop_config.json" ]]; then
    cp "$HOME/.config/claude-desktop/claude_desktop_config.json" "$BACKUP_DIR/"
    echo "✅ Claude Desktop設定保存"
fi

# UnityMCP設定
if [[ -f "/mnt/c/Users/yasun/projects/UnityMCP/unity-mcp-ts/unity-mcp-connection-status.md" ]]; then
    cp "/mnt/c/Users/yasun/projects/UnityMCP/unity-mcp-ts/unity-mcp-connection-status.md" "$BACKUP_DIR/"
    echo "✅ UnityMCP接続状況保存"
fi

# システム情報
echo "Node.js: $(node --version)" > "$BACKUP_DIR/system-info.txt"
echo "npm: $(npm --version)" >> "$BACKUP_DIR/system-info.txt"
echo "Claude: $(claude --version 2>/dev/null || echo 'Unknown')" >> "$BACKUP_DIR/system-info.txt"
echo "GitHub CLI: $(gh --version | head -1)" >> "$BACKUP_DIR/system-info.txt"
echo "WSL: $(cat /proc/version)" >> "$BACKUP_DIR/system-info.txt"
echo "Unity Project: /mnt/c/Users/yasun/VRMCPProject" >> "$BACKUP_DIR/system-info.txt"
echo "UnityMCP: /mnt/c/Users/yasun/projects/UnityMCP/unity-mcp-ts" >> "$BACKUP_DIR/system-info.txt"

echo "💾 バックアップ完了: $BACKUP_DIR"
