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

variable "vnet_address_space" {
  description = "Adressbereich des VNets (CIDR)"
  type        = list(string)
  default     = ["10.10.0.0/16"]
}

variable "subnets" {
  description = "Subnetze: Name => Adressbereich (CIDR)"
  type        = map(string)
  default = {
    app  = "10.10.1.0/24"
    data = "10.10.2.0/24"
  }
}
