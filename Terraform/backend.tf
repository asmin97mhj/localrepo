terraform {
    backend "s3" {
        bucket = "asminkobucket"
        key = "terrform/backend"
        region = "us-east-1"
    }
}