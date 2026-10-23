---
# 文档可用dumi的markdown增强语法（https://d.umijs.org/guide/markdown）
title: fdottedline
subtitle: 用最简单的方式来创建虚线视图吧 👀 ！
toc: content
group:
  title: 样式 # 此处填写：组件所属的分组："通用","工具","样式","布局","导航","弹窗","数据录入","数据展示","反馈","其他"
  order: 100  # 分组在组件库的展示顺序，必须大于0
pkgName:   # 此处填写：组件简介，用于快速浏览和查询
cover:       # 此处填写：组件封面
order: 100  # 在分组内的展示顺序，必须大于0
links:
  gitlab: https://code.alibaba-inc.com/fapi/fdottedline # 此处填写：组件仓库地址
  design:   # 此处填写：组件设计规范，可选，值为 https://fliggy-design.alibaba-inc.com/design/267000244 设计规范地址的最后id
supports:   # 此处填写：支持的平台
  - ios
  - android
  - harmony

author:
  name: 纽特
  email: # 此处填写：作者邮箱
  userId: # 此处填写：作者用户id
---

<FlutterBasicInfo></FlutterBasicInfo>

<!-- 以下为文档正文 -->

<p align="center">
  <a href="https://github.com/Fliggy-Mobile">
    <img width="200" src="https://gw.alicdn.com/tfs/TB1a288sxD1gK0jSZFKXXcJrVXa-360-360.png">
  </a>
</p>

<h1 align="center">fdottedline</h1>


<div align="center">

<p>用最简单的方式来创建虚线视图吧 👀 ！</p>

<p>[FDottedLine] 为开发者提供了创建虚线的能力。同时支持为一个 [Widget] 创建虚线边框。支持控制虚线的粗细，间距，以及虚线边框的边角。</p>

<p><strong>主理人：<a href="https://github.com/chenBingX">纽特</a>(<a href="coorchice.cb@alibaba-inc.com">coorchice.cb@alibaba-inc.com</a>)</strong></p>

<p>

<a href="https://pub.dev/packages/fdottedline#-readme-tab-">
    <img height="20" src="https://img.shields.io/badge/Version-2.0.0-important.svg">
</a>


<a href="https://github.com/Fliggy-Mobile/fdottedline">
    <img height="20" src="https://img.shields.io/badge/Build-passing-brightgreen.svg">
</a>


<a href="https://github.com/Fliggy-Mobile">
    <img height="20" src="https://img.shields.io/badge/Team-FAT-ffc900.svg">
</a>

<a href="https://www.dartcn.com/">
    <img height="20" src="https://img.shields.io/badge/Language-Dart-blue.svg">
</a>

<a href="https://pub.dev/documentation/fdottedline/latest/fdottedline/fdottedline-library.html">
    <img height="20" src="https://img.shields.io/badge/API-done-yellowgreen.svg">
</a>

<a href="http://www.apache.org/licenses/LICENSE-2.0.txt">
   <img height="20" src="https://img.shields.io/badge/License-Apache--2.0-blueviolet.svg">
</a>

<p>
<p>

</div>


<p align="center">
  <a href="https://github.com/Fliggy-Mobile">
    <img height="720" src="https://gw.alicdn.com/tfs/TB182cqI.z1gK0jSZLeXXb9kVXa-1380-1282.png">
  </a>
</p>

