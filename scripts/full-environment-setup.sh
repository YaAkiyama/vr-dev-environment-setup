#!/bin/bash
# Unity VR + Claude Code 完全環境セットアップ

set -e

echo "🎯 Unity VR + Claude Code 統合環境セットアップ開始"
echo "=================================================="

# 変数設定（YaAkiyama環境用）
GITHUB_USERNAME="${1:-YaAkiyama}"
PROJECT_DIR="/mnt/c/Users/$(whoami)/vr-development"
UNITY_VERSION="2022.3.61f1"

# Phase 1: 基本環境確認
echo "📋 Phase 1: 基本環境確認..."
./scripts/check-prerequisites.sh

# Phase 2: プロジェクトクローン
echo "📋 Phase 2: GitHubプロジェクトクローン..."
mkdir -p "$PROJECT_DIR" && cd "$PROJECT_DIR"

echo "🔄 リポジトリクローン中..."
git clone "https://github.com/$GITHUB_USERNAME/unity-vr-quest3-template.git"
git clone "https://github.com/$GITHUB_USERNAME/unity-mcp-integration.git"
git clone "https://github.com/$GITHUB_USERNAME/vr-dev-environment-setup.git"

# Phase 3: UnityMCP セットアップ
echo "📋 Phase 3: UnityMCP セットアップ..."
cd unity-mcp-integration
./scripts/setup-unity-mcp.sh "$PROJECT_DIR/unity-mcp-integration"

# Phase 4: Unity プロジェクト設定
echo "📋 Phase 4: Unity プロジェクト準備..."
echo "🎮 Unity Hub で以下を実行してください："
echo "  1. Unity $UNITY_VERSION をインストール"
echo "  2. '$PROJECT_DIR/unity-vr-quest3-template' をプロジェクトに追加"
echo "  3. Mixed Reality features を確認"

echo "✅ 環境セットアップ完了！"
echo ""
echo "🚀 次のステップ："
echo "  1. UnityMCPサーバー起動: cd $PROJECT_DIR/unity-mcp-integration/unity-mcp-ts && node build/index.js"
echo "  2. Unity Editor でプロジェクト開く"
echo "  3. Edit → Preferences → Unity MCP → Connect"
echo "  4. Claude Code テスト: claude 'Unity MCPサーバーとの接続状況を確認してください'"
