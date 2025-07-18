#!/bin/bash

PROJECT_PATH=$1
VISIBILITY=${2:-public}  # default: public
DATE=$(date)
LOG_FILE="$HOME/.autogit_log.txt"

# === VALIDATION ===
if [ -z "$PROJECT_PATH" ]; then
  echo "❌ Usage: ./autogit_existing.sh <project_path> [public|private]"
  exit 1
fi

if [ ! -d "$PROJECT_PATH" ]; then
  echo "❌ Folder '$PROJECT_PATH' does not exist!"
  exit 1
fi

cd "$PROJECT_PATH" || exit

PROJECT_NAME=$(basename "$PROJECT_PATH")

# === INIT GIT IF NEEDED ===
if [ ! -d ".git" ]; then
  git init
  git branch -M main
fi

# === README IF MISSING ===
if [ ! -f README.md ]; then
  echo "# $PROJECT_NAME" > README.md
  echo -e "📁 Project: $PROJECT_NAME\n🕒 Created: $DATE" >> README.md
fi

git add .
git commit -m "Initial commit by AutoGit"
gh repo create "ritesh355/$PROJECT_NAME" --$VISIBILITY --source=. --remote=origin --push

echo "$DATE - Existing project '$PROJECT_NAME' pushed to GitHub [$VISIBILITY]" >> "$LOG_FILE"
echo "✅ Project '$PROJECT_NAME' successfully pushed to GitHub!"

