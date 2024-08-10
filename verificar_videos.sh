#!/bin/bash

# Diretório contendo os arquivos de vídeo
diretorio_videos="/inserir/diretorio/videos/aqui"

# Extensões de vídeo que deseja verificar
extensoes=("mp4" "mkv" "avi" "mov")

# Verificar se o diretório existe
if [[ ! -d "$diretorio_videos" ]]; then
  echo "Diretório não encontrado: $diretorio_videos"
  exit 1
fi

# Iterar sobre cada extensão
for ext in "${extensoes[@]}"; do
  echo "Verificando arquivos com extensão: $ext"
  # Encontrar todos os arquivos com a extensão atual em todas as subpastas
  find "$diretorio_videos" -type f -name "*.$ext" | while read -r video; do
    # Verificar se o arquivo existe
    if [[ -f "$video" ]]; then
      echo "Verificando: $video"
      ffmpeg -v error -i "$video" -f null - 2> "${video}_errors.log"
      if [[ $? -ne 0 ]]; then
        echo "Erros encontrados no vídeo: $video"
        cat "${video}_errors.log"
      else
        echo "Vídeo OK: $video"
        rm "${video}_errors.log"
      fi
    else
      echo "Nenhum arquivo encontrado com a extensão: $ext"
    fi
  done
done

