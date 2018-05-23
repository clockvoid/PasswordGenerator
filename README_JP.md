# PasswordGenerator
A simple password generator implemented by Haskell.

## Description
Haskellで作られたパスワードジェネレータです．文字数を指定すると完全にランダムな文字列を生成します．

文字列には記号と数字も含まれ，また，大文字と小文字も含まれるので，殆どのWebサービスで安全性は良と表示されます．

文字種選択モードも搭載しており，Char型の一文字を渡すことによって指定することが可能です．`a`を渡すとアルファベット，`n`を渡すと数字，`s`を渡すと記号のみでパスワードを生成してくれます．

## Intallation
```bash
git clone https://clockvoid/PasswordGenerator
cd PasswordGenerator
stack build
stack exec PasswordGenerator-exe
```

## Require
random-1.1(stack will rsolve correctly)
