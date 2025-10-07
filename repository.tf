    terraform {
      required_providers {
        github = {
          source  = "integrations/github"
          version = "~> 5.0" # Use the latest stable version
        }
      }
    }

    provider "github" {
      token = "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" # Replace with your actual token or use a variable/environment variable
    }

    resource "github_repository" "example_repo" {
      name        = "my-terraform-repo"
      description = "Repository managed by Terraform"
      visibility  = "public" # or "private"
      # You can add other attributes like `has_issues`, `has_projects`, `auto_init`, etc.
    }