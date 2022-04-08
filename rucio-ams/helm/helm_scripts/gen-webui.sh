#!/bin/sh

# Use two files for specifying values so as to keep secrets separate
if [ -z "$RUCIO_AMS_DIR" ]; then
    echo "Please use RUCIO_AMS_DIR to specify a top level directory for the deployment system."
    exit 1
elif [ -z "$EXPERIMENT" ]; then
    echo "Please use EXPERIMENT to specify the name of the experiment you wish to generate config files for."
    exit 1
else
    helm template --release-name rucio-$EXPERIMENT $RUCIO_AMS_DIR/rucio-ams/helm/helm-charts/charts/rucio-ui \
        --set optional_config.experiment=$EXPERIMENT \
        --set image.tag=$RUCIO_AMS_VERSION_TAG \
        --set externalIP=$RUCIO_AMS_EXTERNAL_IP \
        -f $RUCIO_AMS_DIR/$EXPERIMENT/helm/webui/values.yaml \
        -f $RUCIO_AMS_DIR/$EXPERIMENT/helm/secret/config.yaml > $RUCIO_AMS_DIR/$EXPERIMENT/webui.yaml
fi
