variable "pm_api_url" {
  description = "URL da API do Proxmox"
  type        = string
}

variable "pm_user" {
  description = "Usuário para a API do Proxmox"
  type        = string
}

variable "pm_password" {
  description = "Senha para a API do Proxmox"
  type        = string
}

variable "target_node" {
  description = "Nó do Proxmox onde a VM será criada"
  type        = string
}

variable "template_name" {
  description = "Nome do template de Ubuntu"
  type        = string
}

variable "vm_name" {
  description = "Nome da VM"
  type        = string
}

variable "cores" {
  description = "Número de cores da CPU para a VM"
  type        = number
}

variable "memory" {
  description = "Quantidade de memória RAM para a VM (em MB)"
  type        = number
}

variable "disk_size" {
  description = "Tamanho do disco da VM (ex: 20G)"
  type        = string
}
