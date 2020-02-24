# example

simple demo

![img](/Users/yanlinhong/临时目录/16cfbd875294f40b.gif)

## Getting Started

In your flutter project add the dependency:

```yml
dependencies:
  spon_rating_bar: ^0.0.1
```

## Usage example

```dart
import 'package:spon_rating_bar/spon_rating_bar.dart';
```

```dart
SponRatingWidget(
                  value: 9,
                  size: 30,
                  padding: 5,
                  nomalImage: 'img/star_nomal.png',
                  selectImage: 'img/star.png',
                  selectAble: true,
                  onRatingUpdate: (value) {
                    ratingValue = value;
                    setState(() {
                    });
                  },
                  maxRating: 10,
                  count: 6,
                )
```

