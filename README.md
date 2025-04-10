# Upload `.env` Variables to AWS SSM Parameter Store

This script reads key-value pairs from a `.env` file and uploads them to AWS Systems Manager (SSM) Parameter Store as **SecureString** parameters. This is useful for managing environment variables securely.

## 🛠 Requirements

- AWS CLI installed and configured with appropriate IAM permissions.
- `dev.env` file (or any `.env` file) with environment variables in the format:
