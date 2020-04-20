#!/bin/bash

kill $(ps aux | grep '[-]-host' | awk '{print $2}')
