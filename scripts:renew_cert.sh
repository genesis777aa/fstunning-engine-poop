#!/bin/bash
sudo certbot renew --quiet && sudo systemctl restart nginx
