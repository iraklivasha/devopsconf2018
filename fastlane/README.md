fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew cask install fastlane`

# Available Actions
### update_all
```
fastlane update_all
```


----

## iOS
### ios test
```
fastlane ios test
```
Test and generate code coverage report
### ios TestFlightBeta
```
fastlane ios TestFlightBeta
```
Build and submit to Testflight
### ios analyze
```
fastlane ios analyze
```

### ios certify
```
fastlane ios certify
```


----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
