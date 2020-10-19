echo '# Increase log verbosity
log_level = "DEBUG"

# Setup data dir
data_dir = "/tmp/server1"
bind_addr = 192.168.1.2

# Enable the server
server {
    enabled = true

    # Self-elect, should be 3 or 5 for production
    bootstrap_expect = 1
}' > /etc/nomad.d/nomad.hcl

export NOMAD_ADDR=192.168.1.2:4646

echo 'job "webserver" {
  datacenters = ["dc1"]
  type = "service"
  
  group "webserver" {
  
    task "webserver" {
	  driver = "docker"
	  
	  config {
	    image = "httpd"
		force_pull = true
		port_map = {
		  webserver_web = 80
		}
		logging {
		  type = "journald"
		  config {
		    tag = "WEBSERVER"
		  }
		}
	  }
	  
	  service {
	    name = "webserver"
		port = "webserver_web"
	  }
	  
	  resources {
	    network {
		  port "webserver_web" {
		    static = 8000
		  }
		}
	  }
	}
  }
}' > webserver.nomad