# Cloudflare DNS Updater
## Synopsis
A script that reconciles a Cloudflare DNS A-record against the hosts current public IP address.

## Configuration 

| Variable | Required | Description | Example | Default |
|----------|----------|-------------|---------|---------|
| CF_UPDATER_ZONE_ID        | yes | DNS Zone ID  in Cloudflare Websites Dashboard | `111111111111111111111111111111111` | - |
| CF_UPDATER_A_RECORD       | yes | Zones DNS A-record to change | `web.site` | - |
| CF_UPDATER_TOKEN          | yes | Cloudflare API Token with permissions to change DNS Records | `some-token-value` | - |
| CF_UPDATER_INTERVAL       | no  | Seconds to wait between reconsiliation runs | `120` | `30` |
| CF_UPDATER_FORCE_INTERVAL | no  | To stay far away from Cloudflares rate limits, it's not recomended to use a interval of less than 5s. To override this set to `True`. See https://developers.cloudflare.com/fundamentals/api/reference/limits/| `True` | `False`|

## Run
Fill a env-file with your details
```
vi .env
```

Run the container 
```
docker compose up -d
```