job "hello-devops" {
  datacenters = ["dc1"]
  type = "service"

  group "app" {
    count = 1

    task "server" {
      driver = "docker"

      config {
        image = "anshuman271/hello-devops:latest"
        force_pull = true
      }

      resources {
        cpu    = 100 # 100 MHz
        memory = 64  # 64 MB
      }
    }
  }
}