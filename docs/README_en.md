<h1 align="center">CN-JP-KEYBOARD</h1>

<p align="center"><b>This project remaps Chinese (Pinyin) input methods to the Japanese keyboard layout, ensuring correct and convenient punctuation behavior when typing Chinese on a JP keyboard.</b></p>
<p align="center"><b>It also introduces a macOS-style Kana key that enables one-touch switching to Japanese input, greatly improving cross-language typing efficiency.</b></p>

<p align="center">
    <img src="https://img.shields.io/badge/AutoHotkey-v2.0-green?logo=autohotkey&logoColor=white" alt="AutoHotkey v2.0">
    <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="MIT License">
    <img src="https://img.shields.io/github/stars/CC5103/CN-JP-KEYBOARD?style=social" alt="GitHub Stars">
</p>

<p align="center">
  <a href="README_en.md"><img alt="English" src="https://img.shields.io/badge/English-333"></a>
  <a href="../README.md"><img alt="中文" src="https://img.shields.io/badge/中文-333"></a>
  <a href="README_jp.md"><img alt="日本語" src="https://img.shields.io/badge/日本語-333"></a>
</p>

<p align="center"><b>⭐ If you find this project useful, please consider giving it a star on GitHub! ⭐</b></p>

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
   - Run **`Keyboard_CN_to_JP\Change_Keyboard_CN_to_JP.reg`**  
     to modify the registry and enable punctuation remapping.

3. **Use Only the Kana Key Feature**  
   - Run **`Kana_to_jp\install_ahk_and_startup.bat`**  
     to install AutoHotkey and set up the Kana script to run at startup.
   > - Recommended Setting (Optional):  
   >   Set the **無変換** key as a one-touch English toggle:
   >   - Open **Settings → Time & Language → Language & Region → Japanese → Options → Microsoft IME → Keyboard and Touch Customization** → Key Assignment  
   >   - Set **無変換** to **IME off**

4. <span style="color:red">**Apply Changes**</span>  
   - Restart your computer.

##　🛠️ How to Restore

1. **Restore Punctuation Remapping**  
   - Run **`Keyboard_CN_to_JP\Restore_Keyboard_CN.reg`**  
     to revert the registry to its default state.

2. **Remove the Kana Key Feature**
    - Run **`Kana_to_jp\Restore_kana_to_jp.bat`  
      to remove the Kana script from startup.
    - Uninstall AutoHotkey if no longer needed.

3. <span style="color:red">**Apply Changes**</span>
   - Restart your computer.

## 📜 License

This project is licensed under the **MIT License**.  
See the [LICENSE](LICENSE) file for details.
