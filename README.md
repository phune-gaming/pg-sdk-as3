# Phune Gaming SDK for ActionScript 3

## Environment setup

### IDE

Download and install [FlashDevelop IDE](http://www.flashdevelop.org/).

### Configure the environment

Open the FlashDevelop project file `base-game-wrapper.as3proj`.

Open file `bat/SetupSDK.bat` and edit:
* the `FLEX_SDK` (the Flex SDK is included in the FlashDevelop)
* the `ANDROID_SDK` (if want to build for Android)

In the command line run `bat/CreateCertificate.bat` to create a self-signed certificate to be used for Android.

## Getting started

Open the class [`GameRootImpl`](https://github.com/phune-gaming/pg-sdk-as3/blob/master/src/com/presenttechnologies/phunegaming/client/gamesample/GameRootImpl.as) and override the functions as defined in the [GameRoot API documentation] (http://fjorge.github.io/pg-sdk-as3/apidocs/com/presenttechnologies/phunegaming/client/platform/view/game/GameRoot.html).

## AS3 docs

For more information, including example usages, please browse the [asDocs](http://fjorge.github.com/pg-sdk-as3/apidocs/index.html).

## License

Copyright (c) 2014 Present Technologies

Licensed under the MIT license.
