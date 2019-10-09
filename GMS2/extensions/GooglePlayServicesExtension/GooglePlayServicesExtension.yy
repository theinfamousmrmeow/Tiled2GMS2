{
    "id": "b692918b-a2eb-41d7-ad06-08871dc1c32f",
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
    "androidinject": "<activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" \/>\\u000a\\u000d <meta-data\\u000a\\u000d            android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\\u000a\\u000d            android:value=\"ca-app-pub-3940256099942544~3347511713\"\/>",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "GoogleMobileAdsExt",
    "copyToTargets": 562949953421324,
    "date": "2018-02-07 11:12:37",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "9de450ce-fd17-4577-9050-a2dbc150ecc2",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "8dd77a89-c219-4b02-ba38-bb443e23cbb5",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Banner",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "226ab317-8e42-4461-a3e0-a1bc7818e886",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_MRect",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "13171f05-7152-46b9-b979-831db374ecc6",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Full_Banner",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "a2e4044a-a801-4dcf-a51f-db1d59de0d96",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Leaderboard",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "467d4c52-99b5-48ed-88cf-bd71c7bc2080",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Skyscraper",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "id": "22907bbe-2dc6-4490-a0aa-d51bbfcbd5ca",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_ASyncEvent",
                    "hidden": false,
                    "value": "9817"
                },
                {
                    "id": "16989d2b-9393-4eb0-895f-44b0a6b30427",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Smart_Banner",
                    "hidden": false,
                    "value": "6"
                }
            ],
            "copyToTargets": 562949953421324,
            "filename": "GoogleMobileAds.ext",
            "final": "",
            "functions": [
                {
                    "id": "ca44bb54-9fc4-43c5-987b-22bc74698def",
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
                    "id": "8b660afd-6965-4995-88ba-b24786029b09",
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
                    "id": "fad82e3e-c132-4727-a16a-2c5b09bc0d3d",
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
                    "id": "19dabb4c-adcd-4e7c-9c58-13e4cfe83828",
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
                    "id": "dd3abe11-0971-44b6-939b-3832b0f79ba3",
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
                    "id": "edef29f6-1dea-427d-a532-0fa30ca34d32",
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
                    "id": "80bda7ef-c5a9-4b72-8a44-95bafdd66801",
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
                    "id": "749faa34-b42f-4d63-a95e-eac1d85f6b9c",
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
                    "id": "0c3f68e2-2531-46cc-94e6-7721559cdacf",
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
                    "id": "91b94f74-be68-4873-8ec6-7d5d9677a1d2",
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
                    "id": "f159e540-69f6-4482-9001-e1e1e1166a7e",
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
                    "id": "8b276788-acf0-4f36-8b5b-a977c3ac4ac0",
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
                    "id": "16b1d0ef-bffd-491c-b215-62bd743a3680",
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
                    "id": "5276e5ac-7ca0-4f36-ab6d-a15d53ff505f",
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
                    "id": "870b3d0d-38fa-4b0e-8412-d21e270957a6",
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
                    "id": "6e7012dc-2b05-4418-990b-e23907e370e8",
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
                    "id": "0a0c3344-e9fc-44db-9e09-2adbb3f9ad01",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 5,
                    "args": [
                        1,
                        1,
                        2,
                        2,
                        2
                    ],
                    "externalName": "GoogleMobileAds_ConsentUpdate",
                    "help": "GoogleMobileAds_ConsentUpdate(publisherIds, privacyPolicyURL, personalisedAds, noPersonalisedAds, adFree)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentUpdate",
                    "returnType": 2
                },
                {
                    "id": "ee6b2027-cb8d-4f6d-88a2-60749b98251e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        2,
                        2,
                        2
                    ],
                    "externalName": "GoogleMobileAds_ConsentFormShow",
                    "help": "GoogleMobileAds_ConsentFormShow(privacyPolicyURL, personalisedAds, noPersonalisedAds, adFree)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentFormShow",
                    "returnType": 2
                },
                {
                    "id": "1f5e907c-46cf-4ed0-a29a-61ad90ec1f7f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "GoogleMobileAds_ConsentSetUserUnderAge",
                    "help": "GoogleMobileAds_ConsentSetUserUnderAge(isUnderAge)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentSetUserUnderAge",
                    "returnType": 2
                },
                {
                    "id": "cc3bdd41-15ae-439e-bf54-41bb04bd41df",
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
                    "id": "a804618a-3212-46e8-968f-3d910dc562e5",
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
                    "id": "e9ff82d8-61e5-486e-8a59-f192e6abd6ac",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "GoogleMobileAds_ConsentDebugAddDevice",
                    "help": "GoogleMobileAds_ConsentDebugAddDevice(id)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentDebugAddDevice",
                    "returnType": 2
                },
                {
                    "id": "69dda033-65d3-49a3-94d2-53134fe85fce",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "GoogleMobileAds_ConsentDebugSetDeviceInEEA",
                    "help": "GoogleMobileAds_ConsentDebugSetDeviceInEEA(isInEEA)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentDebugSetDeviceInEEA",
                    "returnType": 2
                },
                {
                    "id": "d3526103-342b-40fe-8f89-1faee30a6325",
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
                    "id": "b3315fcb-ed31-43a4-a231-b8b1009d604c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
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
                "ca44bb54-9fc4-43c5-987b-22bc74698def",
                "8b660afd-6965-4995-88ba-b24786029b09",
                "fad82e3e-c132-4727-a16a-2c5b09bc0d3d",
                "19dabb4c-adcd-4e7c-9c58-13e4cfe83828",
                "dd3abe11-0971-44b6-939b-3832b0f79ba3",
                "edef29f6-1dea-427d-a532-0fa30ca34d32",
                "80bda7ef-c5a9-4b72-8a44-95bafdd66801",
                "749faa34-b42f-4d63-a95e-eac1d85f6b9c",
                "0c3f68e2-2531-46cc-94e6-7721559cdacf",
                "91b94f74-be68-4873-8ec6-7d5d9677a1d2",
                "f159e540-69f6-4482-9001-e1e1e1166a7e",
                "8b276788-acf0-4f36-8b5b-a977c3ac4ac0",
                "16b1d0ef-bffd-491c-b215-62bd743a3680",
                "5276e5ac-7ca0-4f36-ab6d-a15d53ff505f",
                "870b3d0d-38fa-4b0e-8412-d21e270957a6",
                "6e7012dc-2b05-4418-990b-e23907e370e8",
                "0a0c3344-e9fc-44db-9e09-2adbb3f9ad01",
                "ee6b2027-cb8d-4f6d-88a2-60749b98251e",
                "1f5e907c-46cf-4ed0-a29a-61ad90ec1f7f",
                "cc3bdd41-15ae-439e-bf54-41bb04bd41df",
                "a804618a-3212-46e8-968f-3d910dc562e5",
                "e9ff82d8-61e5-486e-8a59-f192e6abd6ac",
                "69dda033-65d3-49a3-94d2-53134fe85fce",
                "d3526103-342b-40fe-8f89-1faee30a6325",
                "b3315fcb-ed31-43a4-a231-b8b1009d604c"
            ],
            "origname": "extensions\\admob.ext",
            "uncompress": false
        },
        {
            "id": "9840c7d7-b0c9-4297-be60-4bce0a5068e9",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "364cc72d-1824-4a49-b96c-f40c979634f9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SUCCESS",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "fa7d51bd-e32f-47b7-9fa3-4e3bbbbdc849",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_MISSING",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "a1d39152-30a3-4b8c-b664-da08c78a8c9c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_UPDATING",
                    "hidden": false,
                    "value": "18"
                },
                {
                    "id": "98c89732-0c55-4ffd-9ced-de581e1f3df3",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_VERSION_UPDATE_REQUIRED",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "3e8a59a4-d47e-4811-b08c-d7edb7d0d5d0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_DISABLED",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "babaa315-6358-4f85-a37c-febc3778ffca",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_INVALID",
                    "hidden": false,
                    "value": "9"
                },
                {
                    "id": "77640663-2d5b-405f-a529-6074c9017672",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_EVENT_ID_POST_SCORE",
                    "hidden": false,
                    "value": "9818"
                },
                {
                    "id": "303b3ac7-1e9e-4377-b2e4-eaa388ea89c0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_EVENT_ID_POST_ACHIEVEMENT",
                    "hidden": false,
                    "value": "9819"
                },
                {
                    "id": "22013655-e9dc-4ecc-93f2-14d50c97d17c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_EVENT_ID_REVEAL_ACHIEVEMENT",
                    "hidden": false,
                    "value": "9821"
                },
                {
                    "id": "1680616a-1d0a-436a-ad57-75c14c95f6cb",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_EVENT_ID_INCREMENT_ACHIEVEMENT",
                    "hidden": false,
                    "value": "9820"
                }
            ],
            "copyToTargets": 562949953421320,
            "filename": "GooglePlayServicesExtension.ext",
            "final": "",
            "functions": [
                {
                    "id": "be56d73a-02ab-4d9d-bcea-638c65f646e1",
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
                    "id": "74b9e144-a55f-46d5-a066-bb5710b95acc",
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
                },
                {
                    "id": "2ad06224-3f9c-4cf6-8cd3-d874e68f547b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "onRevealAchievement",
                    "help": "GooglePlayServices_AchievementReveal(achievement_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GooglePlayServices_AchievementReveal",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                "be56d73a-02ab-4d9d-bcea-638c65f646e1",
                "74b9e144-a55f-46d5-a066-bb5710b95acc",
                "2ad06224-3f9c-4cf6-8cd3-d874e68f547b"
            ],
            "origname": "extensions\\GooglePlayServicesExtension.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "compile 'com.google.android.gms:play-services-games:16.0.0'\\u000a\\u000dcompile 'com.google.android.gms:play-services-ads:17.2.1'\\u000a\\u000dcompile 'com.google.android.gms:play-services-auth:16.0.1'\\u000a\\u000dcompile 'com.google.android.ads.consent:consent-library:1.0.3'",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        {
            "id": "d3aa30db-92e8-4d7f-8940-a48de64046f3",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "AdSupport.framework",
            "weakReference": false
        },
        {
            "id": "c2d2b475-26a6-4a08-9fff-1c7affc4bdde",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreBluetooth.framework",
            "weakReference": false
        },
        {
            "id": "bb282515-10f9-4b05-9fd7-db139fd0571f",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreMotion.framework",
            "weakReference": false
        },
        {
            "id": "a74b7d17-a1de-4450-ac81-8c72eac2e2fd",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreMedia.framework",
            "weakReference": false
        },
        {
            "id": "1e98fdfd-6854-4013-b248-ad8d40019fdb",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreVideo.framework",
            "weakReference": false
        },
        {
            "id": "510c4e06-776d-48cb-bc2e-ca8845a4ca26",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "GLKit.framework",
            "weakReference": false
        },
        {
            "id": "929fdce2-2586-489d-8881-e9fcba05ca7e",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "SafariServices.framework",
            "weakReference": false
        }
    ],
    "iosThirdPartyFrameworkEntries": [
        {
            "id": "e490485d-b94a-4c33-991a-69ccd42e69bc",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "GoogleMobileAds.framework",
            "weakReference": false
        },
        {
            "id": "65ebeafd-530a-4fb0-a1ca-fff61e3961f0",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "PersonalizedAdConsent.framework",
            "weakReference": false
        }
    ],
    "iosdelegatename": "",
    "iosplistinject": "<key>NSAppTransportSecurity<\/key>\\u000a\\u000d<dict>\\u000a\\u000d    <key>NSAllowsArbitraryLoads<\/key>\\u000a\\u000d    <true\/>\\u000a\\u000d    <key>NSAllowsArbitraryLoadsForMedia<\/key>\\u000a\\u000d    <true\/>\\u000a\\u000d    <key>NSAllowsArbitraryLoadsInWebContent<\/key>\\u000a\\u000d    <true\/>\\u000a\\u000d<\/dict>",
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
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "3.1.6"
}