# SettingsManagerUI
A Python-based user interface for managing dynamic settings.

## Overview

SettingsManagerUI is a package designed to provide a simple and user-friendly interface for managing application settings stored in JSON format. It allows users to view, edit, and reset settings through a graphical interface built with PyQt.

<img src="docs/screenshot.png" alt="Sample GUI" width="400"/>

# Integrating SettingsManagerUI within Another Package
To integrate SettingsManagerUI within another package, follow these steps:  
- Create a JSON Settings File with the appropriate structure.
- Initialize the SettingsTableDialog: Import and initialize the SettingsTableDialog class with the path to your JSON file and the block key.  
- Display the Dialog: Use the exec() method to display the settings dialog.
-  
Here is an example of how to use SettingsManagerUI within another package:


```python
# Import the SettingsTableDialog class
from setting_manager_ui.setting_ui import SettingsTableDialog

# Initialize the settings dialog with the path to the JSON file and the block key
dialog = SettingsTableDialog("path/to/config.json", block_key="block_key")

# Connect the Ok button signal to a method
dialog.accepted.connect(onOkClicked)

# Connect the Apply button signal to a method
dialog.applyClicked.connect(onApplyClicked)

# Display the settings dialog
dialog.exec()

```


## JSON Structure

The JSON file used by SettingsManagerUI should have the following structure:

```json
{
    "block_key1": {  // block 1
        "section1": {  // tab 1
            "parameter2": {
                "type": "string|int|float|dropdown", // currently four types are supported
                "value": "default_value",
                "default": "default_value",
                "auto": true|false,  // optional to enable a checkbox to enable automatic value
                "options": ["option1", "option2"]  // for dropdown type only
            },
            "parameter2": {
                ...
            },
            ...
        },
        "section2": { // tab 2
            ...
        },
    },
    "block_key2": {  // block 2
        ...
    },
}
```


## License
This package is licensed under the GPL-3.0 license. See the LICENSE file for more details.

## Author
[Mahmud Haghighi](https://www.ipi.uni-hannover.de/en/haghighi/)

## Contact
For any questions or issues, please create an issue on the GitHub repository.

