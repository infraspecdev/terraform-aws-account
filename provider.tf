provider "aws" {
  alias  = "root"
  region = "ap-south-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
provider "aws" {

  alias  = "new_account"
  region = "ap-south-1"
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.this.id}:role/OrganizationAccountAccessRole"
  }

  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
