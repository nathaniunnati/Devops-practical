module "ecr" {
  source    = "./modules/ecr"
  repo_name = var.repo_name
}

module "alb" {
  source         = "./modules/alb"
  project_name   = var.project_name
  vpc_id         = var.vpc_id
  sg_id          = var.alb_sg_id
  public_subnets = var.public_subnets
}

module "ecs" {
  source           = "./modules/ecs"
  project_name     = var.project_name
  image_uri        = var.image_uri
  task_cpu         = var.task_cpu
  task_memory      = var.task_memory
  desired_count    = var.desired_count
  private_subnets  = var.private_subnets
  ecs_exec_role_arn = var.ecs_exec_role_arn
  ecs_task_role_arn = var.ecs_task_role_arn
  cluster_id       = var.ecs_cluster_id
  target_group_arn = module.alb.aws_lb_target_group_app_arn
  ecs_sg_id        = var.ecs_sg_id
  lb_listener_arn  = module.alb.aws_lb_listener_http_arn
  aws_region       = var.aws_region
}

