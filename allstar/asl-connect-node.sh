#!/bin/bash
# Usage: asl-connect-node.net <target_node>

MY_NODE=<your_node_id>

TARGET_NODE=$1

# Disconnect all current links
sudo /usr/sbin/asterisk -rx "rpt cmd $MY_NODE ilink 6"

# Wait 30 seconds
sleep 30

# Connect to target node

# Local monitor only (testing) - delete this when done testing
sudo /usr/sbin/asterisk -rx "rpt cmd $MY_NODE ilink 8 $TARGET_NODE"

# Transceive (live) - uncomment when done testing 
# sudo /usr/sbin/asterisk -rx "rpt cmd $MY_NODE ilink 3 $TARGET_NODE"
