resource "aws_ecr_repository" "demo_app_ecr_repo" {
  name                 = var.ecr_repo_name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
    tags = {
    Name        = "tashdid-demo-app-ecr-repo"
    Environment = "test"
  }
}