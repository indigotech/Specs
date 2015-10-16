{
  "name": "EsriGeotriggerSDK",
  "version": "1.1.0",
  "summary": "A library for using the ArcGIS Geotrigger Service with iOS.",
  "description": "                      The Geotrigger SDK for iOS is a set of tools to help your app communicate with the\n                      Geotrigger Service and provide it with accurate location data without using any\n                      more of the device's battery power than absolutely necessary.\n",
  "homepage": "https://developers.arcgis.com/geotrigger-service/",
  "authors": "Esri Portland R & D Center",
  "platforms": {
    "ios": "8.0"
  },
  "source": {
    "git": "https://github.com/Esri/geotrigger-sdk-ios.git",
    "tag": "1.2.0"
  },
  "license": {
    "file": "LICENSE",
    "type": "Commercial"
  },
  "documentation_url": "https://developers.arcgis.com/geotrigger-service/guide/ios-getting-started/",
  "frameworks": [
    "CoreLocation",
    "Foundation",
    "Security",
    "SystemConfiguration",
    "MobileCoreServices"
  ],
  "vendored_frameworks": "GeotriggerSDK.framework",
  "preserve_paths": "GeotriggerSDK.framework",
  "requires_arc": true
}
