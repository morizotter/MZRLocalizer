MZRLocalizer
==============

It is Localization helper for iOS. You can gether NSLocalizedString in one place with this.

Description
------------

The localization process is very messy. The NSLocalizedString are scattered everywhere in the project. It's not confortable state. This library was created to solve this problem.

The NSLocalizedString functions are gathered in one place - the subclass of MZRLocalizer.  In the first stage, you don't have to write all localization or the constants. Just use the `stringWithKey:` method.

Later, the latter half of the development, localization. At that time, with [Mac App Store - Linguan](https://itunes.apple.com/jp/app/linguan/id477163052?mt=12) you can easily create and edit the multi language localization files.

Installation
-------------

**Cocoapods**

`pod 'MZRLocalizer', :git => "git@github.com:morizotter/MZRLocalizer.git", :tag => "0.0.1"
`

*This library is not listed in Cocoapods spec.*

**Manually**

Just copy **Classes** directory to your project.

Usage
------

**setup**

Subclass the `MZRLocalizer.h`. and override `prepareLocalizationDictionary` method.

ex)

```
- (NSDictionary *)prepareLocalizationDictionary {
	NSMutableDictionary *dict = [NSMutableDictionary dictionary];
	// ViewController
	dict[ExampleLocalizerViewControllerTitle] = NSLocalizedString(@"ExampleLocalizerViewControllerTitle", nil);
	dict[ExampleLocalizerViewControllerJapan] = NSLocalizedString(@"ExampleLocalizerViewControllerJapan", nil);
	dict[ExampleLocalizerViewControllerUnitedStates] = NSLocalizedString(@"ExampleLocalizerViewControllerUnitedStates", nil);
	return [NSDictionary dictionaryWithDictionary:dict];
}
```

This time and when it is needed, you have to add the static constants. It is useful not for typo. And the NSLocalizedString functions remain pure for the later processes.

**prepare .string file**

prepare .string files as you usually do. This time, it is useful for using `genstrings` command or use [Mac App Store - Linguan](https://itunes.apple.com/jp/app/linguan/id477163052?mt=12) - I use Linguan.

**using the localized string**

When using the class, code like this below.

`[[ExampleLocalizer sharedInstance] stringWithKey:ExampleLocalizerViewControllerJapan];`

Please see classes in detail.


Requirement
-----------

- ARC
- iOS7 and later
- iPhone only 

LISENSE
-------

The MIT License (MIT)

Author
-------

Morita Naoki / [Twitter](http://twitter.com/morizotter) / [Facebook](http://facebook.com/morizotter) / [HP](http://moritanaoki.org)