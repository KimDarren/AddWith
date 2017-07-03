# AddWtih

![Swift](https://img.shields.io/badge/Swift-3.0-orange.svg)
[![CocoaPods](http://img.shields.io/cocoapods/v/AddWith.svg)](https://cocoapods.org/pods/AddWith)

🔌 Add subviews with its' subviews.

## At a Glance

**Add** scroll view **with** it's subviews.

```swift
self.view.add(
  self.scrollView.with(
    self.contentContainer.with(
      self.descriptionLabel
      self.imageView
    )
  ),
  self.backgroundView.with(
    self.backgroundImageView,
    self.logoImageView
  )
)
```

This is equivalent to:

```swift
self.view.addSubview(self.scrollView)
self.scrollView.addSubview(self.contentContainer)
self.contentContainer.addSubview(self.descriptionLabel)
self.contentContainer.addSubview(self.imageView)
self.view.addSubview(self.backgroundView)
self.backgroundView.addSubview(self.backgroundImageView)
self.backgroundView.addSubview(self.logoImageView)
```

## Tips and Tricks

- You can add subviews with array.

    ```swift
    let subviews: [UIView] = [button, label, imageView]
    self.view.add(subviews)
    ```

## Installation

- [CocoaPods](https://cocoapods.org):

    ```ruby
    pod 'AddWith'
    ```

## License

**AddWith** is under MIT license. See the [LICENSE](LICENSE) file for more info.