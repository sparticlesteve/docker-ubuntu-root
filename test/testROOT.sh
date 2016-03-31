#!/bin/bash

# This script is intended to be run within the docker image
# to test the setup and installation of ROOT and PyROOT.

set -e
source /atlas/root_current/bin/thisroot.sh
root -b -q
python -c "import ROOT"

echo "testROOT successful"
