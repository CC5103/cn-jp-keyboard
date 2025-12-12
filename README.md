<p align="center" style="font-size:40px;"><b>CN-JP-KEYBOARD</b></p>

<p align="center"><b>This project remaps Chinese (Pinyin) input methods to the Japanese keyboard layout, ensuring correct and convenient punctuation behavior when typing Chinese on a JP keyboard.</b></p>
<p align="center"><b>It also introduces a macOS-style Kana key that enables one-touch switching to Japanese input, greatly improving cross-language typing efficiency.</b></p>

<p align="center">
    <img src="https://img.shields.io/badge/AutoHotkey-v2.0-green?logo=autohotkey&logoColor=white" alt="AutoHotkey v2.0">
    <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="MIT License">
</p>

<p align="center">
  <a href="README.md"><img alt="English" src="https://img.shields.io/badge/English-333"></a>
  <a href="docs/README_zh.md"><img alt="中文" src="https://img.shields.io/badge/中文-333"></a>
  <a href="docs/README_jp.md"><img alt="日本語" src="https://img.shields.io/badge/日本語-333"></a>
</p>

---

## 📢 Introduction

Typing Chinese (Pinyin) on a Japanese keyboard often leads to mismatched or inconvenient punctuation behavior.  
This project solves the issue by remapping punctuation keys so they output proper Chinese punctuation when using a JP keyboard layout.

In addition, a macOS-like **Kana key** is provided, allowing instant switching to Japanese input mode. This significantly improves the experience for users who frequently alternate between Chinese and Japanese.

## 🚀 Features

- **Punctuation Remapping**  
  Ensures Chinese-style punctuation when typing Chinese on a Japanese keyboard layout.

- **Kana Key Functionality**  
  Provides a dedicated macOS-style Kana key to toggle Japanese input with a single keystroke.

## 🖥️ Supported Systems

Tested on **Windows 11**.  
Expected to work on other Windows versions that use the same IME system, registry paths, and keyboard layout infrastructure.

## ⚙️ How to Use

1. **Download or Clone the Repository**  
   Get the script files from this repository.

   > **If you have not installed the Japanese IME**:  
   > - Go to **Settings → Time & Language → Language & Region**  
   > - Click **Add a language**  
   > - Search for **Japanese**, then install

2. **Use Only Punctuation Remapping**  
   - Run **`Change_Punctuation.ahk`**

3. **Use Only the Kana Key Feature**  
   - Run **`install_ahk_and_startup.bat`** to install AutoHotkey and register the Kana-key script for startup.

4. **Apply Changes**  
   - Restart your computer.

## 📜 License

This project is licensed under the **MIT License**.  
See the [LICENSE](LICENSE) file for details.
