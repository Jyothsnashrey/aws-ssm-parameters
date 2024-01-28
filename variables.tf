variable  "key_id" {
  default = "arn:aws:kms:us-east-1:046694289523:key/61697761-0640-4796-8fb9-1e709acec556"
}
variable "parameters" {
  default = {
    "dev.expense.rds.username" = "admin1"
    "dev.expense.rds.endpoint" = "dev-expense-rds.cr4u6mguqffy.us-east-1.rds.amazonaws.com" # through this end point we can communicate to SQL from backend
  }
}


## note in org we don't keep password in git repo, just for lab purposes we are declaring and hard coding
variable "secrets" {
  default = {
    "dev.expense.rds.password" = "ExpenseApp123"
  }
}
