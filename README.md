[![hacs_badge](https://img.shields.io/badge/HACS-Custom-orange.svg)](https://github.com/custom-components/hacs)

**HACS URL:** [JeffLIrion/ha-input_number](https://github.com/JeffLIrion/ha-input_number)


# Input Number

This component is to the built-in [`input_number`](https://www.home-assistant.io/components/input_number/) what a template switch is to an input boolean.  It accomplishes two things:

1. Its value can track other entities by way of a template.
2. When its value is changed, it can run a script.

It is also completely compatible with the built-in `input_number` integration, so it will not break your existing configuration.


## Configuration

In addition to the parameters for a standard [`input_number`](https://www.home-assistant.io/components/input_number/), its configuration variables are:

* **set_value_script**: a script or sequence of actions to perform when changing the value; the new value will be provided as the variable `value`
* **value_template**: a template that will provide the state for the `input_number`
* **icon_template**: a template for this entity's icon
* **entity_id**: a list of entity ID's involved in the `value_template` and `icon_template` templates
* **value_changed_script**: a script or sequence of actions that will be performed when `value_template` changes (but not when `input_number.set_value` or `input_number.set_value_no_script` are called); the new value will be provided as the variable `value`


### Example Configuration

The following demonstrates how to setup `input_number`s that will track the value of a [`cast_volume_tracker`](https://github.com/JeffLIrion/ha-cast_volume_tracker) when its state changes *and* change the value of a [`cast_volume_tracker`](https://github.com/JeffLIrion/ha-cast_volume_tracker) when its value is changed.

```yaml
# individual speaker
computer_speakers:
  name: Computer Speakers
  min: 0
  max: 100
  step: 1
  entity_id:
  - cast_volume_tracker.computer_speakers
  set_value_script:
  - service: cast_volume_tracker.volume_set
    data_template:
      entity_id: cast_volume_tracker.computer_speakers
      volume_level: "{{ value | multiply(0.01) }}"
  value_template: "{{ states('cast_volume_tracker.computer_speakers') | round(0) }}"
  icon_template: >
    {% if not state_attr('cast_volume_tracker.computer_speakers', 'cast_is_on') %}
        mdi:cast
    {% elif state_attr('cast_volume_tracker.computer_speakers', 'is_volume_muted') %}
        mdi:cast-off
    {% else %}
        mdi:cast-connected
    {% endif %}

# individual speaker
kitchen_home:
  name: Kitchen Home
  min: 0
  max: 100
  step: 1
  entity_id:
  - cast_volume_tracker.kitchen_home
  set_value_script:
  - service: cast_volume_tracker.volume_set
    data_template:
      entity_id: cast_volume_tracker.kitchen_home
      volume_level: "{{ value | multiply(0.01) }}"
  value_template: "{{ states('cast_volume_tracker.kitchen_home') | round(0) }}"
  icon_template: >
    {% if not state_attr('cast_volume_tracker.kitchen_home', 'cast_is_on') %}
        mdi:cast
    {% elif state_attr('cast_volume_tracker.kitchen_home', 'is_volume_muted') %}
        mdi:cast-off
    {% else %}
        mdi:cast-connected
    {% endif %}

# Chromecast Audio group (computer_speakers + kitchen_home)
kitchen_speakers:
  name: Kitchen Speakers
  min: 0
  max: 100
  step: 1
  entity_id:
  - cast_volume_tracker.kitchen_speakers
  - cast_volume_tracker.computer_speakers
  set_value_script:
  - service: cast_volume_tracker.volume_set
    data_template:
      entity_id: cast_volume_tracker.kitchen_speakers
      volume_level: "{{ value | multiply(0.01) }}"
  value_template: >
    {% if is_state_attr('cast_volume_tracker.kitchen_speakers', 'cast_is_on', 'true') %}
        {{ states('cast_volume_tracker.kitchen_speakers') | round(0) }}
    {% else %}
        {{ states('cast_volume_tracker.computer_speakers') | round(0) }}
    {% endif %}
  icon_template: >
    {% if not state_attr('cast_volume_tracker.kitchen_speakers', 'cast_is_on') %}
        mdi:cast
    {% elif state_attr('cast_volume_tracker.kitchen_speakers', 'is_volume_muted') %}
        mdi:cast-off
    {% else %}
        mdi:cast-connected
    {% endif %}
```
