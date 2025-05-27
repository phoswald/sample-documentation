#!/bin/bash
SOURCE_DIR="src/main/resources/mermaid"
TARGET_DIR="target/classes/mermaid/generated"
EXTENSION="png"
DOCKER_IMAGE="ghcr.io/mermaid-js/mermaid-cli/mermaid-cli"
DOCKER_USER="$(id -u):$(id -g)"
mkdir -p "${TARGET_DIR}"
docker run --rm "${DOCKER_IMAGE}" --version > "${TARGET_DIR}/version.txt"
for SOURCE_FILE in "${SOURCE_DIR}"/*.mmd; do
  TARGET_FILE="${TARGET_DIR}/$(basename ${SOURCE_FILE%.mmd}).${EXTENSION}"
  echo "Generating ${EXTENSION} from ${SOURCE_FILE}"
  docker run --rm -u "${DOCKER_USER}" -v $(pwd):/data "${DOCKER_IMAGE}" -i "${SOURCE_FILE}" -o "${TARGET_FILE}"
done
