<p align="center">
  <a href="https://github.com/Fliggy-Mobile">
    <img width="200" src="https://gw.alicdn.com/tfs/TB1a288sxD1gK0jSZFKXXcJrVXa-360-360.png">
  </a>
</p>

<h1 align="center">fdottedline</h1>


<div align="center">

<p>Use the easiest way to create a dotted line view 👀!</p>

<p>[FDottedLine] provides developers with the ability to create dashed lines. It also supports creating a dashed border for a [Widget]. Support for controlling the thickness, spacing, and corners of the dotted border.</p>

<p><strong>Author：<a href="https://github.com/chenBingX">Newton</a>(<a href="coorchice.cb@alibaba-inc.com">coorchice.cb@alibaba-inc.com</a>)</strong></p>

<p>

<a href="https://pub.dev/packages/fdottedline#-readme-tab-">
    <img height="20" src="https://img.shields.io/badge/Version-1.0.1-important.svg">
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

**English | [简体中文](https://github.com/Fliggy-Mobile/fdottedline/blob/master/README_CN.md)**

> Like it? Please cast your **Star**  🥰 ！

# ✨ Features

- Supports dotted lines in both horizontal and vertical directions

- Support to create dashed shapes

- Provide super easy way to add dotted border to **Widget**

- Support creating flexible dotted corner effects

## ⚙️ Parameter & Interface

### 🔩 FDottedLine param

|Param|Type|Necessary|Default|desc|
|---|---|:---:|---|---|
|color|Color|false|`Colors.black`|Dotted line color|
|height|double|false|null|height. If there is only [height] and no [width], you will get a dotted line in the vertical direction.If there are both [width] and [height], you will get a dotted border.|
|width|double|false|null|width. If there is only [width] and no [height], you will get a dotted line in the horizontal direction.If there are both [width] and [height], you will get a dotted border.|
|strokeWidth|double|false|1.0|The thickness of the dotted line|
|dottedLength|double|false|5.0|The length of each small segment in the dotted line|
|space|double|false|3.0|The distance between each segment in the dotted line|
|corner|FDottedLineCorner|false|null|The corners of the dotted border. See [FDottedLineCorner] for details|
|child|Widget|false|null|If [child] is set, [FDottedLine] will serve as the dotted border of [child].At this time, [width] and [height] will no longer be valid.|


## 📺 Demo

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

It is very simple to create a horizontal dotted line through **FDottedLine**.

The developer only needs to set the `width` parameter, but not the `height` parameter, which is all the developer needs to do for this.

If you want to control the thickness of the dotted line, set `strokeWidth`.

Through the `dottedLength` and `space` parameters, developers can freely control the length of each small segment in the dotted line and the distance between them.

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

If you want to create a dotted line in the vertical direction, it is also very simple.

Developers only need to assign a value to `height` and leave `width` to be `null` or **0**.

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

**FDottedLine** can not only create simple dotted lines 🌝.

When developers assign values ​​to both width and height, they will be able to get a dotted rectangle! It's incredible.

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
  
  /// Set corner
  corner: FDottedLineCorner.all(50),
)
```

With **FDottedLine**, developers can even create corner effects of dashed rectangles. For example: dotted rounded rectangle, dotted round...

### 🧩 Child Demo

![](https://gw.alicdn.com/tfs/TB1aSZaI1H2gK0jSZFEXXcqMpXa-360-324.png)

```dart
FDottedLine(
  color: color,
  strokeWidth: 2.0,
  dottedLength: 8.0,
  space: 3.0,
  corner: FDottedLineCorner.all(6.0),
  
  /// add widget
  child: Container(
    color: Colors.blue[100],
    width: 130,
    height: 70,
    alignment: Alignment.center,
    child: Text("0873"),
  ),
)
```

In the past, it was very difficult to add a dotted border to a **Widget**. 

Because the official did not provide us with a good solution. But now, **FDottedLine** makes things easier than ever. Developers only need to use their **Widget** as a child of **FDottedLine**.

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

This also means that through the nesting of **FDottedLine**, many super interesting views can be created.

### 💡 More Demo

![](https://gw.alicdn.com/tfs/TB17_wjI8r0gK0jSZFnXXbRRXXa-480-511.png)

See what **FDottedLine** can do!

When there is such a simple way to create a dotted line, developers can freely build more wonderful views.


![](https://gw.alicdn.com/tfs/TB1geStkIKfxu4jSZPfXXb3dXXa-720-227.gif)

More about the application of  **FDottedLine** , look forward to the exploration of developers 🔆.

# 😃 How to use？

Add dependencies in the project `pubspec.yaml` file:

## 🌐 pub dependency

```
dependencies:
  fdottedline: ^<version number>
```

> ⚠️ Attention，please go to [**pub**] (https://pub.dev/packages/fdottedline) to get the latest version number of **FDottedLine**

## 🖥 Git dependency

```
dependencies:
  fdottedline:
    git:
      url: 'git@github.com:Fliggy-Mobile/fdottedline.git'
      ref: '<Branch number or tag number>'
```

> ⚠️ Attention，please refer to [**FDottedLine**] (https://github.com/Fliggy-Mobile/fdottedline) official project for branch number or tag.


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

### Like it? Please cast your [**Star**](https://github.com/Fliggy-Mobile/fdottedline) 🥰 ！


---

# How to run Demo project?

1.**clone** project to local

2.Enter the project `example` directory and run the following command

```
flutter create .
```

3.Run the demo in `example`
