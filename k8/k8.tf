terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
  }
}

provider "kubernetes" {

  config_path = "~/.kube/config"
}
resource "kubernetes_deployment" "flaskapp" {
  metadata {
    name = "flaskapp"
    labels = {
      App = "FlaskApp"
    }
  }

  spec {
    replicas = 2
    selector {
      match_labels = {
        App = "FlaskApp"
      }
    }
    template {
      metadata {
        labels = {
          App = "FlaskApp"
        }
      }
      spec {
        container {
          image = "rangeley826/flaskapp:latest"
          name  = "flaskapp"

          port {
            container_port = 5000
          }

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "flaskapp" {
  metadata {
    name = "flaskapp"
  }
  spec {
    selector = {
      App = kubernetes_deployment.flaskapp.spec.0.template.0.metadata[0].labels.App
    }
    port {
      node_port   = 30201
      port        = 5000
      target_port = 5000
    }

    type = "NodePort"
  }
}