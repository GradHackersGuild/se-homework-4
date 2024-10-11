#!/bin/bash

ps aux | grep [i]nfinite.sh | grep -v grep | awk '{print $2}' | xargs kill
