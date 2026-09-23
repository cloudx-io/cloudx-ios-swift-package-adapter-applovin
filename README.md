# CloudX AppLovin adapter Swift package

This repository distributes the AppLovin MAX auction adapter for the CloudX
iOS SDK.

## Requirements

- iOS 13 or later
- Xcode 15 or later
- CloudX Core 3.9.1 or later

## Installation

Add this package in Xcode:

```text
https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-applovin.git
```

Select an exact package version from the compatibility table. Add the
`CloudXAppLovinAdapter` product to the app target.

Add `-ObjC` to the app target's **Other Linker Flags**. The package uses this
flag to retain the adapter registration code. AppLovin also requires this flag.

| Package version | CloudX adapter | AppLovin SDK |
| --- | --- | --- |
| `13060300.0.0` | `13.6.3.0` | `13.6.3` |

The package installs CloudX Core and AppLovin SDK as dependencies. Import
`CloudXCore` in the application. The adapter registers when the application
loads.

This package contains the CloudX AppLovin adapter. It is separate from
AppLovin MAX waterfall mediation adapters.

## Versioning

CloudX adapter versions have four components. Swift package versions use three.
The package tag joins the adapter components into the major number. For example,
adapter `13.6.3.0` uses package version `13060300.0.0`.

## License

The CloudX adapter uses the Business Source License 1.1. See [LICENSE](LICENSE).
