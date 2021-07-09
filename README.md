# hoge

## setup tun server

See

- https://zenn.dev/noraworld/articles/openvpn-installation-and-setup-guidebook
- https://www.digitalocean.com/community/tutorials/how-to-set-up-and-configure-an-openvpn-server-on-ubuntu-20-04-ja
- https://www.openvpn.jp/document/how-to/#Introduction

1. generate ca.crt, server.crt, server.key, dh.pem, and ta.key
2. modify server_tun.conf with your configuration
3. move them to /etc/openvpn
4. allow ip package forward with sysctl
5. setup firewall
6. sudo service openvpn@server start

## setup tun client

1. generate ca.crt, client.crt, client.key, dh.pem, and ta.key
2. modify client_tun.conf with your configuration
3. move them to /etc/openvpn
6. sudo service openvpn@client start