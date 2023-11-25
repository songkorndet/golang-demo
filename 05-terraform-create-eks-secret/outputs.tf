output "secret_name" {
  value = kubernetes_secret.my_secret.metadata[0].name
}
