# SINfi

**SINfi** is an automated WiFi auditing tool for Linux based operating systems. It is designed to act as an extension and wrapper for `wifite`, streamlining the process of attacking WiFi networks to crack their passwords.

*Script by [infinite667*

---

## Features

SINfi provides a highly automated, menu-driven interface for:

1. **Default Handshake Attack** (All Brands)
2. **Check for New Handshakes** (Ignores existing)
3. **WPS Attacks** (Pixie Dust, Null PIN, WPS PIN)
4. **Targeted Pixie Dust Attack**
5. **Targeted Null PIN / WPS PIN Attacks**
6. **PMKID Attacks**
7. **Display Cracked Access Points**
8. **Crack Existing Handshakes**

## Requirements

The script will automatically check for and attempt to install the following dependencies if they are not present:
- `wifite`
- `xterm`

*Note: You must be running a Debian-based Linux distribution (e.g. Parrot OS, Kali Linux) inside an X (graphical) session as `root`.*

## Usage

```bash
# Ensure the script is executable
chmod +x SIN-Wifi.sh

# Run the script as root
sudo ./SIN-Wifi.sh
```

Follow the interactive on-screen menu to select your desired attack vector.

## Handshake Cracking

The repository includes a companion file `Crack Handshake` which contains instructions/resources for cracking captured handshakes. Use option 8 in the menu to target your captured data.

---
**Disclaimer**: This tool is for educational purposes and authorized auditing only. Usage of SINfi for attacking targets without prior mutual consent is illegal. It is the end user's responsibility to obey all applicable local, state, and federal laws.
