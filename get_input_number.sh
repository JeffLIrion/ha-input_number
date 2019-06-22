#!/bin/bash

# input_number
rm -rf custom_components/input_number
mkdir -p custom_components/input_number
wget -O custom_components/input_number/__init__.py https://raw.githubusercontent.com/home-assistant/home-assistant/dev/homeassistant/components/input_number/__init__.py
wget -O custom_components/input_number/manifest.json https://raw.githubusercontent.com/home-assistant/home-assistant/dev/homeassistant/components/input_number/manifest.json
wget -O custom_components/input_number/services.yaml https://raw.githubusercontent.com/home-assistant/home-assistant/dev/homeassistant/components/input_number/services.yaml
