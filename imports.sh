#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.kms_crypto_key_version.google_kms_crypto_key_version.this' 'projects/stackguardian-nonprod/locations/us/keyRings/clara-gcp-bucket/cryptoKeys/clara-gcp-bucket/cryptoKeyVersions/5'