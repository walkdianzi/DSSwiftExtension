# DSSwiftExtension
swift版扩展Extension


##Foundation

- NSObject+FromClassName.swift (根据string值转化为class)

##UIKits

- UIView+frame.swift (快速设置UIView的位置)

## Podfile

To integrate DSCategories into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/walkdianzi/DSSpecs.git'
platform :ios, '7.0'

target :targetName do

pod 'DSSwiftExtension', '~> 0.0.1'

end
```

Then, run the following command:

```bash
$ pod install
```

##版本更新

  **0.0.1**
  
  构建框架
  加入UIView+frame.swift
  加入NSObject+FromClassName.swift
