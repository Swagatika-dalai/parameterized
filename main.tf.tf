provider "aws" {
    profile = "myaws"
    region = var.region
  
}

resource "aws_s3_bucket" "poc4_bktt_s3" {
  count = var.region == "eu-central-1" ? 1 : 0
  bucket = "hsghgsho135fgshh"
}

resource "aws_s3_bucket" "poc874_bktt_s3" {
  count = var.region == "us-east-1" ? 1 : 0
  bucket = "afvjjoiyr53ch990gv"
}


variable "region" {

}
