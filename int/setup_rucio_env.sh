# Environtment set up file for the int testing "experiment" 
export RUCIO_FNAL_DEV=true
export DOCKER_BUILDKIT=1
#export FNAL_RUCIO_VERSION=1.23.11.post2
#export FNAL_RUCIO_VERSION=1.23.14
#export FNAL_RUCIO_VERSION=1.24.5.post1
#export FNAL_RUCIO_VERSION=1.25.7
#export FNAL_RUCIO_VERSION=1.26.1.post1
#export FNAL_RUCIO_VERSION=1.26.5
#export FNAL_RUCIO_VERSION=1.26.6
#export FNAL_RUCIO_VERSION=1.26.7
#export FNAL_RUCIO_VERSION=1.26.8
export FNAL_RUCIO_VERSION=1.26.9

if [ -z ${RUCIO_FNAL_DEV} ]; then
    export FNAL_RUCIO_VERSION_TAG=${FNAL_RUCIO_VERSION}
else
    export FNAL_RUCIO_VERSION_TAG="latest"
fi

# Make sure to set EXPERIMENT, FNAL_RUCIO_DIR, FNAL_EXP_RUCIO_CERT, FNAL_EXP_RUCIO_KEY, FNAL_EXP_RUCIO_CA_BUNDLE
export EXPERIMENT=int
export FNAL_RUCIO_DIR=/nashome/b/bjwhite/dev/rucio/rucio-fnal

# Only the filenames are needed. The files should be resident in $FNAL_EXP_RUCIO_DEPLOYMENT_CONF_DIR/certs 
export FNAL_EXP_RUCIO_CERT=int-rucio.okd.fnal.gov-cert.pem
export FNAL_EXP_RUCIO_KEY=int-rucio.okd.fnal.gov-key.pem
export FNAL_EXP_RUCIO_CA_BUNDLE=ca_bundle.pem
