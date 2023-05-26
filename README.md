# Asus Router SSL Updater

This repository contains a Bash script for automatically updating wildcard SSL certificates on Asus routers. The script uses the `acme.sh` script and works with the NGINX service. 

The script is designed to work with the Advanced DNS service from Namecheap.com. 

## Prerequisites

### Entware

To start, you need to implement Optware on your Asus router. Entware is a software repository that offers various software programs that can be installed on your router. 

Please refer to the following guide for implementing Entware: [https://github.com/RMerl/asuswrt-merlin.ng/wiki/Entware]

### acme.sh

After implementing Optware, you need to install the `acme.sh` script. `acme.sh` is a simple, powerful, and user-friendly shell script for generating and managing certificates from Let's Encrypt.

Please refer to the following guide for installing `acme.sh`: [https://github.com/acmesh-official/acme.sh]

### Namecheap Account Configuration

The script requires that you set up an `account.conf` file which will be stored in `/tmp/home/root/.acme.sh/` directory on your router. This file should contain your Namecheap API key, username, and source IP address, as well as the user path for the router. An example `account.conf` file is provided in this repository. Replace the placeholders with your actual details:

```bash
NAMECHEAP_API_KEY='<your-namecheap-api-key>'
NAMECHEAP_USERNAME='<your-namecheap-username>'
NAMECHEAP_SOURCEIP='<your-source-ip>'
USER_PATH='/opt/bin:/opt/sbin:/bin:/usr/bin:/sbin:/usr/sbin:/home/simulacra:/mmc/sbin:/mmc/bin:/mmc/usr/sbin:/mmc/usr/bin:/opt/sbin:/opt/bin:/opt/usr/sbin:/opt/usr/bin'
