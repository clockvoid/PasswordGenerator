# PasswordGenerator
A simple password generator implemented by Haskell.

## Description
This is a password generator implemented by Haskell. To make random string, give it a character nunmber.

The created string can be included symbols, numbers and capital and small characters. Almost all of web site suggests safty is better.

You can select type of these characters. If you give the program `a`, it will make string includes only alphabet and `n`, numbers and `s`, symbols.

## Intallation
```bash
git clone https://clockvoid/PasswordGenerator
cd PasswordGenerator
stack build
stack exec PasswordGenerator-exe
```

## Require
random-1.1(stack will rsolve correctly)
