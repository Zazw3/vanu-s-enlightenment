#!/bin/bash

jq '
.bot.token=env.DISCORD_TEST_TOKEN | 
.dbg_api.service_id="example" | 
.mariadb={host:"localhost", user:"root", "password": "", database:"vanus_enlightenment", port: 3306} |
.autostart[0].enabled = false
' json/config.json > json/gitpod_config.json;
mv json/gitpod_config.json json/config.json;