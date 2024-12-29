import os

# run `python update_version.py` to update the version in the files


def updateVersionInFile(file_path, version):
    with open(file_path, 'r') as file:
        lines = file.readlines()

    with open(file_path, 'w') as file:
        for line in lines:
            if line.startswith('__version__'):
                file.write(f"__version__ = '{version}'\n")
            else:
                file.write(line)


def main():
    version_file_path = os.path.join(os.path.dirname(__file__), 'VERSION')
    with open(version_file_path, 'r') as version_file:
        version = version_file.read().strip()

    # List of files to update with version information
    files_to_update = [
        'setting_manager_ui/json_settings.py',
        'setting_manager_ui/setting_ui.py'
    ]

    for file_path in files_to_update:
        updateVersionInFile(file_path, version)


if __name__ == '__main__':
    main()