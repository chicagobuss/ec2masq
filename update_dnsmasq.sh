#!/bin/bash
#
# This script is designed to be run by root in a cron job or something like that
# Here's an example cron entry:
# * * * * * /root/update_dnsmasq.sh &> /dev/null

export AWS_ACCESS_KEY_ID=XXXXXXXXXXX
export AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
export AWS_DEFAULT_REGION=us-east-1
python ec2masq.py > /etc/dnsmasq.conf && service dnsmasq restart
