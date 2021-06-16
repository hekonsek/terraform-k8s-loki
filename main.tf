resource "helm_release" "loki" {
  name       = "loki"
  create_namespace = true
  namespace = "monitoring"
  atomic = true

  repository = "https://grafana.github.io/helm-charts"
  chart      = "loki-stack"

  values = [
    file("${path.module}/values.yml")
  ]
}