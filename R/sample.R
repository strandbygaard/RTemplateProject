if (!require("config")) install.packages("config")

Sys.setenv(R_CONFIG_FILE = "config/config.yml")
Sys.setenv(R_CONFIG_ACTIVE = "default")

param = config::get("dataset")

sample_function <- function(x) {
  return(2 * x);
}
