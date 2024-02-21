variable  "key_id" {
  default = "arn:aws:kms:us-east-1:046694289523:key/61697761-0640-4796-8fb9-1e709acec556"
}
variable "parameters" {
  default = {
    "dev.expense.rds.username"              = "admin1"
    "dev.expense.rds.endpoint"              = "dev-expense-rds.cr4u6mguqffy.us-east-1.rds.amazonaws.com"
    "dev.expense.frontend.backend_endpoint" = "https://backend-dev.jyothsnashrey.online/" # through this end point we can communicate to SQL from backend
    "newrelic.account"                      =  "4347734"
    "dev.expense.frontend.app_version"      = "1.0.1"
    "dev.expense.backend.app_version"       =   "1.0.1"

    "prod.expense.rds.username"              = "admin1"
    "prod.expense.rds.endpoint"              = "dev-expense-rds.cr4u6mguqffy.us-east-1.rds.amazonaws.com"
    "prod.expense.frontend.backend_endpoint" = "https://backend-dev.jyothsnashrey.online/" # through this end point we can communicate to SQL from backend
    "prod.expense.frontend.app_version"      = "1.0.1"
    "prod.expense.backend.app_version"       =   "1.0.1"
  }
}


## note in org we don't keep password in git repo, just for lab purposes we are declaring and hard coding
variable "secrets" {
  default = {
    "dev.expense.rds.password"                  = "ExpenseApp123"
    "ssh.password"                              = "DevOps321"
    "ssh.username"                              = "centos"
    "ses.username"                              = "AKIAQVXZSKBZQGEKFMZR"
    "ses.password"                              = "BNPF8gmGmHBfN8w1gOGD9vSxM/SMU1vJpStf1NNBLoh9"
    "grafana.apikey"                            = "glsa_9GUmErWRoUHkhKSIRcc29PTSHkOTg7Zd_25363249"
    "dev.expense.frontend.newrelic.key"         = "NRAK-BMDPUXRA7KOAJQU0NQJ9BBZULYV"
    "dev.expense.backend.newrelic.key"          = "d9956a6780aeea098434782b799181b4FFFFNRAL"
    "elasticsearch.password"                    = "4SFV+643faD+CE9rxQV3"
    "artifactory.user"                          = "admin"
    "artifactory.password"                      = "Admin123"

    "prod.expense.rds.password"                  = "ExpenseApp123"
    "prod.expense.frontend.newrelic.key"         = "NRAK-BMDPUXRA7KOAJQU0NQJ9BBZULYV"
    "prod.expense.backend.newrelic.key"          = "d9956a6780aeea098434782b799181b4FFFFNRAL"

  }
}
