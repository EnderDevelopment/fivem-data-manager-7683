# FiveM Data Manager

A versatile FiveM script for managing player data with ESX integration.

## Features

- ESX integration for seamless server interaction
- Database operations for storing and retrieving player data
- Customizable settings and cooldown management
- Notification system for user feedback

## Requirements

- FiveM server with ESX framework
- MySQL database

## Installation

1. Download the script files
2. Place them in your FiveM server's resources directory
3. Add `start fivemscript` to your server.cfg

## Usage

### Commands

| Command | Permission | Description |
|---------|------------|-------------|
| /fivemscript | user | Triggers the FiveM Data Manager feature |

### Events

- `fivemscript:clientEvent` - Client-side event for receiving data
- `fivemscript:serverEvent` - Server-side event for processing and storing data

## Configuration

Edit the `config.lua` file to customize:

- Database table name
- Feature enable/disable
- Cooldown time

---

## Generated with EnderDevelopment

This plugin was generated in minutes with [EnderDevelopment](https://enderdevelopment.com) — the AI platform that turns your ideas into working Minecraft plugins, Discord bots and FiveM scripts.

**Want your own?** [Generate this project on EnderDevelopment](https://dash.enderdevelopment.com?utm_source=github&utm_medium=readme&utm_campaign=fivem-data-manager&utm_content=bottom) — describe it in one sentence and get the full source code.