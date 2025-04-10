#!/bin/bash
 
# Set the prefix where you want to keep
TARGET_PREFIX="/myapp/dev"
 
# Read from existing .env file
ENV_FILE="dev.env"  # Change this to your output file or temp file
 
while IFS='=' read -r key value; do
  if [[ -n "$key" && -n "$value" ]]; then
    aws ssm put-parameter \
      --name "$TARGET_PREFIX/$key" \
      --value "$value" \
      --type "SecureString" \
      --overwrite
    echo "Created $TARGET_PREFIX/$key"
  fi
done < "$ENV_FILE"
