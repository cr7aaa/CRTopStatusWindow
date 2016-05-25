# CRTopStatusWindow

```
系统原生的只支持只有一个scrollview的情况，在界面中有多个scrollview时点击状态栏不会滚动到顶部。

```

```
支持界面中多个scrollview的情况，而且支持到iOS9，（在iOS9中window需要添加rootviewController,当window的优先级高于alter时会挡掉状态栏，需要在viewcontroller中实现prefersStatusBarHidden方法）。

```
使用方法

```
在appdelegate的didFinishLaunching方法中
添加[CRTopWindow show];

当不需要时 调用[CRTopWindow hide];

```
