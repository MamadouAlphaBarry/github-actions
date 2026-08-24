#!/bin/bash
# Simule un déploiement basé sur l'environnement passé en paramètre

ENVIRONNEMENT=${1:-"staging"}

echo "=== Déploiement en cours sur : $ENVIRONNEMENT ==="

if [ "$ENVIRONNEMENT" != "staging" ] && [ "$ENVIRONNEMENT" != "production" ]; then
    echo "❌ Environnement '$ENVIRONNEMENT' non autorisé !" >&2
    exit 1
fi

echo "Connexion au serveur $ENVIRONNEMENT..."
sleep 1
echo "Mise à jour des fichiers..."
sleep 1

echo "🚀 Déploiement réussi sur $ENVIRONNEMENT !"
exit 0