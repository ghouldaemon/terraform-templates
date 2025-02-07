resource "aws_dynamodb_table" "terraform-state-lock" {
  name           = "state-terraform"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    yor_name  = "terraform-state-lock"
    yor_trace = "fe8aa5a1-d302-44e0-a24f-bfb6a104476b"
  }
}