<h1 align="center">CN-JP-KEYBOARD</h1>

<p align="center"><b>本项目用于将中文（拼音）输入法映射到日文键盘布局，使在日文键盘上输入中文时，标点符号能够保持正确且方便的方式输出。</b></p>
<p align="center"><b>同时提供类似于 macOS 的【かな】一键切换功能，可在日语输入与其他输入之间快速切换，大幅提升跨语言输入的效率与体验。</b></p>

<p align="center">
    <img src="https://img.shields.io/badge/AutoHotkey-v2.0-green?logo=autohotkey&logoColor=white" alt="AutoHotkey v2.0">
    <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="MIT License">
    <img src="https://img.shields.io/github/stars/YourName/CN-JP-KEYBOARD?style=social" alt="GitHub Stars">
</p>

<p align="center">
  <a href="../README.md"><img alt="English" src="https://img.shields.io/badge/English-333"></a>
  <a href="README_zh.md"><img alt="中文" src="https://img.shields.io/badge/中文-333"></a>
  <a href="README_jp.md"><img alt="日本語" src="https://img.shields.io/badge/日本語-333"></a>
</p>

<p align="center"><b>⭐ 如果您觉得本项目有用，欢迎在 GitHub 上为本项目点个⭐星支持一下！ ⭐</b></p>

---

## 📢 项目简介

在日文键盘上输入中文（拼音）时，经常会遇到标点符号与中文习惯不符的问题。  
本项目通过重新映射键盘，使在使用日文键盘布局输入中文时能够输出正确的中文标点。

此外，本项目还提供类似 macOS 的【かな】键功能，可一键切换到日语输入模式，对经常中日文切换的用户非常友好。

## 🚀 功能特点

- **中文标点映射**  
  在日文键盘布局下输入中文时，自动输出中文风格的标点符号。

- **かな键切换功能**  
  复刻 macOS 的日文 Kana 切换键，一键切换至日语输入法。

## 🖥️ 支持系统

已在 **Windows 11** 上验证。  
理论上适用于其他使用相同 IME、注册表结构和键盘布局体系的 Windows 版本。

## ⚙️ 使用方法

1. **下载或克隆仓库**  
   获取本仓库中的脚本文件。

   > **如果尚未安装日语输入法（Japanese IME）**：  
   > - 打开 **设置 → 时间和语言 → 语言和区域**  
   > - 点击 **添加语言**  
   > - 搜索 **Japanese** 并安装

2. **仅使用中文标点映射功能**  
   - 运行 **`Change_Keyboard_CN_to_JP.reg`**

3. **仅使用 かな 键功能**  
   - 运行 **`install_ahk_and_startup.bat`**  
     用于安装 AutoHotkey 并设置开机自动运行 Kana 脚本。

4. **应用更改**  
   - 重启电脑。

## 📜 许可证

本项目使用 **MIT License** 开源许可。  
详见 [LICENSE](LICENSE) 文件。
