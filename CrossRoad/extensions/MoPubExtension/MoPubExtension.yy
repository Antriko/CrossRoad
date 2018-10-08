{
    "id": "3807c106-fe8e-4f19-8282-f5e86cdef8e2",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "MoPubExtension",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.ACCESS_COARSE_LOCATION",
        "android.permission.WRITE_EXTERNAL_STORAGE"
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "MoPubExt",
    "androidinject": "<activity\\u000d\\u000a            android:name=\"com.mopub.mobileads.MoPubActivity\"\\u000d\\u000a            android:configChanges=\"keyboardHidden|orientation|screenSize\"\\u000d\\u000a\/>\\u000d\\u000a\\u000d\\u000a<activity\\u000d\\u000a            android:name=\"com.mopub.mobileads.MraidActivity\"\\u000d\\u000a            android:configChanges=\"keyboardHidden|orientation|screenSize\"\\u000d\\u000a\/>\\u000d\\u000a\\u000d\\u000a<activity\\u000d\\u000a            android:name=\"com.mopub.common.MoPubBrowser\"\\u000d\\u000a            android:configChanges=\"keyboardHidden|orientation|screenSize\"\\u000d\\u000a\/>\\u000d\\u000a  <activity           android:name=\"com.mopub.mobileads.MraidVideoPlayerActivity\"\\u000d\\u000a            android:configChanges=\"keyboardHidden|orientation|screenSize\" \/>",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "MoPubExt",
    "copyToTargets": 834777342120174,
    "date": "2018-39-08 10:10:54",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "43653bf4-e186-41ae-89cc-41f9929c630e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 35651596,
            "filename": "MoPub.ext",
            "final": "",
            "functions": [
                {
                    "id": "35c8987a-2ba2-4903-ada5-996aaa078fd6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "MoPub_Init",
                    "help": "MoPub_Init( interstitialId )",
                    "hidden": false,
                    "kind": 11,
                    "name": "MoPub_Init",
                    "returnType": 2
                },
                {
                    "id": "1339b961-99e4-4a1d-b79a-d03028b67ce8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "MoPub_LoadInterstitial",
                    "help": "MoPub_LoadInterstitial()",
                    "hidden": false,
                    "kind": 11,
                    "name": "MoPub_LoadInterstitial",
                    "returnType": 2
                },
                {
                    "id": "83d2ba76-3c54-4bd1-a890-93822483c9f6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "MoPub_ShowInterstitial",
                    "help": "MoPub_ShowInterstitial()",
                    "hidden": false,
                    "kind": 11,
                    "name": "MoPub_ShowInterstitial",
                    "returnType": 2
                },
                {
                    "id": "29ed8ab7-9e85-4fdf-998c-7d5c9eb29bf9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "MoPub_InterstitialStatus",
                    "help": "MoPub_InterstitialStatus()",
                    "hidden": false,
                    "kind": 11,
                    "name": "MoPub_InterstitialStatus",
                    "returnType": 1
                },
                {
                    "id": "07b7f843-ff78-4818-bbbf-7e1a272f24fb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "MoPub_AddBanner",
                    "help": "MoPub_AddBanner( bannerAdId )",
                    "hidden": false,
                    "kind": 11,
                    "name": "MoPub_AddBanner",
                    "returnType": 2
                },
                {
                    "id": "37301282-972e-488e-920d-4529403187d3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "MoPub_RemoveBanner",
                    "help": "MoPub_RemoveBanner()",
                    "hidden": false,
                    "kind": 11,
                    "name": "MoPub_RemoveBanner",
                    "returnType": 2
                },
                {
                    "id": "346fe929-1a08-4160-b84b-63353ab8b62c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "MoPub_MoveBanner",
                    "help": "MoPub_MoveBanner( display_x, display_y )",
                    "hidden": false,
                    "kind": 11,
                    "name": "MoPub_MoveBanner",
                    "returnType": 2
                },
                {
                    "id": "8efe8bb4-84b4-47d3-b76c-343c5fd7c470",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "MoPub_BannerGetWidth",
                    "help": "MoPub_BannerGetWidth()",
                    "hidden": false,
                    "kind": 11,
                    "name": "MoPub_BannerGetWidth",
                    "returnType": 2
                },
                {
                    "id": "00e0ce5b-0ad7-4733-9fdf-565f414221d6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "MoPub_BannerGetHeight",
                    "help": "MoPub_BannerGetHeight()",
                    "hidden": false,
                    "kind": 11,
                    "name": "MoPub_BannerGetHeight",
                    "returnType": 2
                },
                {
                    "id": "809b5ba1-8ee9-48b7-8ee3-d78ff4567bfa",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "MoPub_UseTestAds",
                    "help": "MoPub_UseTestAds( use_test_ads )",
                    "hidden": false,
                    "kind": 11,
                    "name": "MoPub_UseTestAds",
                    "returnType": 2
                },
                {
                    "id": "130936d3-3c4a-4dca-aa91-245e5a695bfc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "MoPub_AddBannerAt",
                    "help": "MoPub_AddBannerAt( bannerAdId, display_x, display_y )",
                    "hidden": false,
                    "kind": 11,
                    "name": "MoPub_AddBannerAt",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "extensions\\MoPubiOS.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "compile('com.mopub:mopub-sdk:4.7.0@aar') {\\u000d\\u000a            transitive = true\\u000d\\u000a        }",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        {
            "id": "85d3876a-948a-43ce-b3b7-97c337fcf811",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "ADSupport.framework",
            "weakReference": true
        },
        {
            "id": "549fc3b7-afaf-46e4-a9d0-033b084880cd",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreGraphics.framework",
            "weakReference": false
        },
        {
            "id": "fc27cffb-bf77-4845-b4d3-1c98be864b69",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreLocation.framework",
            "weakReference": false
        },
        {
            "id": "9182b0d2-9b89-4881-ac87-7831f5084706",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreTelephony.framework",
            "weakReference": false
        },
        {
            "id": "2d0e8020-551d-476a-87dd-268c4d99c1f2",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "MediaPlayer.framework",
            "weakReference": false
        },
        {
            "id": "db36aa49-fcda-4a9c-9dac-c013e0b5c1e7",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "QuartzCore.framework",
            "weakReference": false
        },
        {
            "id": "4b96d1bb-62d5-4c6e-be02-5a28ed5c7f5c",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "StoreKit.framework",
            "weakReference": true
        },
        {
            "id": "0ce110e0-509a-448b-92ba-548163b7e30a",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "SystemConfiguration.framework",
            "weakReference": false
        },
        {
            "id": "98f0a0eb-8308-4864-a9e1-b6e4ebaadebd",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "AudioToolbox.framework",
            "weakReference": false
        },
        {
            "id": "d6e333e6-a854-4770-9f88-832a9edf3a77",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "AVFoundation.framework",
            "weakReference": false
        },
        {
            "id": "45776e50-6ddf-49c5-91d2-845e974ac774",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "iAd.framework",
            "weakReference": false
        },
        {
            "id": "7f719c31-8950-4a67-b3ee-5edbebf87e4f",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "MessageUI.framework",
            "weakReference": false
        },
        {
            "id": "2d8b2e49-9097-4bf2-b6a1-f05932051218",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "MobileCoreServices.framework",
            "weakReference": false
        },
        {
            "id": "e6867018-afac-4d75-a494-5daa8fddb162",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "PassKit.framework",
            "weakReference": true
        },
        {
            "id": "f8f86d45-a666-4b56-9152-3a8ef6c384d9",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "Social.framework",
            "weakReference": true
        },
        {
            "id": "c883f3f1-cbc4-4449-9e68-caf62357fca0",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "Twitter.framework",
            "weakReference": true
        },
        {
            "id": "383a5b28-7b9b-4929-90d6-6f9d2d157f19",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "libxml2.dylib",
            "weakReference": false
        }
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosplistinject": "<key>NSCalendarsUsageDescription<\/key>\\u000d\\u000a<string>Some ad content may access calendar<\/string>\\u000d\\u000a<key>NSAppTransportSecurity<\/key>\\u000d\\u000a    <dict>\\u000d\\u000a        <key>NSAllowsArbitraryLoads<\/key>\\u000d\\u000a        <true\/>\\u000d\\u000a        <key>NSAllowsArbitraryLoadsForMedia<\/key>\\u000d\\u000a        <true\/>\\u000d\\u000a        <key>NSAllowsArbitraryLoadsInWebContent<\/key>\\u000d\\u000a        <true\/>\\u000d\\u000a    <\/dict>",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "-fobjc-arc",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "com.yoyogames.mopub",
    "productID": "202B144B8C7E2D802BC2E92E54E42AAA",
    "sourcedir": "c:\\Source\\GameMaker\\Extensions\\NewExtensions\\MoPubExtiOS",
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.4.0"
}