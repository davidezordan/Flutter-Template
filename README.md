# Clean Architecture Mobile - Flutter Implementation

[![Build](https://github.com/davidezordan/Flutter-Template/actions/workflows/build-and-release.yml/badge.svg)](https://github.com/davidezordan/Flutter-Template/actions/workflows/build-and-release.yml)

[Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html) is a fantastic way to
look at designing and developing scalable and maintainable software. However, Clean Architecture is very broad and 
often confusing to implement due to how broad it is in specific scenarios.

---

**Packages Version:**

Dart: 2.14.0-178.0.dev

Flutter: 2.3.0-17.0.pre.191

Plugins:
ScopedModel => 1.1.0 (UI & Control & Infrastructure) for MVVM.

---

## Getting Started
### Installing the Android SDK
You need to install the Android SDK in order to be able to deploy the application to Android devices and simulators.

**Windows**

[Here](https://flutter.dev/docs/get-started/install/windows#android-setup) is a perfect guide on how to install the
Android SDK on your windows machine and configure it correctly with flutter.

**Mac OS X**

[Here](https://flutter.dev/docs/get-started/install/macos#android-setup) is a perfect guide on how to install the
Android SDK on your mac os x machine and configure it correctly with flutter.

### Installing XCode & iOS SDK (Mac only)
[Here](https://flutter.dev/docs/get-started/install/macos#android-setup) is a perfect guide to installing and
configuring XCode and the iOS SDK & Simulators.

### Installing Flutter
You need to install the Flutter SDK by following [this](https://flutter.dev/docs/get-started/install) guide.

### Choosing an IDE
Some IDEs for Flutter mobile application development:

- [VS Code](https://code.visualstudio.com/)
- [Android Studio](https://developer.android.com/studio)

### Setting up
Once you have successfully cloned the repository it's time to set up your environment.

**Mac OS X**
1. Open your repository in your chosen IDE. (On opening you may see some errors, do not worry.)
2. Open the terminal
3. Navigate inside of the terminal to the cloned directory. It will look like this:
`cd Desktop/Flutter-Template`
4. Once you have successfully navigated there you must run the following command to allow the execution of a script I
wrote to download all of the necessary packages.
`chmod +x get_packages.sh`
5. Then run the following command:
`./get_packages.sh`
6. You should see in the terminal the script is now running and downloading all of the relevant packages to your local disk.

**Windows**
1. Open your repository in your chosen IDE. (On opening you may see some errors, do not worry.)
2. Navigate to the cloned repository in File Explorer.
3. double click get_packages.bat.
4. The window will open and then close shortly. Once closed all the relevant packages will have been retrieved.

### Running the application
Most IDEs will instantly offer the option at the top of the window to run the template application in a simulator.
However, starting a new technology or using a new IDE can often be overwhelming. [Here](https://flutter.dev/docs/get-started/test-drive?tab=androidstudio)
is a guide tailored to IntelliJ, VSCode, Android Studio and simply using a terminal/cmd.

## References
Clean Architecture - https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html
