#!/usr/bin/env bash

java -Xms{{ heap_size }} -Xmx{{ heap_size }} -XX:MaxPermSize=128M -jar {{ prod_dir }}/spigot.jar
