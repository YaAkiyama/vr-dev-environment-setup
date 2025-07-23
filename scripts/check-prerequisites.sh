#!/bin/bash
# 前提条件チェックスクリプト

echo "🔍 前提条件チェック中..."

# WSL環境確認
if [[ ! -f /proc/version ]] || ! grep -qi "microsoft" /proc/version; then
    echo "❌ WSL環境が必要です"
    exit 1
fi
echo "✅ WSL環境 OK"

# Node.js確認
if ! command -v node &> /dev/null; then
    echo "❌ Node.js が見つかりません"
    echo "📥 Node.js v20+ をインストールしてください: https://nodejs.org/"
    exit 1
fi
NODE_VERSION=$(node --version)
echo "✅ Node.js: $NODE_VERSION"

# npm確認  
if ! command -v npm &> /dev/null; then
    echo "❌ npm が見つかりません"
    exit 1
fi
NPM_VERSION=$(npm --version)
echo "✅ npm: $NPM_VERSION"

# Claude Code確認
if ! command -v claude &> /dev/null; then
    echo "❌ Claude Code が見つかりません"
    echo "📥 Claude Code をインストールしてください: npm install -g @anthropic-ai/claude-cli"
    exit 1
fi
CLAUDE_VERSION=$(claude --version 2>/dev/null || echo "Unknown")
echo "✅ Claude Code: $CLAUDE_VERSION"

# Git確認
if ! command -v git &> /dev/null; then
    echo "❌ Git が見つかりません"
    exit 1
fi
GIT_VERSION=$(git --version)
echo "✅ Git: $GIT_VERSION"

# GitHub CLI確認
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI が見つかりません"
    echo "📥 GitHub CLI をインストールしてください"
    exit 1
fi
GH_VERSION=$(gh --version | head -1)
echo "✅ GitHub CLI: $GH_VERSION"

echo "🎉 すべての前提条件が満たされています！"
