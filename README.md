# Biometric Authentication

Fingerprint and Face ID authentication in Flutter with local_auth and BLoC/Cubit.

## Overview

Device-level biometric authentication (fingerprint and Face ID), with the availability check and the authentication result handled by separate Cubits.

## Features

- Checks whether biometrics can be used on the device
- Authenticates with `local_auth`
- Separate Cubits and states for availability and authentication
- Cubits provided through `MultiBlocProvider`

## Tech stack

Flutter · Dart · local_auth · flutter_bloc

## Getting started

```bash
flutter pub get
flutter run
```

---

Built by [Abdul Wahab](https://github.com/DevWahabBaloch), Senior Flutter Developer · [Portfolio](https://devwahabbaloch.web.app/)
