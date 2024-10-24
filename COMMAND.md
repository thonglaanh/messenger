## Watch for changes and rebuild

```shell
dart run build_runner watch --delete-conflicting-outputs
```

## Format & Fix lint

```shell
dart fix --apply && dart format .
```

## Clean build

```shell
dart run build_runner clean
```

## build APK

```shell
flutter build apk --release --target-platform android-arm,android-arm64,android-x64
```

## Generate environment file

```shell
dart run build_runner clean && dart run build_runner build
```

## Generate SHA-256 certificate fingerprint

```shell
make sha256_cert url=https://openbanking-sandbox.mbbank.com.vn:9004
```