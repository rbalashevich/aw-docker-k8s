resource "kubernetes_service" "aw_nginx_web_service" {
  metadata {
    name = "aw-nginx-web-service"

    labels = {
      run = "aw-nginx-web-service"

      tier = "front-end"
    }
  }

  spec {
    port {
      protocol = "TCP"
      port     = 80
    }

    selector = {
      app = "aw-nginx-webserver"
    }

    type = "NodePort"
  }
}

