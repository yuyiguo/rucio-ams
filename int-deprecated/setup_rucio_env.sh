# Environtment set up file for the int testing "experiment" 

# always use 'latest' tag when building docker images
export RUCIO_AMS_DEV=true

# I love parallel builds!
export DOCKER_BUILDKIT=1
export RUCIO_AMS_VERSION=1.29.12

# Make sure to set EXPERIMENT, AMS_RUCIO_CERT, AMS_RUCIO_KEY, AMS_RUCIO_CA_BUNDLE
# Optionally set RUCIO_AMS_EXT_SERVER_IP, RUCIO_AMS_EXT_AUTH_IP, RUCIO_AMS_EXT_WEBUI_IP, RUCIO_AMS_EXT_MSG_IP
# For AMS_RUCIO_CERT, AMS_RUCIO_KEY, AMS_RUCIO_CA_BUNDLE only the filenames are needed.
#   The files should be resident in $AMS_RUCIO_DEPLOYMENT_CONF_DIR/certs 
#export EXPERIMENT=int
export AMS_RUCIO_CERT=int-rucio.fnal.gov-cert.pem
export AMS_RUCIO_KEY=int-rucio.fnal.gov-key.pem
export AMS_RUCIO_CA_BUNDLE=ca_bundle.pem

# configuration for the optional automatix and suspicious replica recoverer daemons
export RUCIO_AMS_AUTOMATIX_CONF=automatix.json
export RUCIO_AMS_SUSPICIOUS_REPLICA_CONF=suspicious_replica_recoverer.json

# External IPs
export RUCIO_AMS_EXT_SERVER_IP=131.225.218.160
export RUCIO_AMS_EXT_AUTH_IP=131.225.218.159
export RUCIO_AMS_EXT_MSG_IP=131.225.218.157
export RUCIO_AMS_EXT_WEBUI_IP=131.225.218.158