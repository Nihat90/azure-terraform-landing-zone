variable "environment" {
  description = "Umgebung, z. B. dev oder prod"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "prod"], var.environment)
    error_message = "environment muss 'dev' oder 'prod' sein."
  }
}

variable "location" {
  description = "Azure-Region für alle Ressourcen"
  type        = string
  default     = "germanywestcentral"
}

variable "owner" {
  description = "Verantwortliche Person (wird als Tag gesetzt)"
  type        = string
  default     = "nihat"
}
