terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.47"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.10"
    }
  }
}

variable "region" {
  default     = "us-east-2"
}

variable "cluster_name" {
  default     = "demo"
}

provider "aws" {
  region = var.region
}

