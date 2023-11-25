provider "kubernetes" {
  config_path = "~/.kube/config"  # Path to kubeconfig file
}

resource "kubernetes_secret" "my_secret" {
  metadata {
    name      = "app01-golangdemo-secret"
    namespace = "app01-golangdemo"
  }

  data = {
    s3secret = "TVFf7ytw4u2vZyjYDiIP22KekrK5NtZG"
    SQSsecret = "tIscsJGQasope7eQfNBaacRXZuCQ6SRT"
  }

  type = "Opaque"
}
