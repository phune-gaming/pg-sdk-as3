# Phune Gaming SDK for ActionScript 3

## Enviroment setup

### IDE

Download and install [FlashDevelop IDE](http://www.flashdevelop.org/) (Open source)

### Configure enviroment (for project base-game-wrapper)

Open FlashDevelop project file base-game-wrapper.as3proj

Open file bat/SetupSDK.bat and edit:
* the FLEX_SDK (the flex SDK is included in the FlashDevelop)
* the ANDROID_SDK (if want to build to Android)

In command line run bat/CreateCertificate.bat to create a self-signed certificate used in Android

### Where to start

It should open the class [GameRootImpl](https://github.com/phune-gaming/pg-sdk-as3/blob/master/src/com/presenttechnologies/phunegaming/client/gamesample/GameRootImpl.as) and override the functions as defined in [GameRoot documentation] (http://fjorge.github.io/pg-sdk-as3/apidocs/com/presenttechnologies/phunegaming/client/platform/view/game/GameRoot.html)

## AS3 docs

You can browse the [asDocs](http://fjorge.github.com/pg-sdk-as3/apidocs/index.html) for more information, including example usages.


