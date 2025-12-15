<h1 align="center">CN-JP-KEYBOARD</h1>

<p align="center">
  <a href="docs/README_en.md"><img alt="English" src="https://img.shields.io/badge/English-333"></a>
  <a href="README.md"><img alt="中文" src="https://img.shields.io/badge/中文-333"></a>
  <a href="docs/README_jp.md"><img alt="日本語" src="https://img.shields.io/badge/日本語-333"></a>
</p>

<p align="center">
  <em>
    Remap Chinese (Pinyin) input to a Japanese keyboard layout with correct punctuation behavior — and add a macOS-style Kana key for one-touch switching between Japanese and other inputs.
  </em>
</p>

<p align="center">
  <em>
    在日文键盘上输入中文（拼音）时保持标点正确输出，并提供类似 macOS 的【かな】一键切换功能，提升跨语言输入体验。
  </em>
</p>

<p align="center">
  <em>
    日本語キーボードで中国語（ピンイン）を正しく入力できるようにし、macOS風の「かな」キーでワンタッチ切替を提供します。
  </em>
</p>

<p align="center">
    <img src="https://img.shields.io/badge/AutoHotkey-v2.0-green?logo=autohotkey&logoColor=white" alt="AutoHotkey v2.0">
    <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="MIT License">
    <img src="https://img.shields.io/github/stars/CC5103/CN-JP-KEYBOARD?style=social" alt="GitHub Stars">
</p>

<p align="center"><b>⭐ 如果您觉得本项目有用，欢迎在 GitHub 上为本项目点个⭐星支持一下！ ⭐</b></p>

---

## 📌 目录
- [📌 目录](#-目录)
- [📢 项目简介](#-项目简介)
- [🚀 功能特点](#-功能特点)
- [🖥️ 支持系统](#️-支持系统)
- [⚙️ 使用方法](#️-使用方法)
- [🛠️ 恢复方法](#️-恢复方法)
- [🔧 故障排除](#-故障排除)
- [📜 许可证](#-许可证)


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
   - 运行 **`Keyboard_CN_to_JP\Change_Keyboard_CN_to_JP.reg`**  
     用于修改注册表，实现中文标点映射功能。

3. **仅使用 かな 键功能**  
   - 运行 **`Kana_to_jp\install_ahk_and_startup.bat`**
     用于安装 AutoHotkey 并设置开机自动运行 Kana 脚本。
   > - 推荐设置（可选）:  
   >   **無変換** 键作为一键英文切换键：
   >   - 打开 **设置 → 时间和语言 → 语言和区域 → Japanese → 选项 → Microsoft IME → 键盘和触摸自定义** → 键分配  
   >   - 将 **無変換** 设置为 **IME off**

4. <span style="color:red;">**应用更改**</span>
   - 重启电脑。

## 🛠️ 恢复方法

1. **恢复中文标点映射功能**  
   - 运行 **`Keyboard_CN_to_JP\Restore_Keyboard_CN.reg`**  
     用于恢复注册表至默认状态。

2. **移除 かな 键功能**
    - 运行 **`Kana_to_jp\Restore_kana_to_jp.bat`**  
      用于移除开机自动运行的 Kana 脚本。
    - 卸载 AutoHotkey（如果不再需要）。

3. <span style="color:red;">**应用更改**</span>  
   - 重启电脑。
  
## 🔧 故障排除

如果运行 **`Keyboard_CN_to_JP\Change_Keyboard_CN_to_JP.reg`** 后，发现输入法列表中出现了**多余的输入法选项**，请按以下步骤操作：

1. 按下 **Win + R** 打开「运行」窗口，输入 `regedit` 并回车，打开注册表编辑器。

2. 导航至以下路径：

   ```plaintext
   HKEY_CURRENT_USER\Keyboard Layout\Preload
   ```

   删除多余的输入法项（通常只保留 `"1"` 和 `"2"`，其余项可删除）。

3. 接着检查以下路径：

   ```plaintext
   HKEY_CURRENT_USER\Keyboard Layout\Substitutes
   ```

   确认是否**只存在**

   ```plaintext
   "00000804"="00000411"
   ```

   若存在其他项，请将其删除。

4. 最后，删除以下路径下的设置缓存：

   ```plaintext
   HKEY_CURRENT_USER\Control Panel\International\User Profile\zh-Hans-CH
   ```

完成上述操作后，**重启电脑**，问题通常即可解决。

## 📜 许可证

本项目使用 **MIT License** 开源许可。  
详见 [LICENSE](LICENSE) 文件。
