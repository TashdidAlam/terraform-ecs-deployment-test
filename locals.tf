locals {
  bucket_name = "tashdid-ecs-tf-test"
  table_name  = "tashdidEcsTfTest"

  ecr_repo_name = "tashdid-demo-app-ecr-repo"

  demo_app_cluster_name        = "tashdid-demo-app-cluster"
  availability_zones           = ["us-east-1a", "us-east-1b", "us-east-1c"]
  demo_app_task_famliy         = "tashdid-demo-app-task"
  container_port               = 3000
  demo_app_task_name           = "tashdid-demo-app-task"
  ecs_task_execution_role_name = "tashdid-demo-app-task-execution-role"

  application_load_balancer_name = "tashdid-cc-demo-app-alb"
  target_group_name              = "tashdid-cc-demo-alb-tg"

  demo_app_service_name = "tashdid-cc-demo-app-service"
}