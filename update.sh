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
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/af.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/ar.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/bg.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/bs.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/ca.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/cs.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/cy.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/da.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/de.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/el.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/en.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/es-419.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/es.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/et.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/eu.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/fi.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/fr.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/he.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/hi.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/hr.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/hu.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/hy.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/id.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/is.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/it.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/ko.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/lb.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/lv.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/nb.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/nl.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/nn.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/no.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/pl.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/pt-BR.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/pt.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/ro.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/ru.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/sk.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/sl.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/sv.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/te.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/th.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/tr.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/uk.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/vi.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/zh-Hans.json
wget https://raw.githubusercontent.com/home-assistant/core/dev/homeassistant/components/input_number/translations/zh-Hant.json
