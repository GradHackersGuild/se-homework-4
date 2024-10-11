#!/bin/bash

ps aux | grep infinite.sh | grep -v grep |awk '{print $2}' |xargs -r kill
