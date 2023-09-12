#!/bin/bash

set -e  # Exit on any error

export DEBIAN_FRONTEND=noninteractive

sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y
