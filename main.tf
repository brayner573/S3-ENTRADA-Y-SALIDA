resource "aws_s3_bucket" "bucket_entrada" {
  bucket = var.bucket_entrada_name

  force_destroy = true

  tags = {
    Name        = "EntradaBucket"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_public_access_block" "entrada" {
  bucket = aws_s3_bucket.bucket_entrada.id

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket" "bucket_salida" {
  bucket = var.bucket_salida_name

  force_destroy = true

  tags = {
    Name        = "SalidaBucket"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_public_access_block" "salida" {
  bucket = aws_s3_bucket.bucket_salida.id

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  restrict_public_buckets = true
}
