# Peak Detector

![Test Status](https://github.com/highbridge-yayoi/Peak_Detector/actions/workflows/test.yml/badge.svg)


標準入力から数値のリストを読み込み，極大値（山）と極小値（谷）を検出して出力するPythonスクリプトです．

## 使用方法
```
$ git clone git@github.com:highbridge-yayoi/Peak_Detector.git
$ cd Peak_Detector
$ chmod +x pd
$ ./pd
```

## 使い方

```bash
./pd
```

実行後，数値を1行に1つずつ入力してください．
入力が終わったら `Ctrl+D` (Linux/Mac) または `Ctrl+Z` (Windows) を押して入力を終了します．

### 入力例
```
1
3
5
2
8
1
```

### 出力例
```
5
8

2
```

前半が極大値，空行を挟んで後半が極小値です．

## 仕様
- **山 (local_max)**: 前後の値よりも大きい値．
- **谷 (local_min)**: 前後の値よりも小さい値．
- 空行や数値以外の行は無視されます．

## 注意
- なだらかな山や谷は検出しません．
### なだらかな山や谷の例
```
1
5
5
3
2
2
6
6
```

## 必要なソフトウェア

- Python
 - テスト済みバージョン：3.8 ~ 3.12

## 動作環境

- Python 3.13.5
- Ubuntu 22.04.5 LTS

## 権利関係
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布及び使用が許可されます．
- © 2025 ryo takahashi