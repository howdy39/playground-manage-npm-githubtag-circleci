# playground-manage-npm-githubtag-circleci
package.json.versionのバージョンアップとそれに伴うCIからのビルドの検証


## バージョンアップの方法

```
# packake.jsonのバージョンとgitのタグを作る
$ npm version [patch, minor, major]
$ push origin <TAG_NAME>
```

## 参考サイト
[npm versionコマンドで出来ること。 - Qiita](https://qiita.com/minamo173/items/8b8b27bc6ecd17ad925e)
[package.jsonのversionを更新する - ゆずめも](https://yuzu441.hateblo.jp/entry/2018/03/23/213638)