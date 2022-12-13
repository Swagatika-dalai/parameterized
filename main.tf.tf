provider "aws" {
   
    access_key = var.access_key
    secret_key = var.secret_key
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



variable "access_key" {
  default = "AKIAV6SFYEPQOS5KXFXX"
 
}


variable "secret_key" {
  default = "M4al0i3xlnWb66k4kwW8tb9pdE2f0BhO0sM98QBy"
 
}


