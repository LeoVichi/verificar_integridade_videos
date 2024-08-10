# Verificador de Vídeos

Este script em Bash verifica a integridade de arquivos de vídeo em um diretório específico, identificando possíveis erros nos arquivos usando o `ffmpeg`. Ele suporta várias extensões de vídeo e gera logs detalhados em caso de problemas.

## Como Usar

1. **Clone o repositório:**

   ```bash
   git clone https://github.com/LeoVichi/verificar_integridade_videos.git
   cd verificador-de-videos
   ```

2. **Edite o script `verificar_videos.sh`** para definir o caminho do diretório que contém os vídeos:

   ```bash
   diretorio_videos="/caminho/para/seus/videos"
   ```

3. **Instale as dependências**

   # Para sistemas baseados em Debian (Ubuntu):
    sudo apt-get update
    sudo apt-get install ffmpeg

4. **Execute o script:**

   ```bash
   bash verificar_videos.sh
   ```

   O script irá iterar sobre os vídeos no diretório especificado e verificar a integridade de cada arquivo. Se algum erro for encontrado, um log será gerado com os detalhes.

## Requisitos

- Sistema operacional baseado em Unix (Linux, macOS)
- Ferramentas básicas de linha de comando: `bash`, `ffmpeg`

## Licença

Este projeto é licenciado sob os termos da licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
