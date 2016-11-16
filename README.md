# AssistiveTouch
[![CI Status](http://img.shields.io/travis/kishikawakatsumi/IDCardKeyboard.svg?style=flat)](https://travis-ci.org/kishikawakatsumi/IDCardKeyboard)
[![Version](https://img.shields.io/cocoapods/v/IDCardKeyboard.svg?style=flat)](http://cocoadocs.org/docsets/IDCardKeyboard)
[![Platform](https://img.shields.io/cocoapods/p/IDCardKeyboard.svg?style=flat)](http://cocoadocs.org/docsets/IDCardKeyboard)
![](https://camo.githubusercontent.com/7d97f558ccb8751e27fa65eeee94047955eba100/68747470733a2f2f63646e2d696d616765732d312e6d656469756d2e636f6d2f6d61782f313630302f312a7861666332716159644d375a4f68655957614d6d51412e706e67)
# AssistiveTouch
☕️A custom button just like the system AssistiveTouch ☕️
##### :eyes: See also:
![dititalkeyboard_display](https://cloud.githubusercontent.com/assets/8440220/20342636/3aa082d8-ac26-11e6-9e37-e5a65fe65563.gif) 
### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 0.39.0+ is required to build AssistiveTouch 3.0.0+.

To integrate AssistiveTouch into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>'
    pod 'AssistiveTouch'
```


Then, run the following command:

```bash
$ pod install
```

## :book: Usage
  ``` bash
        let assistiveTouch = AssistiveTouch(frame: CGRect(x: 10, y: 100, width: 56, height: 56))
        assistiveTouch.addTarget(self, action: #selector(tap(sender:)), for: .touchUpInside)
        assistiveTouch.setImage(UIImage(named: "AsstisTouch"), for: .normal)
        view.addSubview(assistiveTouch)

  ```
   :key: Basics Swift 3.0
