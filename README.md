# Image color picker

![Add a heading](https://user-images.githubusercontent.com/45489310/78457255-b9d4f980-765d-11ea-8d17-78bb21297de6.png)

Pick color from image (assets/network/file) and get color hexcodes 

## Installation

First, add `image_color_picker: ^1.0.0` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

Import 

```dart
import 'import 'package:image_color_picker/image_color_picker.dart';';
```

Just provide Image either by assets/network/file and get colorCodes

## Network

```dart
onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NetworkImageBG(
                          networkpath:
                              'https://media-exp1.licdn.com/dms/image/C5122AQEtG7CO0rFCRg/feedshare-shrink_800/0?e=1588809600&v=beta&t=kc8G2jGTOzxm0ehLchKh0SlTSyUl62Vtb5K59P00BLY',
                        )));
          },
```

## Asset

```dart
onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AssetImageBG(
                          assetPath: 
                              'https://media-exp1.licdn.com/dms/image/C5122AQEtG7CO0rFCRg/feedshare-shrink_800/0?e=1588809600&v=beta&t=kc8G2jGTOzxm0ehLchKh0SlTSyUl62Vtb5K59P00BLY',
                        )));
          },
```

## File

```dart
onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FileImageBG(
                          filePath: 
                              File('./path')),
                        ));
          },
```



## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

MIT License

Copyright (c) 2020 Zeeshux7860

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
