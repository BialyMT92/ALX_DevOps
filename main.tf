resource "aws_s3_bucket" "ci_cd_bucket" {
  bucket = "jenkins-bialy-terraform-ci-cd-bucket-example" 
  tags = {
    Name        = "bialy_CiCdBucket"
    ManagedBy   = "bialy_GitHubActions"
  }
}

