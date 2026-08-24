#!/bin/bash
# Simule la création d'un paquet de déploiement (ZIP) et injecte la version du commit

BUILD_DIR="dist"
VERSION=${GITHUB_SHA:-"local-build"}

echo "=== Début du Build (Version: $VERSION) ==="

mkdir -p "$BUILD_DIR"
echo "Build version: $VERSION" > "$BUILD_DIR/version.txt"
cp -r scripts "$BUILD_DIR/"

tar -czf "$BUILD_DIR/app-build.tar.gz" -C "$BUILD_DIR" version.txt scripts

echo "✅ Artefact généré avec succès : $BUILD_DIR/app-build.tar.gz"
exit 0