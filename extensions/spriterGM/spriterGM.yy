{
    "id": "600d7230-bd23-43a7-8ec1-9bfaeebacdec",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "spriterGM",
    "IncludedResources": [
        "Scripts\\spriterGM\\spriter_load",
        "Scripts\\spriterGM\\spriter_update",
        "Scripts\\spriterGM\\spriter_render",
        "Scripts\\spriterGM\\spriter_set_current_animation",
        "Scripts\\spriterGM\\spriter_apply_character_map",
        "Scripts\\spriterGM\\spriter_remove_character_map",
        "Scripts\\spriterGM\\spriter_remove_all_character_map",
        "Scripts\\spriterGM\\spriter_set_playback_speed_ratio",
        "Scripts\\spriterGM\\spriter_start_resume_playback",
        "Scripts\\spriterGM\\spriter_pause_playback",
        "Scripts\\spriterGM\\spriter_set_time_ratio",
        "Scripts\\spriterGM\\spriter_animation_just_finished",
        "Scripts\\spriterGM\\spriter_check_errors",
        "Scripts\\spriterGM\\spriter_is_trigger",
        "Scripts\\spriterGM\\point\\spriter_get_point_y1",
        "Scripts\\spriterGM\\point\\spriter_get_point_y2",
        "Scripts\\spriterGM\\point\\spriter_get_point_x1",
        "Scripts\\spriterGM\\point\\spriter_get_point_x2",
        "Scripts\\spriterGM\\point\\spriter_get_point_direction",
        "Scripts\\spriterGM\\box\\spriter_get_box_point_x",
        "Scripts\\spriterGM\\box\\spriter_get_box_point_y",
        "Scripts\\spriterGM\\box\\spriter_get_box_collision_rectangle",
        "Scripts\\spriterGM\\spriter_destroy_instance",
        "Scripts\\spriterGM\\spriter_find_object",
        "Scripts\\spriterGM\\IK\\spriter_set_IK_mode",
        "Scripts\\spriterGM\\IK\\spriter_is_IK_mode",
        "Scripts\\spriterGM\\IK\\spriter_is_manual_control",
        "Scripts\\spriterGM\\IK\\spriter_set_manual_control",
        "Scripts\\spriterGM\\IK\\spriter_set_IK_position",
        "Scripts\\spriterGM\\IK\\spriter_set_manual_angle"
    ],
    "androidPermissions": [
        "android.permission.READ_EXTERNAL_STORAGE"
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "spriterGM",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": -1,
    "date": "2017-11-15 08:08:41",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "71e044a9-da40-4bfe-a8d0-2ef560ed67f9",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 17592187093056,
            "filename": "spriterGM.dll",
            "final": "",
            "functions": [
                {
                    "id": "d08c5940-1050-45b3-86bd-e361d1b88d99",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "spriter_LoadModel",
                    "help": "double spriter_LoadModel(const char *pFile)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_LoadModel",
                    "returnType": 2
                },
                {
                    "id": "d686513c-0a03-4e61-acf8-e68f6ff06b08",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        1,
                        2
                    ],
                    "externalName": "spriter_CreateInstance",
                    "help": "double spriter_CreateInstance(double ModelIndex, const char *pInstanceName)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_CreateInstance",
                    "returnType": 2
                },
                {
                    "id": "5134d023-e46f-4549-9bf2-a354d349e87b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_SetModelEnableBones",
                    "help": "double spriter_SetModelEnableBones(double ModelIndex, double bEnable);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetModelEnableBones",
                    "returnType": 2
                },
                {
                    "id": "41d0b3e6-cfaa-4f5b-b7d1-c991b003ef5a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoCount",
                    "help": "double spriter_GetObjectInfoCount(double ModelIndex, double InstanceIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoCount",
                    "returnType": 2
                },
                {
                    "id": "f4a4f46e-590a-44cc-b339-25ef986fb3cc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoFileName",
                    "help": "const char *spriter_GetObjectInfoFileName(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoFileName",
                    "returnType": 1
                },
                {
                    "id": "9bcb9d9d-2438-41eb-a0d6-80aad383d649",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoString",
                    "help": "const char *spriter_GetObjectInfoString(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoString",
                    "returnType": 1
                },
                {
                    "id": "f2369fca-654c-45b2-8e49-2d4c938fee54",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoPositionX",
                    "help": "double spriter_GetObjectInfoPositionX(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoPositionX",
                    "returnType": 2
                },
                {
                    "id": "99333f21-a94e-4b28-b4f0-d6cee7040f4b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoPositionY",
                    "help": "double spriter_GetObjectInfoPositionY(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoPositionY",
                    "returnType": 2
                },
                {
                    "id": "5cd9af40-235f-4a5c-a6f9-386f9a6eeb2d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoPivotX",
                    "help": "double spriter_GetObjectInfoPivotX(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoPivotX",
                    "returnType": 2
                },
                {
                    "id": "e3ab2d5e-a23f-41f8-8c72-9796ef81bcb8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoPivotY",
                    "help": "double spriter_GetObjectInfoPivotY(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoPivotY",
                    "returnType": 2
                },
                {
                    "id": "4d17bc44-5859-4494-8484-e4606ebd2253",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoSizeX",
                    "help": "double spriter_GetObjectInfoSizeX(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoSizeX",
                    "returnType": 2
                },
                {
                    "id": "31b194f6-d93e-4a39-a273-9fd5a4839fcd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoSizeY",
                    "help": "double spriter_GetObjectInfoSizeY(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoSizeY",
                    "returnType": 2
                },
                {
                    "id": "09f500ab-2474-441a-a5b1-92ccb9c9a083",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoScaleX",
                    "help": "double spriter_GetObjectInfoScaleX(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoScaleX",
                    "returnType": 2
                },
                {
                    "id": "b9fce175-93f5-4925-adb7-722a011ae29c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoScaleY",
                    "help": "double spriter_GetObjectInfoScaleY(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoScaleY",
                    "returnType": 2
                },
                {
                    "id": "88d0d380-413a-4a70-9a39-cf9f9e9b36cf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoAngle",
                    "help": "double spriter_GetObjectInfoAngle(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoAngle",
                    "returnType": 2
                },
                {
                    "id": "01f7e323-35c9-4dd6-b6fd-41dcd7bb72ec",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_IsGetObjectInfoRender",
                    "help": "double spriter_IsGetObjectInfoRender(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_IsGetObjectInfoRender",
                    "returnType": 2
                },
                {
                    "id": "f254d7ed-54f5-4447-8583-6227f539711d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoGMRenderPositionX",
                    "help": "double spriter_GetObjectInfoGMRenderPositionX(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoGMRenderPositionX",
                    "returnType": 2
                },
                {
                    "id": "1379c9d0-6131-46e7-a052-dcc913e09e96",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoGMRenderPositionY",
                    "help": "double spriter_GetObjectInfoGMRenderPositionY(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoGMRenderPositionY",
                    "returnType": 2
                },
                {
                    "id": "cf98e3b7-85d5-4ad1-8bf6-1855133c6e54",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        1,
                        2
                    ],
                    "externalName": "spriter_SetInstanceCurrentAnimation",
                    "help": "void spriter_SetInstanceCurrentAnimation(double ModelIndex, double InstanceIndex, const char *pAnimationName, double BlendTime)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetInstanceCurrentAnimation",
                    "returnType": 2
                },
                {
                    "id": "559a8f1d-a10e-49a2-b783-06587ea6fb50",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetInstancePosition",
                    "help": "void spriter_SetInstancePosition(double ModelIndex, double InstanceIndex, double px, double py)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetInstancePosition",
                    "returnType": 2
                },
                {
                    "id": "f8996d72-240d-4e85-a7b4-3f066ee69a58",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetInstanceScale",
                    "help": "void spriter_SetInstanceScale(double ModelIndex, double InstanceIndex, double sx, double sy)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetInstanceScale",
                    "returnType": 2
                },
                {
                    "id": "3192cd10-d609-4741-9ca2-7896f81bb7e2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetInstanceAngle",
                    "help": "void spriter_SetInstanceAngle(double ModelIndex, double InstanceIndex, double angle)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetInstanceAngle",
                    "returnType": 2
                },
                {
                    "id": "d737cac1-8588-499b-a07b-a5e3ac0864f9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_GetInstancePositionX",
                    "help": "double spriter_GetInstancePositionX(double ModelIndex, double InstanceIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetInstancePositionX",
                    "returnType": 2
                },
                {
                    "id": "b11fe879-d3fb-4b3f-a820-93c613cd94ba",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_GetInstancePositionY",
                    "help": "double spriter_GetInstancePositionY(double ModelIndex, double InstanceIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetInstancePositionY",
                    "returnType": 2
                },
                {
                    "id": "beeaf28a-25da-40d3-af1d-a14dff6bdba0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        1
                    ],
                    "externalName": "spriter_ApplyInstanceCharacterMap",
                    "help": "void spriter_ApplyInstanceCharacterMap(double ModelIndex, double InstanceIndex, const char *charMap)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_ApplyInstanceCharacterMap",
                    "returnType": 2
                },
                {
                    "id": "11333602-6e5b-468e-82f5-55c820b6a73e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_UpdateInstance",
                    "help": "void spriter_UpdateInstance(double ModelIndex, double InstanceIndex, double TimeElapsed)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_UpdateInstance",
                    "returnType": 2
                },
                {
                    "id": "5dddedab-62a5-48ad-8646-ea2cc529ba95",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        1
                    ],
                    "externalName": "spriter_RemoveInstanceCharacterMap",
                    "help": "void spriter_RemoveInstanceCharacterMap(double ModelIndex, double InstanceIndex, const char *charMap)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_RemoveInstanceCharacterMap",
                    "returnType": 2
                },
                {
                    "id": "7131394a-708e-457d-8285-fd13e839803b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_RemoveInstanceAllCharacterMap",
                    "help": "void spriter_RemoveInstanceAllCharacterMap(double ModelIndex, double InstanceIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_RemoveInstanceAllCharacterMap",
                    "returnType": 2
                },
                {
                    "id": "e57910b0-b5dc-4cac-af9e-f6eb0f55a5bf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetInstancePlaybackSpeedRatio",
                    "help": "void spriter_SetInstancePlaybackSpeedRatio(double ModelIndex, double InstanceIndex, double PlaybackSpeedRatio)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetInstancePlaybackSpeedRatio",
                    "returnType": 2
                },
                {
                    "id": "9d32865f-f217-4d13-a540-2e116dec4626",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_InstanceStartResumePlayback",
                    "help": "void spriter_InstanceStartResumePlayback(double ModelIndex, double InstanceIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_InstanceStartResumePlayback",
                    "returnType": 2
                },
                {
                    "id": "32bd2097-0ed7-45b5-aa00-2f5ed21c8c70",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_InstancePausePlayback",
                    "help": "void spriter_InstancePausePlayback(double ModelIndex, double InstanceIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_InstancePausePlayback",
                    "returnType": 2
                },
                {
                    "id": "3e88d794-3f73-490b-9361-05416f108677",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_InstanceSetTimeRatio",
                    "help": "void spriter_InstanceSetTimeRatio(double ModelIndex, double InstanceIndex, double TimeRatio)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_InstanceSetTimeRatio",
                    "returnType": 2
                },
                {
                    "id": "4447e06a-ce25-45c4-a9a1-75e64205fabb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_InstanceAnimationJustFinished",
                    "help": "bool spriter_InstanceAnimationJustFinished(double ModelIndex, double InstanceIndex, double bLooped)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_InstanceAnimationJustFinished",
                    "returnType": 2
                },
                {
                    "id": "01a18ef3-f3a8-4b8b-b08a-5cbe6cbe7638",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_InstanceGetTriggerInfoCount",
                    "help": "double spriter_InstanceGetTriggerInfoCount(double ModelIndex, double InstanceIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_InstanceGetTriggerInfoCount",
                    "returnType": 2
                },
                {
                    "id": "34f0b42e-6873-472a-bb31-cc7ed89dc051",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_InstanceGetTriggerInfoName",
                    "help": "const char* spriter_InstanceGetTriggerInfoName(double ModelIndex, double InstanceIndex, double TriggerIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_InstanceGetTriggerInfoName",
                    "returnType": 1
                },
                {
                    "id": "87455c24-0694-4921-bb7a-73b688e398fa",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_InstanceGetSoundInfoCount",
                    "help": "double spriter_InstanceGetSoundInfoCount(double ModelIndex, double InstanceIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_InstanceGetSoundInfoCount",
                    "returnType": 2
                },
                {
                    "id": "a1bed4ed-cebd-4b2c-a247-d0bf6af51aa2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_InstanceGetSoundInfoName",
                    "help": "const char* spriter_InstanceGetSoundInfoName(double ModelIndex, double InstanceIndex, double SoundIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_InstanceGetSoundInfoName",
                    "returnType": 1
                },
                {
                    "id": "95de4b01-1e18-492f-a461-a2aa26e6b61f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoAlpha",
                    "help": "double spriter_GetObjectInfoAlpha(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 11,
                    "name": "spriter_GetObjectInfoAlpha",
                    "returnType": 2
                },
                {
                    "id": "a76c3cf3-c968-4cb9-b57e-0196fa9e54cd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoType",
                    "help": "double spriter_GetObjectInfoType(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 11,
                    "name": "spriter_GetObjectInfoType",
                    "returnType": 2
                },
                {
                    "id": "6e3ec01a-02bc-4ae4-9380-83d31774e94a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "spriter_GetErrorsCount",
                    "help": "double spriter_GetErrorsCount()",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetErrorsCount",
                    "returnType": 2
                },
                {
                    "id": "5cca3736-92d6-4d41-b712-d0f45aae278b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "spriter_GetLastError",
                    "help": "const char* spriter_GetLastError()",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetLastError",
                    "returnType": 1
                },
                {
                    "id": "fa138033-542c-422f-aa8e-637f4fa941b7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "spriter_ForceGarbageCollection",
                    "help": "void spriter_ForceGarbageCollection()",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_ForceGarbageCollection",
                    "returnType": 2
                },
                {
                    "id": "8c5ea97f-59f7-4abb-97a6-b082787dc53d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        1,
                        2
                    ],
                    "externalName": "spriter_AddLoadedSprite",
                    "help": "double spriter_AddLoadedSprite(double ModelIndex, const char *pSpriteName, double SpritePtr);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_AddLoadedSprite",
                    "returnType": 2
                },
                {
                    "id": "464d2012-8f1a-4e0a-a1eb-f05afaa1640f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "spriter_FindLoadedSprite",
                    "help": "double spriter_FindLoadedSprite(double ModelIndex, const char *pSpriteName);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_FindLoadedSprite",
                    "returnType": 2
                },
                {
                    "id": "f7efaeb8-a9a7-43ce-ad59-46f715c62b62",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "spriter_GetNumSprites",
                    "help": "double spriter_GetNumSprites(double ModelIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetNumSprites",
                    "returnType": 2
                },
                {
                    "id": "d4eb230e-d3f3-45c2-869d-e1983715a4aa",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_GetSprite",
                    "help": "const char* spriter_GetSprite(double ModelIndex, double SpriteIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetSprite",
                    "returnType": 1
                },
                {
                    "id": "c38f992b-03a8-4ab9-aa76-c77d383b0de7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoSpriteIndex",
                    "help": "double spriter_GetObjectInfoSpriteIndex(double ModelIndex, double InstanceIndex, double ObjectInfoIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoSpriteIndex",
                    "returnType": 2
                },
                {
                    "id": "7715756d-6c95-4dd3-a0a6-9620e4cbcaef",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        1,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetLoadedSpriteTexelSize",
                    "help": "double spriter_SetLoadedSpriteTexelSize(double ModelIndex, const char *pSpriteName, double TexelWidth, double TexelHeight);",
                    "hidden": false,
                    "kind": 11,
                    "name": "spriter_SetLoadedSpriteTexelSize",
                    "returnType": 2
                },
                {
                    "id": "ad84a80e-3cd4-4cdb-b028-04044695f52d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        1,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetLoadedSpriteSize",
                    "help": "double spriter_SetLoadedSpriteSize(double ModelIndex, const char *pSpriteName, double TextureWidth, double TextureHeight);",
                    "hidden": false,
                    "kind": 11,
                    "name": "spriter_SetLoadedSpriteSize",
                    "returnType": 2
                },
                {
                    "id": "b36d9e68-2501-42f1-9a13-92e7665d045d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoMeshPointX",
                    "help": "double spriter_GetObjectInfoMeshPointX(double ModelIndex, double InstanceIndex, double ObjectInfoIndex, double PointIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoMeshPointX",
                    "returnType": 2
                },
                {
                    "id": "93a33c26-1e39-4336-91f0-10304ad182ad",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoMeshPointY",
                    "help": "double spriter_GetObjectInfoMeshPointY(double ModelIndex, double InstanceIndex, double ObjectInfoIndex, double PointIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoMeshPointY",
                    "returnType": 2
                },
                {
                    "id": "f43472b2-2a60-436e-891c-f130f4dda2fd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoMeshUVX",
                    "help": "double spriter_GetObjectInfoMeshUVX(double ModelIndex, double InstanceIndex, double ObjectInfoIndex, double PointIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoMeshUVX",
                    "returnType": 2
                },
                {
                    "id": "e81f8b2e-8b6b-4c75-a8d6-e9cc9d676f48",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoMeshUVY",
                    "help": "double spriter_GetObjectInfoMeshUVY(double ModelIndex, double InstanceIndex, double ObjectInfoIndex, double PointIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoMeshUVY",
                    "returnType": 2
                },
                {
                    "id": "88064f69-d0a5-41b3-9f02-35d6251af370",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_DestroyInstance",
                    "help": "double spriter_DestroyInstance(double ModelIndex, double InstanceIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_DestroyInstance",
                    "returnType": 2
                },
                {
                    "id": "0ff0db3d-cb8d-4a0c-a39f-9159493024be",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "spriter_DestroyModel",
                    "help": "double spriter_DestroyModel(double ModelIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_DestroyModel",
                    "returnType": 2
                },
                {
                    "id": "ea54982c-a88e-4f5a-a08e-e737b8f96237",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "spriter_DestroyAllModels",
                    "help": "double spriter_DestroyAllModels();",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_DestroyAllModels",
                    "returnType": 2
                },
                {
                    "id": "207c7d98-03ab-4f2c-92ec-b343e99ac602",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoName",
                    "help": "const char* spriter_GetObjectInfoName(double ModelIndex, double InstanceIndex, double ObjectInfoIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoName",
                    "returnType": 1
                },
                {
                    "id": "69b87a0e-a9de-4f05-89a6-52055b64c200",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        1
                    ],
                    "externalName": "spriter_SetLockObjectInstance",
                    "help": "double spriter_SetLockObjectInstance(double ModelIndex, double InstanceIndex, const char *ObjectName);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetLockObjectInstance",
                    "returnType": 2
                },
                {
                    "id": "e53df8eb-4584-4264-9c8c-48445bc76671",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_SetUnlockObjectInstance",
                    "help": "double spriter_SetUnlockObjectInstance(double ModelIndex, double InstanceIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetUnlockObjectInstance",
                    "returnType": 2
                },
                {
                    "id": "604475d8-aa7f-4d28-8469-a5308efe43b2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetObjectInstanceIKMode",
                    "help": "double spriter_SetObjectInstanceIKMode(double ModelIndex, double InstanceIndex, double bIKMode, double IKTreshold);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetObjectInstanceIKMode",
                    "returnType": 2
                },
                {
                    "id": "af719606-2206-4d07-becc-a7fe527c9fc8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetObjectInstanceIKPosition",
                    "help": "double spriter_SetObjectInstanceIKPosition(double ModelIndex, double InstanceIndex, double x, double y);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetObjectInstanceIKPosition",
                    "returnType": 2
                },
                {
                    "id": "6cea31ca-5843-4672-9cb0-27a49ee7854c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        1,
                        2
                    ],
                    "externalName": "spriter_SetObjectInstanceManualAngleControl",
                    "help": "double spriter_SetObjectInstanceManualAngleControl(double ModelIndex, double InstanceIndex, const char *ObjectName, double bManualControl);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetObjectInstanceManualAngleControl",
                    "returnType": 2
                },
                {
                    "id": "30c009ba-5863-48b7-8da8-d998dc635b1e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetObjectInstanceManualAngle",
                    "help": "double spriter_SetObjectInstanceManualAngle(double ModelIndex, double InstanceIndex, double x, double y);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetObjectInstanceManualAngle",
                    "returnType": 2
                },
                {
                    "id": "3c1bbf81-a011-42a4-bbb7-df8ebdd29bdf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        1
                    ],
                    "externalName": "spriter_IsObjectInstanceIKMode",
                    "help": "double spriter_IsObjectInstanceIKMode(double ModelIndex, double InstanceIndex, const char *ObjectName);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_IsObjectInstanceIKMode",
                    "returnType": 2
                },
                {
                    "id": "50622ba2-3060-47cf-bb76-9ff07ce99927",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        1
                    ],
                    "externalName": "spriter_IsObjectInstanceManualAngleControl",
                    "help": "double spriter_IsObjectInstanceManualAngleControl(double ModelIndex, double InstanceIndex, const char *ObjectName);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_IsObjectInstanceManualAngleControl",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\spriterGM.dll",
            "uncompress": false
        },
        {
            "id": "f074d091-ebc7-4ec4-a868-575fba282aec",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 2097160,
            "filename": "spriterGM.ext",
            "final": "",
            "functions": [
                {
                    "id": "2e0a1a99-9d4f-42bd-8151-d194f9ca60d1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "spriter_LoadModel",
                    "help": "double spriter_LoadModel(const char *pFile)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_LoadModel",
                    "returnType": 2
                },
                {
                    "id": "bf6a1e68-b0fb-4f84-9667-a8e256ca4a84",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        1,
                        2
                    ],
                    "externalName": "spriter_CreateInstance",
                    "help": "double spriter_CreateInstance(double ModelIndex, const char *pInstanceName)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_CreateInstance",
                    "returnType": 2
                },
                {
                    "id": "c9222472-5ad1-4318-bd0d-3b23e5967436",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoCount",
                    "help": "double spriter_GetObjectInfoCount(double ModelIndex, double InstanceIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoCount",
                    "returnType": 2
                },
                {
                    "id": "3239ea2d-ddad-4716-87a4-273bdbf3e24f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoFileName",
                    "help": "const char *spriter_GetObjectInfoFileName(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoFileName",
                    "returnType": 1
                },
                {
                    "id": "5665161e-5d22-4df2-aeac-40c1afb6a9b2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoString",
                    "help": "const char *spriter_GetObjectInfoString(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoString",
                    "returnType": 1
                },
                {
                    "id": "a040a562-b19c-4143-a280-91e1ad192468",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoPositionX",
                    "help": "double spriter_GetObjectInfoPositionX(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoPositionX",
                    "returnType": 2
                },
                {
                    "id": "22f1e732-9d32-4246-9e3f-5c13c1684c78",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoPositionY",
                    "help": "double spriter_GetObjectInfoPositionY(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoPositionY",
                    "returnType": 2
                },
                {
                    "id": "e602a625-bd93-4d9d-942c-4d0569f4a2bd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoPivotX",
                    "help": "double spriter_GetObjectInfoPivotX(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoPivotX",
                    "returnType": 2
                },
                {
                    "id": "024dd54d-b373-49b3-a455-9cd85e383905",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoPivotY",
                    "help": "double spriter_GetObjectInfoPivotY(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoPivotY",
                    "returnType": 2
                },
                {
                    "id": "85f52724-30de-4681-9f51-e026e6e70cac",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoSizeX",
                    "help": "double spriter_GetObjectInfoSizeX(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoSizeX",
                    "returnType": 2
                },
                {
                    "id": "531fd50c-9ceb-4d4a-9ec2-ad35cc3791ff",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoSizeY",
                    "help": "double spriter_GetObjectInfoSizeY(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoSizeY",
                    "returnType": 2
                },
                {
                    "id": "a40fdd32-1182-4d11-bf92-58e216bb76b1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoScaleX",
                    "help": "double spriter_GetObjectInfoScaleX(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoScaleX",
                    "returnType": 2
                },
                {
                    "id": "2b209584-b120-404d-a6cf-284f4e5b6714",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoScaleY",
                    "help": "double spriter_GetObjectInfoScaleY(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoScaleY",
                    "returnType": 2
                },
                {
                    "id": "de1abec3-62f2-4a2a-b9a0-f85b741aaaab",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoAngle",
                    "help": "double spriter_GetObjectInfoAngle(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoAngle",
                    "returnType": 2
                },
                {
                    "id": "078cf73d-c64d-4166-913a-43e5b89e3389",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_IsGetObjectInfoRender",
                    "help": "double spriter_IsGetObjectInfoRender(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_IsGetObjectInfoRender",
                    "returnType": 2
                },
                {
                    "id": "1eb5b33b-edd2-43e3-9faf-21c4cf0c5ddc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoGMRenderPositionX",
                    "help": "double spriter_GetObjectInfoGMRenderPositionX(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoGMRenderPositionX",
                    "returnType": 2
                },
                {
                    "id": "c7fa5f66-8a54-435a-9bcc-a13cab6ac82d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoGMRenderPositionY",
                    "help": "double spriter_GetObjectInfoGMRenderPositionY(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoGMRenderPositionY",
                    "returnType": 2
                },
                {
                    "id": "0443425b-08d7-4865-9c1e-4ca51fc6be8a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        1,
                        2
                    ],
                    "externalName": "spriter_SetInstanceCurrentAnimation",
                    "help": "void spriter_SetInstanceCurrentAnimation(double ModelIndex, double InstanceIndex, const char *pAnimationName, double BlendTime)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetInstanceCurrentAnimation",
                    "returnType": 2
                },
                {
                    "id": "2f8d92d1-0669-47ab-bffe-c60af3dbf7f6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetInstancePosition",
                    "help": "void spriter_SetInstancePosition(double ModelIndex, double InstanceIndex, double px, double py)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetInstancePosition",
                    "returnType": 2
                },
                {
                    "id": "ae50ac8b-6a9d-4132-b478-8b2b441f9bc2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetInstanceScale",
                    "help": "void spriter_SetInstanceScale(double ModelIndex, double InstanceIndex, double sx, double sy)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetInstanceScale",
                    "returnType": 2
                },
                {
                    "id": "f4e1dac1-6b6f-4bda-b33d-c2a61fe95d80",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetInstanceAngle",
                    "help": "void spriter_SetInstanceAngle(double ModelIndex, double InstanceIndex, double angle)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetInstanceAngle",
                    "returnType": 2
                },
                {
                    "id": "5aa80547-8912-4d6e-9d4d-5293ab38453d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_GetInstancePositionX",
                    "help": "double spriter_GetInstancePositionX(double ModelIndex, double InstanceIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetInstancePositionX",
                    "returnType": 2
                },
                {
                    "id": "5f78d2fd-ed3e-4ffd-9243-d67472003e85",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_GetInstancePositionY",
                    "help": "double spriter_GetInstancePositionY(double ModelIndex, double InstanceIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetInstancePositionY",
                    "returnType": 2
                },
                {
                    "id": "39f417da-c840-4c50-97b4-e2920b2b0cb8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        1
                    ],
                    "externalName": "spriter_ApplyInstanceCharacterMap",
                    "help": "void spriter_ApplyInstanceCharacterMap(double ModelIndex, double InstanceIndex, const char *charMap)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_ApplyInstanceCharacterMap",
                    "returnType": 2
                },
                {
                    "id": "0d4b6cd2-1225-4ee9-a6e1-f507bc41da64",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_UpdateInstance",
                    "help": "void spriter_UpdateInstance(double ModelIndex, double InstanceIndex, double TimeElapsed)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_UpdateInstance",
                    "returnType": 2
                },
                {
                    "id": "5c54b28f-4b5b-414b-ac9d-b0fb6c2c6573",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        1
                    ],
                    "externalName": "spriter_RemoveInstanceCharacterMap",
                    "help": "void spriter_RemoveInstanceCharacterMap(double ModelIndex, double InstanceIndex, const char *charMap)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_RemoveInstanceCharacterMap",
                    "returnType": 2
                },
                {
                    "id": "9bead68c-ff0e-4623-ac2e-b3765629dd10",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_RemoveInstanceAllCharacterMap",
                    "help": "void spriter_RemoveInstanceAllCharacterMap(double ModelIndex, double InstanceIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_RemoveInstanceAllCharacterMap",
                    "returnType": 2
                },
                {
                    "id": "1fa632bb-86f9-4578-855e-a61aeaf7f544",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetInstancePlaybackSpeedRatio",
                    "help": "void spriter_SetInstancePlaybackSpeedRatio(double ModelIndex, double InstanceIndex, double PlaybackSpeedRatio)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetInstancePlaybackSpeedRatio",
                    "returnType": 2
                },
                {
                    "id": "ccf963f9-645e-4b2e-981f-32fb457f849d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_InstanceStartResumePlayback",
                    "help": "void spriter_InstanceStartResumePlayback(double ModelIndex, double InstanceIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_InstanceStartResumePlayback",
                    "returnType": 2
                },
                {
                    "id": "f9777b95-5588-4e28-b988-6fadf8b2286d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_InstancePausePlayback",
                    "help": "void spriter_InstancePausePlayback(double ModelIndex, double InstanceIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_InstancePausePlayback",
                    "returnType": 2
                },
                {
                    "id": "c2c21fa1-f4f9-422d-98f9-406bf5df0f5c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_InstanceSetTimeRatio",
                    "help": "void spriter_InstanceSetTimeRatio(double ModelIndex, double InstanceIndex, double TimeRatio)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_InstanceSetTimeRatio",
                    "returnType": 2
                },
                {
                    "id": "4036a0c1-f4e3-4e59-a651-a1a3000173a8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_InstanceAnimationJustFinished",
                    "help": "bool spriter_InstanceAnimationJustFinished(double ModelIndex, double InstanceIndex, double bLooped)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_InstanceAnimationJustFinished",
                    "returnType": 2
                },
                {
                    "id": "913d906d-a41c-4890-a9c1-e51ef0496398",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_InstanceGetTriggerInfoCount",
                    "help": "double spriter_InstanceGetTriggerInfoCount(double ModelIndex, double InstanceIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_InstanceGetTriggerInfoCount",
                    "returnType": 2
                },
                {
                    "id": "f2a02674-af17-4954-ac59-0130e6d022b4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_InstanceGetTriggerInfoName",
                    "help": "const char* spriter_InstanceGetTriggerInfoName(double ModelIndex, double InstanceIndex, double TriggerIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_InstanceGetTriggerInfoName",
                    "returnType": 1
                },
                {
                    "id": "4ff580fe-6213-49e1-b099-61ad83c92af9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_InstanceGetSoundInfoCount",
                    "help": "double spriter_InstanceGetSoundInfoCount(double ModelIndex, double InstanceIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_InstanceGetSoundInfoCount",
                    "returnType": 2
                },
                {
                    "id": "642f7ab1-8f15-4493-a524-3a9120c7aab8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_InstanceGetSoundInfoName",
                    "help": "const char* spriter_InstanceGetSoundInfoName(double ModelIndex, double InstanceIndex, double SoundIndex)",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_InstanceGetSoundInfoName",
                    "returnType": 1
                },
                {
                    "id": "a4dc19b6-967e-42aa-9391-dc605d857944",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoAlpha",
                    "help": "double spriter_GetObjectInfoAlpha(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 11,
                    "name": "spriter_GetObjectInfoAlpha",
                    "returnType": 2
                },
                {
                    "id": "b7d94da6-c66c-4875-815b-791c1cbbcc0e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoType",
                    "help": "double spriter_GetObjectInfoType(double ModelIndex, double InstanceIndex, double ObjectInfoIndex)",
                    "hidden": false,
                    "kind": 11,
                    "name": "spriter_GetObjectInfoType",
                    "returnType": 2
                },
                {
                    "id": "d3489d7e-c64b-4dd5-bfaa-d15666185203",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "spriter_GetErrorsCount",
                    "help": "double spriter_GetErrorsCount()",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetErrorsCount",
                    "returnType": 2
                },
                {
                    "id": "38f372d7-a4a6-4965-9d9e-19f9a5fda2eb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "spriter_GetLastError",
                    "help": "const char* spriter_GetLastError()",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetLastError",
                    "returnType": 1
                },
                {
                    "id": "96f1e890-a1a3-4fec-8f00-ddb457a1e105",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "spriter_ForceGarbageCollection",
                    "help": "void spriter_ForceGarbageCollection()",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_ForceGarbageCollection",
                    "returnType": 2
                },
                {
                    "id": "a41326f7-ccee-4e3b-8fff-44da3f558b7e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        1,
                        2
                    ],
                    "externalName": "spriter_AddLoadedSprite",
                    "help": "double spriter_AddLoadedSprite(double ModelIndex, const char *pSpriteName, double SpritePtr);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_AddLoadedSprite",
                    "returnType": 2
                },
                {
                    "id": "79050817-55a0-4339-a22a-1dc134a0b7f6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "spriter_FindLoadedSprite",
                    "help": "double spriter_FindLoadedSprite(double ModelIndex, const char *pSpriteName);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_FindLoadedSprite",
                    "returnType": 2
                },
                {
                    "id": "451f745f-6799-451b-a360-5989757c5c20",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "spriter_GetNumSprites",
                    "help": "double spriter_GetNumSprites(double ModelIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetNumSprites",
                    "returnType": 2
                },
                {
                    "id": "8659092a-af9f-4e97-b1fa-7d55a175b157",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_GetSprite",
                    "help": "const char* spriter_GetSprite(double ModelIndex, double SpriteIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetSprite",
                    "returnType": 1
                },
                {
                    "id": "6a97ef76-f806-4cf7-a887-7cd184f381c9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoSpriteIndex",
                    "help": "double spriter_GetObjectInfoSpriteIndex(double ModelIndex, double InstanceIndex, double ObjectInfoIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoSpriteIndex",
                    "returnType": 2
                },
                {
                    "id": "36961e92-1ddb-462a-88ae-299e6f9cfa48",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        1,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetLoadedSpriteTexelSize",
                    "help": "double spriter_SetLoadedSpriteTexelSize(double ModelIndex, const char *pSpriteName, double TexelWidth, double TexelHeight);",
                    "hidden": false,
                    "kind": 11,
                    "name": "spriter_SetLoadedSpriteTexelSize",
                    "returnType": 2
                },
                {
                    "id": "948bee46-881f-4f87-b33d-bdf337f092fe",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        1,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetLoadedSpriteSize",
                    "help": "double spriter_SetLoadedSpriteSize(double ModelIndex, const char *pSpriteName, double TextureWidth, double TextureHeight);",
                    "hidden": false,
                    "kind": 11,
                    "name": "spriter_SetLoadedSpriteSize",
                    "returnType": 2
                },
                {
                    "id": "25e9e773-18f4-43c3-9d35-c31065a04d21",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoMeshPointX",
                    "help": "double spriter_GetObjectInfoMeshPointX(double ModelIndex, double InstanceIndex, double ObjectInfoIndex, double PointIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoMeshPointX",
                    "returnType": 2
                },
                {
                    "id": "4cee41a3-49cb-4bf3-9d7e-4ef5538fb816",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoMeshPointY",
                    "help": "double spriter_GetObjectInfoMeshPointY(double ModelIndex, double InstanceIndex, double ObjectInfoIndex, double PointIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoMeshPointY",
                    "returnType": 2
                },
                {
                    "id": "a403f5c7-6fc9-4c1d-931d-8c46e871cf1a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoMeshUVX",
                    "help": "double spriter_GetObjectInfoMeshUVX(double ModelIndex, double InstanceIndex, double ObjectInfoIndex, double PointIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoMeshUVX",
                    "returnType": 2
                },
                {
                    "id": "50c3b821-e33a-43e5-b645-88fc5e24ff26",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoMeshUVY",
                    "help": "double spriter_GetObjectInfoMeshUVY(double ModelIndex, double InstanceIndex, double ObjectInfoIndex, double PointIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoMeshUVY",
                    "returnType": 2
                },
                {
                    "id": "fac0f48e-fcd4-4889-8c47-05c205f40d64",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_DestroyInstance",
                    "help": "double spriter_DestroyInstance(double ModelIndex, double InstanceIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_DestroyInstance",
                    "returnType": 2
                },
                {
                    "id": "00195b83-5a79-4896-bf4e-404bfded4537",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "spriter_DestroyModel",
                    "help": "double spriter_DestroyModel(double ModelIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_DestroyModel",
                    "returnType": 2
                },
                {
                    "id": "4141e600-f623-4917-8e96-6ebd1e281e27",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "spriter_DestroyAllModels",
                    "help": "double spriter_DestroyAllModels();",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_DestroyAllModels",
                    "returnType": 2
                },
                {
                    "id": "445849ce-e172-4eac-89e5-8882272189a9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_GetObjectInfoName",
                    "help": "spriter_GetObjectInfoName(double ModelIndex, double InstanceIndex, double ObjectInfoIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_GetObjectInfoName",
                    "returnType": 1
                },
                {
                    "id": "2c28c3a7-50ac-4df0-b903-c07ad77341cd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        1
                    ],
                    "externalName": "spriter_SetLockObjectInstance",
                    "help": "double spriter_SetLockObjectInstance(double ModelIndex, double InstanceIndex, const char *ObjectName);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetLockObjectInstance",
                    "returnType": 2
                },
                {
                    "id": "c778fe85-8c19-4022-9898-42377e80f02b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "spriter_SetUnlockObjectInstance",
                    "help": "double spriter_SetUnlockObjectInstance(double ModelIndex, double InstanceIndex);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetUnlockObjectInstance",
                    "returnType": 2
                },
                {
                    "id": "8c9476a6-75cb-410d-9003-890fee0cb1db",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetObjectInstanceIKMode",
                    "help": "double spriter_SetObjectInstanceIKMode(double ModelIndex, double InstanceIndex, double bIKMode, double IKTreshold);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetObjectInstanceIKMode",
                    "returnType": 2
                },
                {
                    "id": "4dfa1073-7868-4bee-a09a-5e1d4b458b44",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetObjectInstanceIKPosition",
                    "help": "double spriter_SetObjectInstanceIKPosition(double ModelIndex, double InstanceIndex, double x, double y);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetObjectInstanceIKPosition",
                    "returnType": 2
                },
                {
                    "id": "6d540ca0-c2c6-42ab-a03b-80b7e56355dd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        1,
                        2
                    ],
                    "externalName": "spriter_SetObjectInstanceManualAngleControl",
                    "help": "double spriter_SetObjectInstanceManualAngleControl(double ModelIndex, double InstanceIndex, const char *ObjectName, double bManualControl);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetObjectInstanceManualAngleControl",
                    "returnType": 2
                },
                {
                    "id": "f487304f-59e0-4f01-a10d-ae13e1c2f703",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "spriter_SetObjectInstanceManualAngle",
                    "help": "double spriter_SetObjectInstanceManualAngle(double ModelIndex, double InstanceIndex, double x, double y);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_SetObjectInstanceManualAngle",
                    "returnType": 2
                },
                {
                    "id": "7636e5e7-5d40-4b5b-9341-e77ede3a0912",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        1
                    ],
                    "externalName": "IsObjectInstanceIKMode",
                    "help": "double spriter_IsObjectInstanceIKMode(double ModelIndex, double InstanceIndex, const char *ObjectName);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_IsObjectInstanceIKMode",
                    "returnType": 2
                },
                {
                    "id": "2b48541c-0ef5-4212-8cb1-f1d763990d30",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        1
                    ],
                    "externalName": "spriter_IsObjectInstanceManualAngleControl",
                    "help": "double spriter_IsObjectInstanceManualAngleControl(double ModelIndex, double InstanceIndex, const char *ObjectName);",
                    "hidden": false,
                    "kind": 12,
                    "name": "spriter_IsObjectInstanceManualAngleControl",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "extensions\\spriterGM.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "compile project(':libspritergm')",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "com.vitaliyzhygotsky.spritergm",
    "productID": "ACBD3CFF4E539AD869A0E8E3B4B022DD",
    "sourcedir": "",
    "version": "1.1.0"
}