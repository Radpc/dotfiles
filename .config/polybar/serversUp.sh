#!/bin/bash

echo "$(ps aux | grep '[-]-host' | wc -l)" 
