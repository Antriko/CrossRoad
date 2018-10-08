{
    "id": "8294e506-9f5c-4312-8ad7-801fc1b71899",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "GooglePlayServicesExtension",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        "android.permission.ACCESS_COARSE_LOCATION"
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "GooglePlayServicesExtension",
    "androidinject": "<activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" \/>",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "GoogleMobileAdsExt",
    "copyToTargets": 35651596,
    "date": "2018-38-02 10:10:49",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "e78a0ca6-3ccd-4aa5-a881-0b28c1d2b4ce",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "a6df3bbe-dc2d-4029-8faf-5d14d6129ab6",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Banner",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "60b2c1ba-10d3-4816-b001-5267050412d4",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_MRect",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "75529c27-f7d6-4d7b-8455-65110da680c5",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Full_Banner",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "8ad6634f-2ebc-4dc7-b12e-ad475a17766f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Leaderboard",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "7757225b-95b6-46e5-a306-8ad7217c08e2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Skyscraper",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "id": "eb5777d5-26f6-4c8e-a272-52304e438f6a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_ASyncEvent",
                    "hidden": false,
                    "value": "9817"
                },
                {
                    "id": "a604187e-9868-4dd8-801c-5e2b58882abc",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Smart_Banner",
                    "hidden": false,
                    "value": "6"
                }
            ],
            "copyToTargets": 913346798,
            "filename": "GoogleMobileAds.ext",
            "final": "",
            "functions": [
                {
                    "id": "68e64e7e-cb16-4a77-9226-eec5ed780196",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "GoogleMobileAds_Init",
                    "help": "GoogleMobileAds_Init( interstitialId, applicationId )",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_Init",
                    "returnType": 2
                },
                {
                    "id": "166083e4-ee3d-459c-8ada-36bb432a1e55",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ShowInterstitial",
                    "help": "GoogleMobileAds_ShowInterstitial()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ShowInterstitial",
                    "returnType": 2
                },
                {
                    "id": "77788d12-65f4-4e20-93ba-e28fcd062f58",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_LoadInterstitial",
                    "help": "GoogleMobileAds_LoadInterstitial()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_LoadInterstitial",
                    "returnType": 2
                },
                {
                    "id": "4264779b-6739-4b7a-80a4-1f5a22cc64dc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_InterstitialStatus",
                    "help": "GoogleMobileAds_InterstitialStatus()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_InterstitialStatus",
                    "returnType": 1
                },
                {
                    "id": "9575dac9-2411-4a66-ae6e-3747c39ffe62",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "GoogleMobileAds_AddBanner",
                    "help": "GoogleMobileAds_AddBanner( bannerAdID, size_type )",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_AddBanner",
                    "returnType": 2
                },
                {
                    "id": "d5484303-7f83-42fa-8384-5aa8ddd9aa5a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_RemoveBanner",
                    "help": "GoogleMobileAds_RemoveBanner()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_RemoveBanner",
                    "returnType": 2
                },
                {
                    "id": "fb594282-d56f-4dc2-870a-f1afa55f4a63",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "GoogleMobileAds_MoveBanner",
                    "help": "GoogleMobileAds_MoveBanner(display_x, display_y)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_MoveBanner",
                    "returnType": 2
                },
                {
                    "id": "536b9aee-6d2b-4422-9dae-90b5906a5afc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_BannerGetWidth",
                    "help": "GoogleMobileAds_BannerGetWidth()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_BannerGetWidth",
                    "returnType": 2
                },
                {
                    "id": "c8a84fc0-6122-4a47-8301-6b01c003955c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_BannerGetHeight",
                    "help": "GoogleMobileAds_BannerGetHeight()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_BannerGetHeight",
                    "returnType": 2
                },
                {
                    "id": "f587546c-5c06-44ff-bde5-132649c37b4b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "GoogleMobileAds_UseTestAds",
                    "help": "GoogleMobileAds_UseTestAds( use_test_ads, deviceId );",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_UseTestAds",
                    "returnType": 2
                },
                {
                    "id": "29a2fe63-06d8-4072-833a-97a0ad971fd7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        2,
                        2,
                        2
                    ],
                    "externalName": "GoogleMobileAds_AddBannerAt",
                    "help": "GoogleMobileAds_AddBannerAt(bannerAdId, sizeType, x, y );  banner will initially be invisible if x,y < 0",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_AddBannerAt",
                    "returnType": 2
                },
                {
                    "id": "074c44c3-322f-4d5b-81e8-733183fea7b8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "GoogleMobileAds_LoadRewardedVideo",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_LoadRewardedVideo",
                    "returnType": 2
                },
                {
                    "id": "eec264bd-a014-4395-b2b5-fc0da10a0d40",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ShowRewardedVideo",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ShowRewardedVideo",
                    "returnType": 2
                },
                {
                    "id": "965e8dfb-4465-4869-af3f-9acd4f0259e0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_RewardedVideoStatus",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_RewardedVideoStatus",
                    "returnType": 1
                },
                {
                    "id": "c429d3b4-280b-4e17-9e0b-f9861152dedc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_HideBanner",
                    "returnType": 2
                },
                {
                    "id": "de7b7fff-79d1-4d09-8e06-a7d8a83da4d0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ShowBanner",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ShowBanner",
                    "returnType": 2
                },
                {
                    "id": "5513f659-ad5c-413c-9a01-d67bb7cab666",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ConsentUpdate",
                    "help": "GoogleMobileAds_ConsentUpdate(publisherIds, privacyPolicyURL, personalisedAds, noPersonalisedAds, adFree)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentUpdate",
                    "returnType": 2
                },
                {
                    "id": "259da262-5f36-4f99-a944-cf7583e54d2c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ConsentFormShow",
                    "help": "GoogleMobileAds_ConsentFormShow(privacyPolicyURL, personalisedAds, noPersonalisedAds, adFree)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentFormShow",
                    "returnType": 2
                },
                {
                    "id": "8bcd94c3-a92d-4203-9a38-b96d84c3a229",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ConsentSetUserUnderAge",
                    "help": "GoogleMobileAds_ConsentSetUserUnderAge(isUnderAge)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentSetUserUnderAge",
                    "returnType": 2
                },
                {
                    "id": "d2e441d4-dd34-429c-8a91-250fd8892102",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ConsentIsUserUnderAge",
                    "help": "GoogleMobileAds_ConsentIsUserUnderAge()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentIsUserUnderAge",
                    "returnType": 2
                },
                {
                    "id": "b795c53c-3ce8-4675-9d98-0ade53d7d46e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ConsentIsUserInEEA",
                    "help": "GoogleMobileAds_ConsentIsUserInEEA()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentIsUserInEEA",
                    "returnType": 2
                },
                {
                    "id": "2fdb9e05-8caf-4e90-9cdf-705fd306ae2b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ConsentDebugAddDevice",
                    "help": "GoogleMobileAds_ConsentDebugAddDevice(id)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentDebugAddDevice",
                    "returnType": 2
                },
                {
                    "id": "d402c5fd-5595-4fac-9b7d-47f23a5d7fd1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ConsentDebugSetDeviceInEEA",
                    "help": "GoogleMobileAds_ConsentDebugSetDeviceInEEA(isInEEA)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentDebugSetDeviceInEEA",
                    "returnType": 2
                },
                {
                    "id": "21f9bce0-7b0c-4b5a-921f-138b735a5461",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ConsentGetAllowPersonalizedAds",
                    "help": "GoogleMobileAds_ConsentGetAllowPersonalizedAds()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentGetAllowPersonalizedAds",
                    "returnType": 2
                },
                {
                    "id": "2df36290-d347-4803-8077-91348587eb67",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ConsentSetAllowPersonalizedAds",
                    "help": "GoogleMobileAds_ConsentSetAllowPersonalizedAds(allowPersonalized)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentSetAllowPersonalizedAds",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "extensions\\admob.ext",
            "uncompress": false
        },
        {
            "id": "56ba8b4a-5a67-43d5-b887-38b0185c866a",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "bc1b8785-cfde-4faa-a39c-687e1272ac56",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SUCCESS",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "6cb9d23c-dacd-4841-9e0e-f9d733979e7e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_MISSING",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "4a7e5d3f-24eb-49aa-b90f-f0984944a33f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_UPDATING",
                    "hidden": false,
                    "value": "18"
                },
                {
                    "id": "561f223e-fba0-4ab8-84c1-7eb2d32ddb60",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_VERSION_UPDATE_REQUIRED",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "723582c2-610d-4099-b9aa-9ea97b3082a6",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_DISABLED",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "e1edcb35-cb9e-46d0-9309-54b453c2afc9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_INVALID",
                    "hidden": false,
                    "value": "9"
                },
                {
                    "id": "c1f58878-d7d5-4b64-95e3-7a44d45f6a05",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_EVENT_ID_POST_SCORE",
                    "hidden": false,
                    "value": "9818"
                },
                {
                    "id": "1bd8f099-7510-4a6f-9bf6-a0b1fb4262ea",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_EVENT_ID_POST_ACHIEVEMENT",
                    "hidden": false,
                    "value": "9819"
                },
                {
                    "id": "2921fe93-4481-4953-92d2-915badf41949",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_EVENT_ID_REVEAL_ACHIEVEMENT",
                    "hidden": false,
                    "value": "9821"
                },
                {
                    "id": "a5b52c1b-e48f-4c33-baad-9fb3386f8e64",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_EVENT_ID_INCREMENT_ACHIEVEMENT",
                    "hidden": false,
                    "value": "9820"
                }
            ],
            "copyToTargets": 2097160,
            "filename": "GooglePlayServicesExtension.ext",
            "final": "",
            "functions": [
                {
                    "id": "3688e607-db09-43ab-bcd2-b1a4423f712b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GooglePlayServices_Status",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GooglePlayServices_Status",
                    "returnType": 2
                },
                {
                    "id": "e68fff26-7ae8-4534-a023-794c0149ef9e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GooglePlayServices_Init",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GooglePlayServices_Init",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "extensions\\GooglePlayServicesExtension.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "   compile 'com.google.android.gms:play-services-games:11.8.0'\\u000d\\u000a   compile 'com.google.android.gms:play-services-ads:11.8.0'\\u000d\\u000a   compile 'com.google.android.gms:play-services-plus:11.8.0'\\u000d\\u000a   compile 'com.google.android.gms:play-services-gcm:11.8.0'\\u000d\\u000a   compile 'com.google.android.gms:play-services-auth:11.8.0'\\u000d\\u000a   compile 'com.google.android.ads.consent:consent-library:1.0.3'\\u000d\\u000a   compile fileTree(dir: 'libs', include: ['*.jar'])\\u000d\\u000a}\\u000d\\u000arepositories\\u000d\\u000a{\\u000d\\u000a  maven\\u000d\\u000a  {\\u000d\\u000a    url \"https:\/\/maven.google.com\"\\u000d\\u000a  }\\u000d\\u000a}\\u000d\\u000adependencies\\u000d\\u000a{\\u000d\\u000a\\u000d\\u000a",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        {
            "id": "9787204a-2513-43a9-9673-5b2ee10f04ba",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "AdSupport.framework",
            "weakReference": false
        },
        {
            "id": "2994e3ca-b77a-484b-b6c3-3821837bd122",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreBluetooth.framework",
            "weakReference": false
        },
        {
            "id": "9bfab178-7907-4a89-88b2-b07a089d1367",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreMotion.framework",
            "weakReference": false
        },
        {
            "id": "2bdb521c-8139-449d-b67c-7ff7f16ae5b4",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreMedia.framework",
            "weakReference": false
        },
        {
            "id": "57d2a2b9-f2b1-4ff1-8e42-16e1279eb262",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreVideo.framework",
            "weakReference": false
        },
        {
            "id": "5232ffff-d7df-4d58-9601-061ae73056cd",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "GLKit.framework",
            "weakReference": false
        },
        {
            "id": "56196cc2-eaac-4000-869a-7561b5a72bde",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "SafariServices.framework",
            "weakReference": false
        }
    ],
    "iosThirdPartyFrameworkEntries": [
        {
            "id": "7e7e8b59-5de3-450b-8d1e-186babb2ef13",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "GoogleMobileAds.framework",
            "weakReference": false
        },
        {
            "id": "7f525dc6-2a4f-4a97-a0b9-f5fd0b238120",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "PersonalizedAdConsent.embeddedframework",
            "weakReference": false
        }
    ],
    "iosplistinject": "<key>NSAppTransportSecurity<\/key>\\u000d\\u000a<dict>\\u000d\\u000a    <key>NSAllowsArbitraryLoads<\/key>\\u000d\\u000a    <true\/>\\u000d\\u000a    <key>NSAllowsArbitraryLoadsForMedia<\/key>\\u000d\\u000a    <true\/>\\u000d\\u000a    <key>NSAllowsArbitraryLoadsInWebContent<\/key>\\u000d\\u000a    <true\/>\\u000d\\u000a<\/dict>",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "com.yoyogames.googleplayservicesextension",
    "productID": "",
    "sourcedir": "",
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "2.9.0"
}