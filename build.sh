#!/bin/bash
set -e

VERSION=${1:-"0.0.0"}
echo "Building version $VERSION..."

# ビルドディレクトリを作成
mkdir -p dist

# 成果物をコピー（実際のプロジェクトではここでビルドコマンドを実行）
cp -r *.json *.md *.js dist/ 2>/dev/null || true

# ZIP にパッケージ
cd dist
zip -r "../release-practice-v${VERSION}.zip" .
cd ..

echo "Build complete: release-practice-v${VERSION}.zip"
