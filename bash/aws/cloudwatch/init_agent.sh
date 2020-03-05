#!/bin/bash

# Intro:
#  - Download and initialize cloudwatch agent
#

# Do not allow use of undefined vars. Use ${VAR:-} to use an undefined VAR
set -o nounset
# Catch the error in case mysqldump fails (but gzip succeeds) in `mysqldump |gzip`
set -o pipefail

# get os info
function getOSType() {
  local sysType='os dtype'
  echo "$sysType" 
}

 function main() {
  osType=$(getOSType)
  echo $osType
 }

 main
