#!/bin/bash

# 1. Delete files
cd custom_components/input_number
rm *.py
rm manifest.json
rm services.yaml

# 2. Download files
wget https://raw.githubusercontent.com/JeffLIrion/home-assistant/dev-plus-custom-components/homeassistant/components/input_number/__init__.py
wget https://raw.githubusercontent.com/JeffLIrion/home-assistant/dev-plus-custom-components/homeassistant/components/input_number/manifest.json
wget https://raw.githubusercontent.com/JeffLIrion/home-assistant/dev-plus-custom-components/homeassistant/components/input_number/reproduce_state.py
wget https://raw.githubusercontent.com/JeffLIrion/home-assistant/dev-plus-custom-components/homeassistant/components/input_number/services.yaml
wget https://raw.githubusercontent.com/JeffLIrion/home-assistant/dev-plus-custom-components/homeassistant/components/input_number/template_number.py
