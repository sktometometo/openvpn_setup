# openvpn setup

I comfirmed these setting works well with Ubuntu 20.04 Desktop as OpenVPN server and Ubuntu 18.04 Desktop as OpenVPN Client

`openvpn`, `easy-rsa`, `net-tools`, `bridge-utils` should be installed to both machines.

See links for details

- https://zenn.dev/noraworld/articles/openvpn-installation-and-setup-guidebook
- https://www.digitalocean.com/community/tutorials/how-to-set-up-and-configure-an-openvpn-server-on-ubuntu-20-04-ja
- https://www.openvpn.jp/document/how-to/#Introduction

## setup tun server

1. generate ca.crt, server.crt, server.key, dh.pem, and ta.key and move them to /etc/openvpn
2. modify server_tun.conf with your configuration and move it to /etc/openvpn/server.conf
4. allow ip package forward with sysctl
5. setup firewall
6. sudo service openvpn@server start

Please see `sudo journalctl -xe` if openvpn server does not run well.

## setup tun client

1. generate ca.crt, client.crt, client.key, dh.pem, and ta.key and move them to /etc/openvpn
2. modify client_tun.conf with your configuration and move it to /etc/openvpn/client.conf
3. sudo service openvpn@client start

Please see `sudo journalctl -xe` if openvpn client does not run well.

## setup tap server

1. generate ca.crt, server.crt, server.key, dh.pem, and ta.key and move them to /etc/openvpn
2. modify server_tap.conf with your configuration and move it to /etc/openvpn/server.conf
3. modify ./script/bridge-start with your configuration and execute it
4. allow ip package forward with sysctl
5. setup firewall
6. sudo service openvpn@server start

Please see `sudo journalctl -xe` if openvpn server does not run well.

## setup tap client

1. generate ca.crt, client.crt, client.key, dh.pem, and ta.key and move them to /etc/openvpn
2. modify client_tap.conf with your configuration and move it to /etc/openvpn/client.conf
3. sudo service openvpn@client start
4. sudo dhclient tap0

Please see `sudo journalctl -xe` if openvpn client does not run well.
