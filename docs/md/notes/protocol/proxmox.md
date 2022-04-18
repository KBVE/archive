---
layout: default
title: Proxmox
grand_parent: Protocol
parent: VM
has_children: false
---
# Proxmox
- Proxmox Virtualization Software Notes

## Cheat Sheet
- Basic CLI (Command-line interface)
	- qEMU
		- man qm
		- qm list
		- qm start $v_id
		- qm shutdown $v_id
		- qm reboot $v_id
		- qm resume $v_id
		- qm reset $v_id
		- qm stop $v_id
		- qm config $v_id
		- qm set -onboot 1 $v_id
	- Proxmox Container
		- man pct
		- pct list
			- pct listsnapshot - To grab all snapshots
		- pct start $v_id
		- pct shutdown $v_id
		- pct reboot $v_id
		- pct config $v_id
		- pct set -memory $v_ram $v_id
			- Example ```pct set -memeroy 1024 420```
			- $v_ram is in megabytes by default.
		- pct enter $v_id

## Backup