# Rime
我的二笔输入法配置方案。

## 特性

- 4 键上屏，自定义词和原生词按词频动态排序，最大程度优化输入的流畅度。
- 手动精准造词，解决自动造词泛滥的问题。
- 通过 `i` 键反查字词的拼音和二笔编码。
- 通过快捷键控制显示或隐藏字词的拼音、编码。
- 通过 `v` 键输入标点符号。
- 通过 `'` 键临时输入英文。
- 通过输入中文匹配 emoji 。
- 通过二笔编码输入日期、时间。
- 通过快捷键切换简繁体。

## 使用说明

### 查看快捷键

输入 `help` 。

### 造词

由于默认的自动造词容易出现造词过滥的问题，导致输入的过程中因存在大量的临时候选词而影响输入的流畅度，另外，自动造词只能对 4 字以内的词语使用，对 5 字以上的短语无法使用。所以使用精准造词的功能。

用法是：每个字以 `` ` `` 符号开头，然后输入该字的编码，直到该字成为第一候选字为止，然后继续上述步骤，直至输完最后一个字，按空格结束。

### 日期时间

输入日期、时间中文词的编码可以得到多种格式的候选词，支持以下中文词：

- 日期
- 时间
- 星期

## 感谢

- [Rime](https://rime.im/)
- [whjiang/cqeb](https://github.com/whjiang/cqeb)
