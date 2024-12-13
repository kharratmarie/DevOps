output "instance_details" {
  description = "Detailed information about the EC2 instance"

  value = {
    instance_id       = aws_instance.public_instance.id                           # ID de l'instance EC2
    instance_public_ip = aws_instance.public_instance.public_ip                   # Adresse IP publique de l'instance
    instance_private_ip = aws_instance.public_instance.private_ip                 # Adresse IP privée de l'instance
    instance_name      = aws_instance.public_instance.tags["Name"]                # Nom de l'instance
    security_group_id  = aws_instance.public_instance.vpc_security_group_ids      # ID du groupe de sécurité associé
    subnet_id          = aws_instance.public_instance.subnet_id                    # ID du sous-réseau de l'instance
  }
}
