resource "aws_db_instance" "default" {
  engine               = "mysql" #select db
  engine_version       = "8.0" #version of db
  parameter_group_name = "default.mysql8.0" #parameter group name:- option for practice
  db_name              = "mydb" # database name
  username             = "dbuser"  # master username
  password             = "dbpass123" # master password
  instance_class       = "db.t3.micro" #instance type
  allocated_storage    = 10 #storage in gb
  skip_final_snapshot  = true
}