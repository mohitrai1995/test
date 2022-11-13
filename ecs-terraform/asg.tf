
#------------------------------------------------------------------------------
# AWS Autoscaling Group
#------------------------------------------------------------------------------
resource "aws_autoscaling_group" "asg" {

  name               = "ecs-asg"
  availability_zones = ["us-east-1a"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.ecslt.id
    version = "$Latest"
  }
}
