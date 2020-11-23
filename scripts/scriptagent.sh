echo '# Increase log verbosity

# Setup data dir
network_interface = "eth1"
# Give the agent a unique name. Defaults to hostname

# Enable the client
client {
    enabled = true

    # For demo assume we are talking to server1. For production,
    # this should be like "nomad.service.consul:4647" and a system
    # like Consul used for service discovery.
    servers = ["192.168.1.2:4647"]
}

# Disable the dangling container cleanup to avoid interaction with other clients
plugin "docker" {
  config {
    gc {
      dangling_containers {
        enabled = false
      }
    }
  }
}' > /etc/nomad.d/nomad.hcl
systemctl restart nomad