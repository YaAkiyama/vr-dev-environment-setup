# VR Development Environment Setup

Unity VR + Claude Code + Meta Quest 3 統合開発環境の自動構築ツール

## 🚀 Quick Start

新しいマシンでの完全復元:
git clone https://github.com/YaAkiyama/vr-dev-environment-setup.git
cd vr-dev-environment-setup
./scripts/full-environment-setup.sh

## 📦 構成要素

この自動化ツールは以下の3つのリポジトリを統合管理します：

- **[unity-vr-quest3-template](https://github.com/YaAkiyama/unity-vr-quest3-template)** - Unity VRプロジェクト本体
- **[unity-mcp-integration](https://github.com/YaAkiyama/unity-mcp-integration)** - Claude Code + Unity統合
- **vr-dev-environment-setup** - 環境構築自動化（このリポジトリ）

## 🔧 対応環境

- Windows 11 + WSL 2 (Ubuntu 20.04)
- Unity 2022.3.61f1 LTS
- Meta Quest 3
- Claude Code 1.0.44+
- GitHub CLI v2.76.0+

## 📋 機能

- ✅ 完全自動環境構築
- ✅ 前提条件チェック
- ✅ GitHubリポジトリ一括クローン
- ✅ UnityMCP自動セットアップ
- ✅ 環境バックアップ・復元
- ✅ トラブルシューティングガイド

## 🛠️ スクリプト一覧
scripts/
├── check-prerequisites.sh    # 前提条件チェック
├── full-environment-setup.sh # 完全環境構築
├── backup-current-environment.sh # 環境バックアップ
└── test-restoration.sh      # 復元テスト

## 🎯 使用方法

### 前提条件チェック
./scripts/check-prerequisites.sh

### 完全環境セットアップ
./scripts/full-environment-setup.sh [GitHubユーザー名]

### 現在の環境バックアップ
./scripts/backup-current-environment.sh

### 復元テスト
./scripts/test-restoration.sh

## 📁 セットアップ後の構造
vr-development/
├── unity-vr-quest3-template/   # Unity VRプロジェクト
├── unity-mcp-integration/      # UnityMCP統合
└── vr-dev-environment-setup/   # この自動化ツール

## 🚀 開発フロー

1. **環境構築**: `./scripts/full-environment-setup.sh`
2. **Unity起動**: Unity Hub → VRプロジェクト追加
3. **UnityMCP起動**: `node build/index.js`
4. **Claude Code接続**: Unity MCP連携
5. **VR開発開始**: Meta Quest 3対応開発

## 🔗 関連リンク

- [Unity Hub Download](https://unity.com/download)
- [Meta Quest Developer Hub](https://developer.oculus.com/downloads/package/oculus-developer-hub-win/)
- [Claude Code Documentation](https://docs.anthropic.com/)

## 📝 トラブルシューティング

### よくある問題

- **Claude Code未認識**: PATH設定確認
- **UnityMCP接続エラー**: Unity Editor再起動
- **ポート競合**: ポート27182使用状況確認
- **GitHub認証エラー**: `gh auth login` で再認証

### サポート

問題が発生した場合は、各リポジトリのIssuesページでご報告ください。

## 🎉 開発環境完成

このツールにより、どの環境でも**10分以内**に Unity VR + Claude Code 統合開発環境を復元できます。
