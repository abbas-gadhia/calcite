#!/usr/bin/env bash

NEXT_RELEASE_VERSION=$1
echo "Publishing calcite linq4j"
./gradlew :linq4j:publish -Psemantic-release-next-version="$NEXT_RELEASE_VERSION"

echo "Publishing calcite core"
./gradlew :core:publish -Psemantic-release-next-version="$NEXT_RELEASE_VERSION"

echo "Publishing calcite server"
./gradlew :server:publish -Psemantic-release-next-version="$NEXT_RELEASE_VERSION"

echo "Publishing calcite bom"
./gradlew :bom:publish -Psemantic-release-next-version="$NEXT_RELEASE_VERSION"
