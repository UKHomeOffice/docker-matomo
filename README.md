# Docker-Matomo

This Matomo is being developed by the UK Home Office. This Matomo is a web analytics software platform.

# Requirements

* matomo 3.13.1

# Usage

To use this matomo, first clone this repo

```
git@github.com:UKHomeOffice/docker-matomo.git
```

## Development with Docker
Once you've cloned the project, build the matomo Docker container

```sh
docker build -t matomo .
```

To run the resulting Docker container:

```sh
docker run -it matomo
```

# Drone secrets

Name|Example value
---|---
dev_drone_aws_access_key_id|https://console.aws.amazon.com/iam/home?region=eu-west-2#/users/bf-it-devtest-drone?section=security_credentials
dev_drone_aws_secret_access_key|https://console.aws.amazon.com/iam/home?region=eu-west-2#/users/bf-it-devtest-drone?section=security_credentials
docker_password|xxx (Global for all repositories and environments)
docker_username|docker (Global for all repositories and environments)
drone_public_token|Drone token (Global for all github repositories and environments)
env_kube_namespace_cop_ops|cop-ops-dev, cop-ops-staging, cop-ops
env_kube_server|https://kube-api-notprod.notprod.acp.homeoffice.gov.uk, https://kube-api-prod.prod.acp.homeoffice.gov.uk
env_kube_token|xxx
env_matomo_email_password|xxx ACP SES AWS secret access key (Global for all environments)
env_matomo_email_user|ACP SES AWS access key (Global for all environments)
env_matomo_hostname|matomo.dev.cop.homeoffice.gov.uk, matomo.staging.cop.homeoffice.gov.uk, matomo.cop.homeoffice.gov.uk
env_matomo_image|quay.io/ukhomeofficedigital/docker-matomo
env_matomo_mysql_dbname|copopsmatomodev, copopsmatomostaging, copopsmatomo
env_matomo_mysql_host|copopsmatomodev.cptlzykvnlia.eu-west-2.rds.amazonaws.com, copopsmatomostaging.crckizhiyjmt.eu-west-2.rds.amazonaws.com, copopsmatomo.prod.acp.homeoffice.gov.uk
env_matomo_mysql_password|xxx
env_matomo_mysql_port|5432
env_matomo_mysql_tbl_prefix|matomo_
env_matomo_mysql_user|ownerofmatomo
env_matomo_name|docker-matomo
env_matomo_port|9000
env_matomo_salt|xxx
nginx_image|quay.io/ukhomeofficedigital/nginx-proxy
nginx_tag|latest
production_drone_aws_access_key_id|https://console.aws.amazon.com/iam/home?region=eu-west-2#/users/bf-it-prod-drone?section=security_credentials
production_drone_aws_secret_access_key|https://console.aws.amazon.com/iam/home?region=eu-west-2#/users/bf-it-prod-drone?section=security_credentials
quay_password|xxx (Global for all repositories and environments)
quay_username|docker (Global for all repositories and environments)
slack_webhook|https://hooks.slack.com/services/xxx/yyy/zzz (Global for all repositories and environments)
staging_drone_aws_access_key_id|https://console.aws.amazon.com/iam/home?region=eu-west-2#/users/bf-it-prod-drone?section=security_credentials
staging_drone_aws_secret_access_key|https://console.aws.amazon.com/iam/home?region=eu-west-2#/users/bf-it-prod-drone?section=security_credentials
