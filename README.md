# Immich in a homelab

This repo is my personal configuration for using immich
on my homelab.
Immich is an asset self-hosting solution and the
[Immich docs](https://docs.immich.app/overview/quick-start)
are pretty good and can explain a bit more about how to set
it up.

## Environment Variables

I've mostly used the recommended environment variables
from when I first set up Immich, but I did add one
to enable Prometheus and updated the ports in the
docker-compose file to reflect that.

## Media Storage

I'm storing the majority of the assets on a mounted
NAS drive rather than on the VM.

## Backup

I've created a short script being run by a cron job
to sync the library on the NAS drive with S3 Glacier.
Note that S3 Glacier will charge for retrieval and for 
deleting assets that are less than 12 months old, so
this is purely a disaster recovery solution.