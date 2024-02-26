#!/bin/bash

# Définir le répertoire racine contenant les dossiers
root_dir="/opt/ternoa/"

# Parcourir les dossiers correspondants
for folder in "${root_dir}"node-data-*; do
    # Vérifier si le chemin correspond à un dossier
    if [ -d "$folder" ]; then
        echo "Traitement du dossier : $folder"
        # Exécuter le script original pour le dossier actuel
        find "$folder/chains/mainnet-live/db/full" -type f -name "*.log" -print0 | xargs -0 ls -t | tail -n +11 | xargs rm >/>
    fi
done
