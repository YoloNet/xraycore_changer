# 🚀 Xray Core Update Script

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Bash](https://img.shields.io/badge/Language-Bash-4EAA25.svg)](https://www.gnu.org/software/bash/)
[![Xray](https://img.shields.io/badge/Xray-Core-blue.svg)](https://github.com/XTLS/Xray-core)

A powerful and user-friendly bash script to effortlessly update your Xray core on Linux systems. Choose from official releases or use a custom URL for maximum flexibility.

## ✨ Features

- 🔄 Automatic backup of existing Xray core
- 📋 Fetches and displays all available official versions
- 🔗 Supports installation of custom Xray core versions
- 🧹 Efficient cleanup of temporary files post-installation
- 📊 Displays newly installed Xray version information

## 🛠 Prerequisites

- Bash shell
- curl
- unzip
- Internet connection
- Root privileges

## 🚀 Quick Start

1. Clone the repository:
```
curl -O https://raw.githubusercontent.com/YoloNet/xraycore_changer/main/xray_core_changer.sh
```
2. Navigate to the script directory:
```
chmod +x xray_core_changer.sh
sudo ./xray_core_changer.sh
```
Follow the on-screen prompts to update your Xray core.

## 🔧 Usage Options

### 1️⃣ Select from Official Versions

Choose from a list of official Xray-core releases fetched directly from the GitHub repository.

### 2️⃣ Enter Custom URL

Provide a custom URL for the Xray core zip file, perfect for modified versions or alternative hosting.

You can find other custom xray core HERE : 👉 https://github.com/YoloNet/Xray-core/releases

## ⚠️ Important Notes

- The script assumes Xray is installed in `/usr/local/bin/xray`.
- Root privileges are required to modify system files.
- Always verify the source of your Xray core, especially when using custom URLs.

## 🤝 Contributing

We welcome contributions, issues, and feature requests! Check out our [issues page](https://github.com/your-username/xray-update-script/issues) to get started.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🛡 Disclaimer

This script is provided as-is, without any warranties. Use at your own discretion and risk.

---

<p align="center">
Made with ❤️ by [YOLONET x REDVPN]
</p>
