# Firewall Configuration Project

This project contains tasks for learning about how to configure a server's firewall using `ufw` (Uncomplicated Firewall).

## Tasks To Complete

### 0. Block all incoming traffic but allow specific ports

`0-block_all_incoming_traffic_but` contains `ufw` commands for configuring the firewall to meet the following requirements.

#### Requirements:
- Install the `ufw` firewall and set up a few rules on the `web-01` server given to you.
- The requirements below must be applied to `web-01` (feel free to do it on `lb-01` and `web-02`, but it won't be checked).
- Configure `ufw` so that it blocks all incoming traffic, except the following TCP ports:
  - 22 (SSH)
  - 443 (HTTPS SSL)
  - 80 (HTTP)
