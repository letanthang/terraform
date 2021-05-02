provider "kubernetes" {
  config_path = "~/.kube/config"
  config_context   = "gke_phrasal-client-312207_asia-southeast1_autopilot-thang1"
}
resource "kubernetes_namespace" "thang-namespace" {
  metadata {
    name = "thangle-namespace"
  }
}
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
    config_context   = "gke_phrasal-client-312207_asia-southeast1_autopilot-thang1"   
  }
}
resource "helm_release" "dev" {
  name          = "myfirsthelm"
  chart         = "../helm/myfirsthelm"
}