**[English](https://github.com/Fliggy-Mobile/fdottedline) | 简体中文**

> 感觉还不错？请投出您的 **Star** 吧 🥰 ！

# ✨ 特性

- 同时支持水平、垂直两个方向的虚线

- 支持创建虚线形状

- 提供超简单的方式为  **Widget**  添加虚线边框

- 支持创建灵活的虚线边角效果

# 🛠 使用指南


## ⚙️ 参数 & 接口

### 🔩 FDottedLine 参数

|参数|类型|必要|默认值|说明|
|---|---|:---:|---|---|
|color|Color|false|`Colors.black`|虚线颜色|
|height|double|false|null|高。如果只有 [height]，而没有 [width]，将获得一个垂直方向的虚线。如果同时有 [width] 和 [height]，将获得一个虚线边框。|
|width|double|false|null|宽。如果只有 [width]，而没有 [height]，将获得一个水平方向的虚线。如果同时有 [width] 和 [height]，将获得一个虚线边框。|
|strokeWidth|double|false|1.0|虚线的厚度|
|dottedLength|double|false|5.0|虚线中每一小段的长|
|space|double|false|3.0|虚线中每段间的距离|
|corner|FDottedLineCorner|false|null|虚线边框的边角。详见 [FDottedLineCorner]|
|child|Widget|false|null|如果设置了 [child]，[FDottedLine] 将会作为 [child] 的虚线边框。此时，[width] 和 [height] 将不再有效。|


## 📺 使用示例

### 🔩 Horizontal Demo

![](https://gw.alicdn.com/tfs/TB1ClEbI5_1gK0jSZFqXXcpaXXa-360-340.png)

```dart
FDottedLine(
  color: color,
  width: 160.0,
  strokeWidth: 2.0,
  dottedLength: 10.0,
  space: 2.0,
)
```

通过  **FDottedLine**  创建一个水平虚线，异常简单。

开发者只需要设置  `width` 参数，而不设置  `height` 参数，这就是开发者为此所要做的所有事情。

如果想要控制虚线的厚度，设置  `strokeWidth` 就好了。

通过 `dottedLength` 和 `space` 参数，开发者可以自由控制虚线中每一小段的长度，以及它们之间的距离。

### ⛓ Vertical Demo

![](https://gw.alicdn.com/tfs/TB1_eVgXDM11u4jSZPxXXahcXXa-360-319.png)

```dart
FDottedLine(
  color: color,
  height: 160.0,
  strokeWidth: 2.0,
  dottedLength: 10.0,
  space: 2.0,
)
```

如果想要创建垂直方向的虚线，同样很简单。

开发者只需要给   `height`  赋值，而让  `width` 保持为 `null` 或者  **0** 即可。

### 🔹 Dotted Shape Demo

![](https://gw.alicdn.com/tfs/TB1q5Y_IVY7gK0jSZKzXXaikpXa-638-360.png)

```dart
FDottedLine(
  color: Colors.lightBlue[600],
  height: 100.0,
  width: 50,
  strokeWidth: 2.0,
  dottedLength: 10.0,
  space: 2.0,
)
```

 **FDottedLine**  可不仅仅只能创建简单的虚线 🌝。

当开发者同时为  `width` 和  `height` 都赋值时，将能够获得一个虚线矩形！不可思议吧。

### 🌏 Corner Demo

![](https://gw.alicdn.com/tfs/TB17TwjI8r0gK0jSZFnXXbRRXXa-629-360.png)

```dart
FDottedLine(
  color: Colors.lightBlue[600],
  height: 70.0,
  width: 70.0,
  strokeWidth: 2.0,
  dottedLength: 10.0,
  space: 2.0,
  
  /// 设置边角
  corner: FDottedLineCorner.all(50),
)
```

通过  **FDottedLine** ，开发者甚至可以创建出虚线矩形的边角效果。比如：虚线圆角矩形，虚线圆形..

### 🧩 Child Demo

![](https://gw.alicdn.com/tfs/TB1aSZaI1H2gK0jSZFEXXcqMpXa-360-324.png)

```dart
FDottedLine(
  color: color,
  strokeWidth: 2.0,
  dottedLength: 8.0,
  space: 3.0,
  corner: FDottedLineCorner.all(6.0),
  
  /// 添加 widget
  child: Container(
    color: Colors.blue[100],
    width: 130,
    height: 70,
    alignment: Alignment.center,
    child: Text("0873"),
  ),
)
```

在过去，想要为一个  **Widget** 添加虚线边框，是件十分困难的事情。因为官方没有为我们提供很好的解决方案。

但是现在， **FDottedLine**  让事情变得空前简单。开发者只需要将自己的  **Widget**  作为  **FDottedLine**  的  `child` 就行。

![](https://gw.alicdn.com/tfs/TB12HoXIYr1gK0jSZR0XXbP8XXa-360-333.png)


```dart

/// #1
FDottedLine(
  color: color,
  strokeWidth: 2.0,
  dottedLength: 8.0,
  space: 3.0,
  corner: FDottedLineCorner.all(75.0),
  child: Container(
    width: 130,
    height: 130,
    alignment: Alignment.center,
    /// #2
    child: FDottedLine(
      color: color,
      strokeWidth: 2.0,
      dottedLength: 8.0,
      space: 3.0,
      corner: FDottedLineCorner.all(20.0),
      child: Container(
        width: 43.0,
        height: 43.0,
        color: Colors.grey[900],
      ),
    ),
  ),
)
```

这也就意味着，通过  **FDottedLine**  的嵌套，可以创建出很多超级有趣的视图。

### 💡 More Demo

![](https://gw.alicdn.com/tfs/TB17_wjI8r0gK0jSZFnXXbRRXXa-480-511.png)

看看  **FDottedLine**  都能干些什么！

当拥有了如此简单的方式创建虚线，开发者可以自由构建出更多精彩绝伦的视图。

![](https://gw.alicdn.com/tfs/TB1geStkIKfxu4jSZPfXXb3dXXa-720-227.gif)

更多关于  **FDottedLine**  的应用，期待开发者们的探索 🔆。


# 😃 如何使用？

在项目 `pubspec.yaml` 文件中添加依赖：

## 🌐 pub 依赖方式

```
dependencies:
  fdottedline: ^<版本号>
```

> ⚠️ 注意，请到 [**pub**](https://pub.dev/packages/fdottedline) 获取 **FDottedLine** 最新版本号

## 🖥 git 依赖方式

```
dependencies:
  fdottedline:
    git:
      url: 'git@github.com:Fliggy-Mobile/fdottedline.git'
      ref: '<分支号 或 tag>'
```


> ⚠️ 注意，分支号 或 tag 请以 [**FDottedLine**](https://github.com/Fliggy-Mobile/fdottedline) 官方项目为准。


# 💡 License

```
Copyright 2020-present Fliggy Android Team <alitrip_android@list.alibaba-inc.com>.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at following link.

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

```


### 感觉还不错？请投出您的 [**Star**](https://github.com/Fliggy-Mobile/fdottedline) 吧 🥰 ！


---

# 如何运行 Demo 工程？

1.**clone** 工程到本地

2.进入工程 `example` 目录，运行以下命令

```
flutter create .
```

3.运行 `example` 中的 Demo
