terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws" //qual vai ser o provedor
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2" //qual a regiao que vai prover
}

resource "aws_instance" "app_server" { //informações sobre o recurso que vai criar (uma instancia da aws e o nome app_server)
  ami           = "ami-0892d3c7ee96c0bf7" //ami é uma imagem do sistema que vai utilizar (ex Ubuntu)
  instance_type = "t2.micro" //tipo de maquina
  key_name = "iac-alura"
  tags = {
    Name = "Primeira instancia" //nome da instancia
  }
}