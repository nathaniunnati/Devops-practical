resource "aws_ecr_repository" "app" {
  name = var.repo_name

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = var.tags
}

output "repository_url" {
  value = aws_ecr_repository.app.repository_url
}

