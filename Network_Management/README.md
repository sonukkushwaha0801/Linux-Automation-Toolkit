# Network Management Scripts

This directory contains Bash scripts used to perform common **network monitoring, troubleshooting, and diagnostic tasks** on a Linux system.

These scripts are part of the **Linux-Automation-Toolkit** project and are designed to help users automate everyday networking tasks such as connectivity checks, DNS lookups, port monitoring, and network scanning.

---

# 📋 Script Descriptions

## ping_host.sh

Checks connectivity to a host using ICMP ping requests.

**Usage**

```
./ping_host.sh <hostname_or_ip>
```

**Example**

```
./ping_host.sh google.com
```

---

## reverse_dns_lookup.sh

Performs a **reverse DNS lookup** to find the hostname associated with an IPv4 address.

**Usage**

```
./reverse_dns_lookup.sh <IPv4_address>
```

**Example**

```
./reverse_dns_lookup.sh 8.8.8.8
```

---

## dns_lookup_domain.sh

Resolves a domain name and displays the associated IP addresses.

**Usage**

```
./dns_lookup_domain.sh <domain>
```

**Example**

```
./dns_lookup_domain.sh github.com
```

---

## check_dns_server.sh

Checks whether a DNS server is responding to queries.

**Usage**

```
./check_dns_server.sh <dns_server_ip>
```

**Example**

```
./check_dns_server.sh 8.8.8.8
```

---

## get_ip_address.sh

Displays the IPv4 addresses of all active network interfaces.

**Usage**

```
./get_ip_address.sh
```

---

## check_open_ports.sh

Displays all open or listening ports on the system.

**Usage**

```
./check_open_ports.sh
```

---

## check_active_connections.sh

Shows active TCP connections including local and remote addresses.

**Usage**

```
./check_active_connections.sh
```

---

## network_latency_monitor.sh

Calculates the **average network latency** to a given host using ping.

**Usage**

```
./network_latency_monitor.sh <hostname_or_ip>
```

---

## traceroute_host.sh

Traces the network path packets take to reach a destination host.

**Usage**

```
./traceroute_host.sh <hostname_or_ip>
```

---

## website_status_checker.sh

Checks whether a website is reachable and returns its HTTP status code.

**Usage**

```
./website_status_checker.sh <website>
```

**Example**

```
./website_status_checker.sh github.com
```

---

## network_scan.sh

Scans the local network to identify active devices using a ping sweep.

**Usage**

```
./network_scan.sh <network_prefix>
```

**Example**

```
./network_scan.sh 192.168.1
```

---

## network_monitor.sh

Monitors network traffic using available tools such as:

* iftop
* nload
* vnstat

**Usage**

```
./network_monitor.sh
```

---

# 🔧 Requirements

These scripts use standard Linux networking utilities such as:

* `ping`
* `dig`
* `host`
* `ss`
* `ip`
* `traceroute`
* `curl`

Optional monitoring tools:

* `iftop`
* `nload`
* `vnstat`

These utilities are available on most Linux distributions or can be installed using the package manager.

---

# 📌 Purpose of This Module

The **Network_Management** module demonstrates how Bash scripting can automate common networking tasks including:

* Network connectivity testing
* DNS resolution and verification
* Monitoring open ports and active connections
* Measuring network latency
* Tracing packet routes
* Detecting active devices on a network
* Monitoring network traffic

These scripts help users understand **Linux networking concepts and troubleshooting techniques**.

---

