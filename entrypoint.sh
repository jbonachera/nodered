#!/bin/bash

chown nodered /var/lib/nodered
exec su nodered -c "node-red -u /var/lib/nodered $@"
