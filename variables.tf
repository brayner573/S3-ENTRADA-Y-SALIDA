variable "aws_region" {
  description = "Región AWS donde se crearán los buckets"
  type        = string
  default     = "us-east-1"
}

variable "bucket_entrada_name" {
  description = "Nombre del bucket de entrada (para archivos .csv)"
  type        = string
}

variable "bucket_salida_name" {
  description = "Nombre del bucket de salida (para archivos .json)"
  type        = string
}
