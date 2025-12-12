<h1 align="center">CN-JP-KEYBOARD</h1>

<p align="center"><b>本プロジェクトは、中国語（ピンイン）入力を日本語キーボードで行う際に、句読点が正しく出力されるようキーマッピングを調整するものです。</b></p>
<p align="center"><b>また、macOS の「かな」キーに近いワンタッチ切替機能を提供し、中国語と日本語の入力をシームレスに切り替えることができます。</b></p>

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

<p align="center"><b>⭐ このプロジェクトが役に立った場合、GitHubでスターを付けてサポートしてください！ ⭐</b></p>

---

## 📢 イントロダクション

日本語キーボードで中国語（ピンイン）を入力する場合、句読点が意図したとおりに入力されないことがよくあります。  
本プロジェクトは、これらのキーを再マッピングし、日本語キーボードレイアウトでも正しい中国語の句読点を入力できるようにします。

さらに、macOS の「かな」キーに似たワンタッチ切替機能を搭載しており、日本語入力モードへ瞬時に切り替えることが可能です。  
中国語と日本語を頻繁に切り替えるユーザーにとって非常に便利な機能です。

## 🚀 主な機能

- **中国語用の句読点マッピング**  
  日本語キーボードを使用している場合でも、正しい中国語スタイルの句読点を入力できます。

- **「かな」キー風ワンタッチ切替**  
  macOS の「かな」キーのように、1 回のキー操作で日本語入力モードへ切り替え可能。

## 🖥️ 対応システム

**Windows 11** で動作確認済み。  
同じ IME・レジストリ構造・キーボードレイアウトを使用する他の Windows バージョンでも動作する見込みです。

## ⚙️ 使い方

1. **リポジトリをダウンロードまたはクローン**  
   スクリプト一式を取得してください。

   > **まだ日本語 IME をインストールしていない場合**  
   > - **設定 → 時刻と言語 → 言語と地域** を開く  
   > - **言語を追加する** をクリック  
   > - **Japanese（日本語）** を検索してインストール

2. **句読点マッピングのみ使用する場合**  
   - **`Change_Keyboard_CN_to_JP.reg`** を実行

3. **かなキー機能のみ使用する場合**  
   - **`install_ahk_and_startup.bat`** を実行して AutoHotkey をインストールし、かなスクリプトをスタートアップへ登録

4. **設定を反映させるために**  
   - PC を再起動してください。

## 📜 ライセンス

本プロジェクトは **MIT ライセンス** のもとで公開されています。  
詳細は [LICENSE](LICENSE) を参照してください。
