# Cloudflare DNS Updater
## Synopsis
A script that reconciles a Cloudflare DNS A-record against the hosts current public IP address.

## Configuration 

| Variable                  | Description | Default |
|---------------------------|-------------|---------|
| CF_UPDATER_LOGLEVEL       | Python log level (`DEBUG`, `INFO`, `WARNING`, `ERROR`, `CRITICAL`) |  `INFO` |
| CF_UPDATER_ZONE_ID        | **Required** DNS Zone ID  in Cloudflare Websites Dashboard | `""` |
| CF_UPDATER_A_RECORD       | **Required** Zones DNS A-record to change | `""` |
| CF_UPDATER_TOKEN          | **Required** Cloudflare API Token with permissions to change DNS Records | `""` |
| CF_UPDATER_INTERVAL       | Seconds to wait between reconsiliation runs | `30` |
| CF_UPDATER_FORCE_INTERVAL | To stay far away from Cloudflares rate limits, it's not recomended to use a interval of less than 5s. To override this set to `True`. See https://developers.cloudflare.com/fundamentals/api/reference/limits/| `False`|

## Run
Fill a env-file with your details
```
vi .env
```

Run the container 
```
docker compose up -d
```