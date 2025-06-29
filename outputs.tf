output "bucket_entrada_name" {
  description = "Nombre del bucket de entrada (CSV)"
  value       = aws_s3_bucket.bucket_entrada.bucket
}

output "bucket_salida_name" {
  description = "Nombre del bucket de salida (JSON)"
  value       = aws_s3_bucket.bucket_salida.bucket
}

output "bucket_entrada_arn" {
  description = "ARN del bucket de entrada (para IAM y notificaciones)"
  value       = aws_s3_bucket.bucket_entrada.arn
}

output "bucket_salida_arn" {
  description = "ARN del bucket de salida (para IAM y notificaciones)"
  value       = aws_s3_bucket.bucket_salida.arn
}
