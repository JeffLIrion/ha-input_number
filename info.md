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

An example configuration can be found in the [README](https://github.com/JeffLIrion/ha-input_number/blob/master/README.md#example-configuration).
