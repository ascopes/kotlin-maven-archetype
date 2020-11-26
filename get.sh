#!/usr/bin/env sh
ensure() {
  command -v "${1}" || (echo "Please ensure \"${1}\" is installed and present in your \$PATH, and then try again." && exit)
  return 0
}

ensure java
ensure mvn
ensure git

TEMP_DIR="$(mktemp -d)"
CWD="$(readlink -e "$(pwd)")"
cd "${TEMP_DIR}" || exit
git clone https://github.com/ascopes/kotlin-maven-archetype.git
cd kotlin-maven-archetype || exit
mvn install
cd "${CWD}" || exit
rm "${TEMP_DIR}" -R

mvn archetype:generate -DarchetypeGroupId=io.ascopes -DarchetypeArtifactId=kotlin-maven-archetype
