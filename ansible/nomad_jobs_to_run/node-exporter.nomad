job "node_exporter" {
    datacenters = ["dc1"]
    type        = "system"

    group "node-exporter" {
  	    network {
  		    port "node-exporter_ui" {
    	        to = 9100
      	         static = 9100
			}
		}
        service {
	        name = "node-exporter"
            tags =  [
                "node-exporter", "metrics"
            ]
            port = "node-exporter_ui"
        }
	    task "node_exporter" {
            driver = "docker"
            config {
      	        image = "prom/node-exporter:latest"
                ports = ["node-exporter_ui"]
                logging {
        	        type = "journald"
                    config {
          	            tag = "NODE-EXPORTER"
                    }
                }
            }
            resources {
      	        memory = 100
            }  
  	    } 
    }
}