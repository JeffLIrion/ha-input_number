#!/bin/bash

(
cat <<-EOF
#!/bin/bash

# 1. Delete files
rm -rf custom_components/input_number
mkdir -p custom_components/input_number/translations

# 2. Download files
cd custom_components/input_number
wget https://raw.githubusercontent.com/JeffLIrion/home-assistant/dev-plus-custom-components/homeassistant/components/input_number/__init__.py
wget https://raw.githubusercontent.com/JeffLIrion/home-assistant/dev-plus-custom-components/homeassistant/components/input_number/manifest.json
wget https://raw.githubusercontent.com/JeffLIrion/home-assistant/dev-plus-custom-components/homeassistant/components/input_number/reproduce_state.py
wget https://raw.githubusercontent.com/JeffLIrion/home-assistant/dev-plus-custom-components/homeassistant/components/input_number/services.yaml
wget https://raw.githubusercontent.com/JeffLIrion/home-assistant/dev-plus-custom-components/homeassistant/components/input_number/template_number.py


# 3. Download translations files
cd translations
EOF
) > update.sh

# 3. Download translations files
for translation in $(ls $repos/home-assistant/homeassistant/components/input_number/translations/); do
  echo "wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/$translation" >> update.sh
done

chmod a+x update.sh
