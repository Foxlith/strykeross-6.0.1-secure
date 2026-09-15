.class public Lcom/stryker/terminal/Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/Settings$SdcardAppPath;
    }
.end annotation


# static fields
.field static final SDL_ANDROID_CONFIG_VIDEO_DEPTH_BPP:I = 0x0

.field static final SETTINGS_FILE_VERSION:I = 0x5

.field static SettingsFileName:Ljava/lang/String; = "libsdl-settings.cfg"

.field static convertButtonSizeFromOldSdlVersion:Z = false

.field static settingsChanged:Z = false

.field static settingsLoaded:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Apply(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V
    .locals 12

    invoke-static {p0}, Lcom/stryker/terminal/Settings;->setEnvVars(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V

    sget v0, Lcom/stryker/terminal/Globals;->VideoDepthBpp:I

    sget-boolean v1, Lcom/stryker/terminal/Globals;->NeedGles2:Z

    sget-boolean v2, Lcom/stryker/terminal/Globals;->NeedGles3:Z

    invoke-static {v0, v1, v2}, Lcom/stryker/terminal/Settings;->nativeSetVideoDepth(III)V

    sget-boolean v0, Lcom/stryker/terminal/Globals;->VideoLinearFilter:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/stryker/terminal/Settings;->nativeSetVideoLinearFilter()V

    :cond_0
    sget-boolean v0, Lcom/stryker/terminal/Globals;->CompatibilityHacksVideo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/stryker/terminal/Globals;->MultiThreadedVideo:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->SwVideoMode:Z

    invoke-static {}, Lcom/stryker/terminal/Settings;->nativeSetCompatibilityHacks()V

    :cond_1
    sget-boolean v0, Lcom/stryker/terminal/Globals;->SwVideoMode:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/stryker/terminal/Settings;->nativeSetVideoForceSoftwareMode()V

    :cond_2
    sget-boolean v0, Lcom/stryker/terminal/Globals;->SwVideoMode:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/stryker/terminal/Globals;->MultiThreadedVideo:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/stryker/terminal/Settings;->nativeSetVideoMultithreaded()V

    :cond_3
    invoke-static {}, Lcom/stryker/terminal/Settings;->applyMouseEmulationOptions()V

    sget-boolean v0, Lcom/stryker/terminal/Globals;->AppUsesThirdJoystick:Z

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/stryker/terminal/Globals;->AppUsesSecondJoystick:Z

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/stryker/terminal/Globals;->AppUsesJoystick:Z

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v4

    :goto_0
    invoke-static {v0}, Lcom/stryker/terminal/Settings;->nativeSetJoystickUsed(I)V

    sget-boolean v0, Lcom/stryker/terminal/Globals;->AppUsesAccelerometer:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/stryker/terminal/Settings;->nativeSetAccelerometerUsed()V

    :cond_7
    sget-boolean v0, Lcom/stryker/terminal/Globals;->AppUsesMultitouch:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/stryker/terminal/Settings;->nativeSetMultitouchUsed()V

    :cond_8
    sget v0, Lcom/stryker/terminal/Globals;->AccelerometerSensitivity:I

    sget v5, Lcom/stryker/terminal/Globals;->AccelerometerCenterPos:I

    invoke-static {v0, v5}, Lcom/stryker/terminal/Settings;->nativeSetAccelerometerSettings(II)V

    sget-boolean v0, Lcom/stryker/terminal/Globals;->UseTouchscreenKeyboard:Z

    if-eqz v0, :cond_10

    move v0, v4

    move v5, v0

    :goto_1
    sget-object v6, Lcom/stryker/terminal/Globals;->ScreenKbControlsShown:[Z

    array-length v7, v6

    if-ge v0, v7, :cond_a

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_9

    move v5, v1

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->isRunningOnOUYA()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    if-eqz v5, :cond_f

    invoke-static {}, Lcom/stryker/terminal/Settings;->nativeSetTouchscreenKeyboardUsed()V

    sget v6, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardSize:I

    sget v7, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardDrawSize:I

    sget v8, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    sget v9, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTransparency:I

    sget-boolean v10, Lcom/stryker/terminal/Globals;->FloatingScreenJoystick:Z

    sget v11, Lcom/stryker/terminal/Globals;->AppTouchscreenKeyboardKeysAmount:I

    invoke-static/range {v6 .. v11}, Lcom/stryker/terminal/Settings;->nativeSetupScreenKeyboard(IIIIII)V

    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/stryker/terminal/Settings;->SetupTouchscreenKeyboardGraphics(Landroid/content/Context;)V

    move p0, v4

    :goto_2
    sget-object v0, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    array-length v0, v0

    if-ge p0, v0, :cond_c

    sget-object v0, Lcom/stryker/terminal/SDL_Keys;->values:[Ljava/lang/Integer;

    sget-object v5, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    aget v5, v5, p0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/stryker/terminal/Settings;->nativeSetKeymapKeyScreenKb(II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_c
    sget p0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardSize:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_e

    move p0, v4

    :goto_3
    sget-object v0, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    array-length v5, v0

    if-ge p0, v5, :cond_e

    aget-object v0, v0, p0

    aget v5, v0, v4

    aget v6, v0, v2

    if-ge v5, v6, :cond_d

    aget v7, v0, v1

    aget v0, v0, v3

    invoke-static {p0, v5, v7, v6, v0}, Lcom/stryker/terminal/Settings;->nativeSetScreenKbKeyLayout(IIIII)V

    :cond_d
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_e
    move p0, v4

    :goto_4
    sget-object v0, Lcom/stryker/terminal/Globals;->ScreenKbControlsShown:[Z

    array-length v5, v0

    if-ge p0, v5, :cond_10

    aget-boolean v0, v0, p0

    invoke-static {p0, v0}, Lcom/stryker/terminal/Settings;->nativeSetScreenKbKeyUsed(II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_f
    :goto_5
    sput-boolean v4, Lcom/stryker/terminal/Globals;->UseTouchscreenKeyboard:Z

    :cond_10
    move p0, v4

    :goto_6
    const/16 v0, 0xff

    if-ge p0, v0, :cond_11

    sget-object v0, Lcom/stryker/terminal/SDL_Keys;->values:[Ljava/lang/Integer;

    sget-object v5, Lcom/stryker/terminal/Globals;->RemapHwKeycode:[I

    aget v5, v5, p0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/stryker/terminal/Settings;->nativeSetKeymapKey(II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    :cond_11
    move p0, v4

    :goto_7
    sget-object v0, Lcom/stryker/terminal/Globals;->RemapMultitouchGestureKeycode:[I

    array-length v0, v0

    if-ge p0, v0, :cond_13

    sget-object v0, Lcom/stryker/terminal/Globals;->MultitouchGesturesUsed:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/stryker/terminal/SDL_Keys;->values:[Ljava/lang/Integer;

    sget-object v5, Lcom/stryker/terminal/Globals;->RemapMultitouchGestureKeycode:[I

    aget v5, v5, p0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_8

    :cond_12
    move v0, v4

    :goto_8
    invoke-static {p0, v0}, Lcom/stryker/terminal/Settings;->nativeSetKeymapKeyMultitouchGesture(II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :cond_13
    sget p0, Lcom/stryker/terminal/Globals;->MultitouchGestureSensitivity:I

    invoke-static {p0}, Lcom/stryker/terminal/Settings;->nativeSetMultitouchGestureSensitivity(I)V

    sget-object p0, Lcom/stryker/terminal/Globals;->TouchscreenCalibration:[I

    aget v0, p0, v2

    aget v2, p0, v4

    if-le v0, v2, :cond_14

    aget v1, p0, v1

    aget p0, p0, v3

    invoke-static {v2, v1, v0, p0}, Lcom/stryker/terminal/Settings;->nativeSetTouchscreenCalibration(IIII)V

    :cond_14
    return-void
.end method

.method public static DeleteFilesOnUpgrade(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/stryker/terminal/Globals;->DeleteFilesOnUpgrade:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_2

    .line 13
    .line 14
    aget-object v4, v0, v3

    .line 15
    .line 16
    const-string v5, ""

    .line 17
    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    new-instance v5, Ljava/io/File;

    .line 26
    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v7, "/"

    .line 48
    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v5}, Lcom/stryker/terminal/Settings;->deleteRecursivelyAndLog(Ljava/io/File;)Z

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/stryker/terminal/Settings$SdcardAppPath;->get()Lcom/stryker/terminal/Settings$SdcardAppPath;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v5, v6}, Lcom/stryker/terminal/Settings$SdcardAppPath;->allPaths(Landroid/content/Context;)[Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    array-length v6, v5

    .line 78
    move v8, v2

    .line 79
    :goto_1
    if-ge v8, v6, :cond_1

    .line 80
    .line 81
    aget-object v9, v5, v8

    .line 82
    .line 83
    new-instance v10, Ljava/io/File;

    .line 84
    .line 85
    invoke-static {v9, v7, v4}, Landroid/support/v4/media/session/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v10}, Lcom/stryker/terminal/Settings;->deleteRecursivelyAndLog(Ljava/io/File;)Z

    .line 93
    .line 94
    .line 95
    add-int/lit8 v8, v8, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    return-void
.end method

.method public static DeleteSdlConfigOnUpgradeAndRestart(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/stryker/terminal/Settings;->SettingsFileName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/stryker/terminal/Settings;->SettingsFileName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static Load(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V
    .locals 14

    sget-boolean v0, Lcom/stryker/terminal/Settings;->settingsLoaded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "libSDL: Settings.Load(): enter"

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/stryker/terminal/Settings;->nativeInitKeymap()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/16 v3, 0xff

    if-ge v2, v3, :cond_3

    invoke-static {v2}, Lcom/stryker/terminal/Settings;->nativeGetKeymapKey(I)I

    move-result v3

    move v4, v0

    move v5, v4

    :goto_1
    sget-object v6, Lcom/stryker/terminal/SDL_Keys;->values:[Ljava/lang/Integer;

    array-length v7, v6

    if-ge v4, v7, :cond_2

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_1

    move v5, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/stryker/terminal/Globals;->RemapHwKeycode:[I

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_2
    sget-object v3, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    array-length v3, v3

    if-ge v2, v3, :cond_6

    invoke-static {v2}, Lcom/stryker/terminal/Settings;->nativeGetKeymapKeyScreenKb(I)I

    move-result v3

    move v4, v0

    move v5, v4

    :goto_3
    sget-object v6, Lcom/stryker/terminal/SDL_Keys;->values:[Ljava/lang/Integer;

    array-length v7, v6

    if-ge v4, v7, :cond_5

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_4

    move v5, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    sget-object v3, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/stryker/terminal/Globals;->ScreenKbControlsShown:[Z

    sget-boolean v3, Lcom/stryker/terminal/Globals;->AppNeedsArrowKeys:Z

    const/4 v4, 0x1

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/stryker/terminal/Globals;->AppUsesJoystick:Z

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v3, v0

    goto :goto_5

    :cond_8
    :goto_4
    move v3, v4

    :goto_5
    aput-boolean v3, v2, v0

    sget-object v2, Lcom/stryker/terminal/Globals;->ScreenKbControlsShown:[Z

    sget-boolean v3, Lcom/stryker/terminal/Globals;->AppNeedsTextInput:Z

    aput-boolean v3, v2, v4

    const/4 v2, 0x2

    move v3, v2

    :goto_6
    sget-object v5, Lcom/stryker/terminal/Globals;->ScreenKbControlsShown:[Z

    array-length v6, v5

    if-ge v3, v6, :cond_a

    add-int/lit8 v6, v3, -0x2

    sget v7, Lcom/stryker/terminal/Globals;->AppTouchscreenKeyboardKeysAmount:I

    if-ge v6, v7, :cond_9

    move v6, v4

    goto :goto_7

    :cond_9
    move v6, v0

    :goto_7
    aput-boolean v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    sget-boolean v3, Lcom/stryker/terminal/Globals;->AppUsesSecondJoystick:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/stryker/terminal/Globals;->ScreenKbControlsShown:[Z

    const/16 v5, 0x8

    aput-boolean v4, v3, v5

    :cond_b
    sget-boolean v3, Lcom/stryker/terminal/Globals;->AppUsesThirdJoystick:Z

    if-eqz v3, :cond_c

    sget-object v3, Lcom/stryker/terminal/Globals;->ScreenKbControlsShown:[Z

    const/16 v5, 0x9

    aput-boolean v4, v3, v5

    :cond_c
    move v3, v0

    :goto_8
    sget-object v5, Lcom/stryker/terminal/Globals;->RemapMultitouchGestureKeycode:[I

    array-length v5, v5

    if-ge v3, v5, :cond_f

    invoke-static {v3}, Lcom/stryker/terminal/Settings;->nativeGetKeymapKeyMultitouchGesture(I)I

    move-result v5

    move v6, v0

    move v7, v6

    :goto_9
    sget-object v8, Lcom/stryker/terminal/SDL_Keys;->values:[Ljava/lang/Integer;

    array-length v9, v8

    if-ge v6, v9, :cond_e

    aget-object v8, v8, v6

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v5, :cond_d

    move v7, v6

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_e
    sget-object v5, Lcom/stryker/terminal/Globals;->RemapMultitouchGestureKeycode:[I

    aput v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_f
    move v3, v0

    :goto_a
    sget-object v5, Lcom/stryker/terminal/Globals;->MultitouchGesturesUsed:[Z

    array-length v6, v5

    if-ge v3, v6, :cond_10

    aput-boolean v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_10
    const/16 v3, 0x320

    :try_start_0
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    const/16 v5, 0x1e0

    :goto_b
    move v6, v0

    :goto_c
    sget-object v7, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    array-length v8, v7

    if-ge v6, v8, :cond_11

    aget-object v7, v7, v6

    aget v8, v7, v0

    int-to-float v8, v8

    int-to-float v9, v3

    const/high16 v10, 0x44480000    # 800.0f

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v8, v8

    aput v8, v7, v0

    aget v10, v7, v2

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v9, v10

    aput v9, v7, v2

    aget v10, v7, v4

    int-to-float v10, v10

    int-to-float v11, v5

    const/high16 v12, 0x43f00000    # 480.0f

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v7, v4

    const/4 v12, 0x3

    aget v13, v7, v12

    int-to-float v13, v13

    mul-float/2addr v13, v11

    float-to-int v11, v13

    aput v11, v7, v12

    sub-int/2addr v9, v8

    sub-int/2addr v11, v10

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    sget-object v8, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    aget-object v8, v8, v6

    aget v9, v8, v0

    add-int/2addr v9, v7

    aput v9, v8, v2

    aget v9, v8, v4

    add-int/2addr v9, v7

    aput v9, v8, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android.os.Build.MODEL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lcom/stryker/terminal/Settings;->convertButtonSizeFromOldSdlVersion:Z

    const/4 v2, 0x4

    :try_start_1
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/stryker/terminal/Settings;->SettingsFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_20

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->DownloadToSdcard:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->PhoneHasArrowKeys:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->UseAccelerometerAsArrowKeys:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->UseTouchscreenKeyboard:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardSize:I

    sput-boolean v4, Lcom/stryker/terminal/Settings;->convertButtonSizeFromOldSdlVersion:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->AccelerometerSensitivity:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->AccelerometerCenterPos:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->AudioBufferConfig:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->RightClickMethod:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->ShowScreenUnderFinger:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->LeftClickMethod:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->MoveMouseWithJoystick:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->ClickMouseWithDpad:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->ClickScreenPressure:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->ClickScreenTouchspotSize:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->KeepAspectRatio:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->MoveMouseWithJoystickSpeed:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->MoveMouseWithJoystickAccel:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    move v6, v0

    :goto_d
    if-ge v6, v5, :cond_12

    sget-object v7, Lcom/stryker/terminal/Globals;->RemapHwKeycode:[I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v8

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :catch_1
    move-exception v3

    goto/16 :goto_17

    :catch_2
    move-exception v2

    goto/16 :goto_18

    :catch_3
    move-exception v2

    goto/16 :goto_1a

    :cond_12
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sget-object v6, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    array-length v6, v6

    if-ne v5, v6, :cond_1f

    move v5, v0

    :goto_e
    sget-object v6, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    array-length v7, v6

    if-ge v5, v7, :cond_13

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_13
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sget-object v6, Lcom/stryker/terminal/Globals;->ScreenKbControlsShown:[Z

    array-length v6, v6

    if-ne v5, v6, :cond_1e

    move v5, v0

    :goto_f
    sget-object v6, Lcom/stryker/terminal/Globals;->ScreenKbControlsShown:[Z

    array-length v7, v6

    if-ge v5, v7, :cond_14

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v7

    aput-boolean v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_14
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTransparency:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sget-object v6, Lcom/stryker/terminal/Globals;->RemapMultitouchGestureKeycode:[I

    array-length v6, v6

    if-ne v5, v6, :cond_1d

    move v5, v0

    :goto_10
    sget-object v6, Lcom/stryker/terminal/Globals;->RemapMultitouchGestureKeycode:[I

    array-length v7, v6

    if-ge v5, v7, :cond_15

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    aput v7, v6, v5

    sget-object v6, Lcom/stryker/terminal/Globals;->MultitouchGesturesUsed:[Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v7

    aput-boolean v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_15
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->MultitouchGestureSensitivity:I

    move v5, v0

    :goto_11
    sget-object v6, Lcom/stryker/terminal/Globals;->TouchscreenCalibration:[I

    array-length v7, v6

    if-ge v5, v7, :cond_16

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    move v7, v0

    :goto_12
    if-ge v7, v6, :cond_17

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readChar()C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_17
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/stryker/terminal/Globals;->DataDir:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    move v7, v0

    :goto_13
    if-ge v7, v6, :cond_18

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readChar()C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/stryker/terminal/Globals;->CommandLine:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sget-object v6, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    array-length v6, v6

    if-ne v5, v6, :cond_1c

    move v5, v0

    :goto_14
    sget-object v6, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    array-length v6, v6

    if-ge v5, v6, :cond_1a

    move v6, v0

    :goto_15
    if-ge v6, v2, :cond_19

    sget-object v7, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    aget-object v7, v7, v5

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v8

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_1a
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->LeftClickKey:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->RightClickKey:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->VideoLinearFilter:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->LeftClickTimeout:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->RightClickTimeout:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->RelativeMouseMovement:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->RelativeMouseMovementSpeed:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->RelativeMouseMovementAccel:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->MultiThreadedVideo:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    new-array v5, v5, [Z

    sput-object v5, Lcom/stryker/terminal/Globals;->OptionalDataDownload:[Z

    move v5, v0

    :goto_16
    sget-object v6, Lcom/stryker/terminal/Globals;->OptionalDataDownload:[Z

    array-length v7, v6

    if-ge v5, v7, :cond_1b

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v7

    aput-boolean v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_1b
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardDrawSize:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readFloat()F

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readFloat()F

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readFloat()F

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readFloat()F

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readFloat()F

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readFloat()F

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readFloat()F

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readFloat()F

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readFloat()F

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->OuyaEmulation:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->HoverJitterFilter:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->MoveMouseWithGyroscope:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->MoveMouseWithGyroscopeSpeed:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->FingerHover:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->FloatingScreenJoystick:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->GenerateSubframeTouchEvents:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/stryker/terminal/Globals;->VideoDepthBpp:I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->HorizontalOrientation:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->ImmersiveMode:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->AutoDetectOrientation:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->TvBorders:Z

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    sput-boolean v5, Lcom/stryker/terminal/Globals;->ForceHardwareMouse:Z

    sput-boolean v4, Lcom/stryker/terminal/Settings;->settingsLoaded:Z

    const-string v5, "libSDL: Settings.Load(): loaded settings successfully"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    return-void

    :cond_1c
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_1d
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_1e
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_1f
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_20
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_17
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "libSDL: settings file cannot be read: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/stryker/terminal/Settings;->DeleteFilesOnUpgrade(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V

    sget-boolean v3, Lcom/stryker/terminal/Settings;->convertButtonSizeFromOldSdlVersion:Z

    if-eqz v3, :cond_21

    sget v3, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardSize:I

    add-int/lit8 v5, v3, 0x1

    if-ge v5, v2, :cond_21

    add-int/2addr v3, v4

    sput v3, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardSize:I

    goto :goto_1b

    :goto_18
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "libSDL: settings file cannot be opened: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_19
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :goto_1a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "libSDL: settings file not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_19

    :cond_21
    :goto_1b
    sget-object v2, Lcom/stryker/terminal/Globals;->DataDir:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_24

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "libSDL: SD card or external storage is not mounted (state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), switching to the internal storage."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lcom/stryker/terminal/Globals;->DownloadToSdcard:Z

    :cond_22
    sget-boolean v0, Lcom/stryker/terminal/Globals;->DownloadToSdcard:Z

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/stryker/terminal/Settings$SdcardAppPath;->get()Lcom/stryker/terminal/Settings$SdcardAppPath;

    move-result-object v0

    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/stryker/terminal/Settings$SdcardAppPath;->bestPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_23
    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    sput-object v0, Lcom/stryker/terminal/Globals;->DataDir:Ljava/lang/String;

    :cond_24
    const-string v0, "libSDL: Settings.Load(): loading settings failed, running config dialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->initScreenOrientation()V

    return-void
.end method

.method public static Save(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/stryker/terminal/Settings;->SettingsFileName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->DownloadToSdcard:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->PhoneHasArrowKeys:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    invoke-virtual {v0, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->UseAccelerometerAsArrowKeys:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->UseTouchscreenKeyboard:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget p0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardSize:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget p0, Lcom/stryker/terminal/Globals;->AccelerometerSensitivity:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget p0, Lcom/stryker/terminal/Globals;->AccelerometerCenterPos:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {v0, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget p0, Lcom/stryker/terminal/Globals;->AudioBufferConfig:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget p0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget p0, Lcom/stryker/terminal/Globals;->RightClickMethod:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget p0, Lcom/stryker/terminal/Globals;->ShowScreenUnderFinger:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget p0, Lcom/stryker/terminal/Globals;->LeftClickMethod:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->MoveMouseWithJoystick:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->ClickMouseWithDpad:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget p0, Lcom/stryker/terminal/Globals;->ClickScreenPressure:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget p0, Lcom/stryker/terminal/Globals;->ClickScreenTouchspotSize:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->KeepAspectRatio:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget p0, Lcom/stryker/terminal/Globals;->MoveMouseWithJoystickSpeed:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget p0, Lcom/stryker/terminal/Globals;->MoveMouseWithJoystickAccel:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/16 p0, 0xff

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    move v1, v2

    :goto_0
    if-ge v1, p0, :cond_0

    sget-object v3, Lcom/stryker/terminal/Globals;->RemapHwKeycode:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    move p0, v2

    :goto_1
    sget-object v1, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    array-length v3, v1

    if-ge p0, v3, :cond_1

    aget v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/stryker/terminal/Globals;->ScreenKbControlsShown:[Z

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    move p0, v2

    :goto_2
    sget-object v1, Lcom/stryker/terminal/Globals;->ScreenKbControlsShown:[Z

    array-length v3, v1

    if-ge p0, v3, :cond_2

    aget-boolean v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_2
    sget p0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTransparency:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget-object p0, Lcom/stryker/terminal/Globals;->RemapMultitouchGestureKeycode:[I

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    move p0, v2

    :goto_3
    sget-object v1, Lcom/stryker/terminal/Globals;->RemapMultitouchGestureKeycode:[I

    array-length v3, v1

    if-ge p0, v3, :cond_3

    aget v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget-object v1, Lcom/stryker/terminal/Globals;->MultitouchGesturesUsed:[Z

    aget-boolean v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    sget p0, Lcom/stryker/terminal/Globals;->MultitouchGestureSensitivity:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    move p0, v2

    :goto_4
    sget-object v1, Lcom/stryker/terminal/Globals;->TouchscreenCalibration:[I

    array-length v3, v1

    if-ge p0, v3, :cond_4

    aget v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_4
    sget-object p0, Lcom/stryker/terminal/Globals;->DataDir:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    move p0, v2

    :goto_5
    sget-object v1, Lcom/stryker/terminal/Globals;->DataDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p0, v1, :cond_5

    sget-object v1, Lcom/stryker/terminal/Globals;->DataDir:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeChar(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_5
    sget-object p0, Lcom/stryker/terminal/Globals;->CommandLine:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    move p0, v2

    :goto_6
    sget-object v1, Lcom/stryker/terminal/Globals;->CommandLine:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p0, v1, :cond_6

    sget-object v1, Lcom/stryker/terminal/Globals;->CommandLine:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeChar(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    :cond_6
    sget-object p0, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    move p0, v2

    :goto_7
    sget-object v1, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    array-length v1, v1

    if-ge p0, v1, :cond_8

    move v1, v2

    :goto_8
    const/4 v3, 0x4

    if-ge v1, v3, :cond_7

    sget-object v3, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    aget-object v3, v3, p0

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :cond_8
    sget p0, Lcom/stryker/terminal/Globals;->LeftClickKey:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget p0, Lcom/stryker/terminal/Globals;->RightClickKey:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->VideoLinearFilter:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget p0, Lcom/stryker/terminal/Globals;->LeftClickTimeout:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget p0, Lcom/stryker/terminal/Globals;->RightClickTimeout:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->RelativeMouseMovement:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget p0, Lcom/stryker/terminal/Globals;->RelativeMouseMovementSpeed:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget p0, Lcom/stryker/terminal/Globals;->RelativeMouseMovementAccel:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->MultiThreadedVideo:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget-object p0, Lcom/stryker/terminal/Globals;->OptionalDataDownload:[Z

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    move p0, v2

    :goto_9
    sget-object v1, Lcom/stryker/terminal/Globals;->OptionalDataDownload:[Z

    array-length v3, v1

    if-ge p0, v3, :cond_9

    aget-boolean v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_9
    invoke-virtual {v0, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget p0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardDrawSize:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->OuyaEmulation:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->HoverJitterFilter:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->MoveMouseWithGyroscope:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget p0, Lcom/stryker/terminal/Globals;->MoveMouseWithGyroscopeSpeed:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->FingerHover:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->FloatingScreenJoystick:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->GenerateSubframeTouchEvents:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget p0, Lcom/stryker/terminal/Globals;->VideoDepthBpp:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->HorizontalOrientation:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->ImmersiveMode:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->AutoDetectOrientation:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->TvBorders:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    sget-boolean p0, Lcom/stryker/terminal/Globals;->ForceHardwareMouse:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/stryker/terminal/Settings;->settingsLoaded:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static SetupTouchscreenKeyboardGraphics(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/stryker/terminal/Globals;->UseTouchscreenKeyboard:Z

    if-eqz v0, :cond_b

    sget v0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    :cond_0
    sget v0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    sput v1, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    :cond_1
    sget v0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    if-nez v0, :cond_2

    sget v0, Lcom/stryker/terminal/xorg/R$raw;->ultimatedroid:I

    invoke-static {p0, v0}, Lcom/stryker/terminal/Settings;->loadRaw(Landroid/content/Context;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/stryker/terminal/Settings;->nativeSetupScreenKeyboardButtons([B)V

    :cond_2
    sget v0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    sget v0, Lcom/stryker/terminal/xorg/R$raw;->simpletheme:I

    invoke-static {p0, v0}, Lcom/stryker/terminal/Settings;->loadRaw(Landroid/content/Context;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/stryker/terminal/Settings;->nativeSetupScreenKeyboardButtons([B)V

    :cond_3
    sget v0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    sget v0, Lcom/stryker/terminal/xorg/R$raw;->sun:I

    invoke-static {p0, v0}, Lcom/stryker/terminal/Settings;->loadRaw(Landroid/content/Context;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/stryker/terminal/Settings;->nativeSetupScreenKeyboardButtons([B)V

    :cond_4
    sget v0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    sget v0, Lcom/stryker/terminal/xorg/R$raw;->keen:I

    invoke-static {p0, v0}, Lcom/stryker/terminal/Settings;->loadRaw(Landroid/content/Context;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/stryker/terminal/Settings;->nativeSetupScreenKeyboardButtons([B)V

    :cond_5
    sget v0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    sget v0, Lcom/stryker/terminal/xorg/R$raw;->retro:I

    invoke-static {p0, v0}, Lcom/stryker/terminal/Settings;->loadRaw(Landroid/content/Context;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/stryker/terminal/Settings;->nativeSetupScreenKeyboardButtons([B)V

    :cond_6
    sget v0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    sget v0, Lcom/stryker/terminal/xorg/R$raw;->gba:I

    invoke-static {p0, v0}, Lcom/stryker/terminal/Settings;->loadRaw(Landroid/content/Context;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/stryker/terminal/Settings;->nativeSetupScreenKeyboardButtons([B)V

    :cond_7
    sget v0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_8

    sget v0, Lcom/stryker/terminal/xorg/R$raw;->psx:I

    invoke-static {p0, v0}, Lcom/stryker/terminal/Settings;->loadRaw(Landroid/content/Context;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/stryker/terminal/Settings;->nativeSetupScreenKeyboardButtons([B)V

    :cond_8
    sget v0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_9

    sget v0, Lcom/stryker/terminal/xorg/R$raw;->snes:I

    invoke-static {p0, v0}, Lcom/stryker/terminal/Settings;->loadRaw(Landroid/content/Context;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/stryker/terminal/Settings;->nativeSetupScreenKeyboardButtons([B)V

    :cond_9
    sget v0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_a

    sget v0, Lcom/stryker/terminal/xorg/R$raw;->dualshock:I

    invoke-static {p0, v0}, Lcom/stryker/terminal/Settings;->loadRaw(Landroid/content/Context;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/stryker/terminal/Settings;->nativeSetupScreenKeyboardButtons([B)V

    :cond_a
    sget v0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    if-ne v0, v1, :cond_b

    sget v0, Lcom/stryker/terminal/xorg/R$raw;->n64:I

    invoke-static {p0, v0}, Lcom/stryker/terminal/Settings;->loadRaw(Landroid/content/Context;I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/stryker/terminal/Settings;->nativeSetupScreenKeyboardButtons([B)V

    :cond_b
    return-void
.end method

.method public static applyMouseEmulationOptions()V
    .locals 24

    sget-boolean v0, Lcom/stryker/terminal/Globals;->AppUsesMouse:Z

    if-eqz v0, :cond_0

    sget v1, Lcom/stryker/terminal/Globals;->RightClickMethod:I

    sget v2, Lcom/stryker/terminal/Globals;->ShowScreenUnderFinger:I

    sget v3, Lcom/stryker/terminal/Globals;->LeftClickMethod:I

    sget-boolean v4, Lcom/stryker/terminal/Globals;->MoveMouseWithJoystick:Z

    sget-boolean v5, Lcom/stryker/terminal/Globals;->ClickMouseWithDpad:Z

    sget v6, Lcom/stryker/terminal/Globals;->ClickScreenPressure:I

    sget v7, Lcom/stryker/terminal/Globals;->ClickScreenTouchspotSize:I

    sget v8, Lcom/stryker/terminal/Globals;->MoveMouseWithJoystickSpeed:I

    sget v9, Lcom/stryker/terminal/Globals;->MoveMouseWithJoystickAccel:I

    sget v10, Lcom/stryker/terminal/Globals;->LeftClickKey:I

    sget v11, Lcom/stryker/terminal/Globals;->RightClickKey:I

    sget v12, Lcom/stryker/terminal/Globals;->LeftClickTimeout:I

    sget v13, Lcom/stryker/terminal/Globals;->RightClickTimeout:I

    sget-boolean v14, Lcom/stryker/terminal/Globals;->RelativeMouseMovement:Z

    sget v15, Lcom/stryker/terminal/Globals;->RelativeMouseMovementSpeed:I

    sget v16, Lcom/stryker/terminal/Globals;->RelativeMouseMovementAccel:I

    sget-boolean v17, Lcom/stryker/terminal/Globals;->ShowMouseCursor:Z

    sget-boolean v18, Lcom/stryker/terminal/Globals;->HoverJitterFilter:Z

    sget-boolean v19, Lcom/stryker/terminal/Globals;->RightMouseButtonLongPress:Z

    sget-boolean v20, Lcom/stryker/terminal/Globals;->MoveMouseWithGyroscope:Z

    sget v21, Lcom/stryker/terminal/Globals;->MoveMouseWithGyroscopeSpeed:I

    sget-boolean v22, Lcom/stryker/terminal/Globals;->CompatibilityHacksForceScreenUpdateMouseClick:Z

    sget-boolean v23, Lcom/stryker/terminal/Globals;->ScreenFollowsMouse:Z

    invoke-static/range {v1 .. v23}, Lcom/stryker/terminal/Settings;->nativeSetMouseUsed(IIIIIIIIIIIIIIIIIIIIIII)V

    :cond_0
    return-void
.end method

.method public static deleteRecursively(Ljava/io/File;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    move v3, v1

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v3

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/stryker/terminal/Settings;->deleteRecursively(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public static deleteRecursivelyAndLog(Ljava/io/File;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    move v3, v1

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v3

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/stryker/terminal/Settings;->deleteRecursively(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public static loadRaw(Landroid/content/Context;I)[B
    .locals 6

    const/high16 v0, 0x20000

    new-array v0, v0, [B

    const/high16 v1, 0x500000

    new-array v1, v1, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p0, v2

    :goto_0
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ltz p1, :cond_1

    add-int v4, p0, p1

    array-length v5, v1

    if-le v4, v5, :cond_0

    new-array v5, v4, [B

    invoke-static {v1, v2, v5, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    :cond_0
    invoke-static {v0, v2, v1, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move p0, v4

    goto :goto_0

    :catch_0
    move p0, v2

    :catch_1
    :cond_1
    new-array p1, p0, [B

    invoke-static {v1, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static native nativeChdir(Ljava/lang/String;)V
.end method

.method public static native nativeChmod(Ljava/lang/String;I)I
.end method

.method private static native nativeGetKeymapKey(I)I
.end method

.method private static native nativeGetKeymapKeyMultitouchGesture(I)I
.end method

.method private static native nativeGetKeymapKeyScreenKb(I)I
.end method

.method private static native nativeInitKeymap()V
.end method

.method private static native nativeSetAccelerometerSettings(II)V
.end method

.method private static native nativeSetAccelerometerUsed()V
.end method

.method private static native nativeSetCompatibilityHacks()V
.end method

.method public static native nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetJoystickUsed(I)V
.end method

.method private static native nativeSetKeymapKey(II)V
.end method

.method private static native nativeSetKeymapKeyMultitouchGesture(II)V
.end method

.method private static native nativeSetKeymapKeyScreenKb(II)V
.end method

.method private static native nativeSetMouseUsed(IIIIIIIIIIIIIIIIIIIIIII)V
.end method

.method private static native nativeSetMultitouchGestureSensitivity(I)V
.end method

.method private static native nativeSetMultitouchUsed()V
.end method

.method private static native nativeSetScreenKbKeyLayout(IIIII)V
.end method

.method private static native nativeSetScreenKbKeyUsed(II)V
.end method

.method private static native nativeSetTouchscreenCalibration(IIII)V
.end method

.method private static native nativeSetTouchscreenKeyboardUsed()V
.end method

.method private static native nativeSetVideoDepth(III)V
.end method

.method private static native nativeSetVideoForceSoftwareMode()V
.end method

.method private static native nativeSetVideoLinearFilter()V
.end method

.method private static native nativeSetVideoMultithreaded()V
.end method

.method private static native nativeSetupScreenKeyboard(IIIIII)V
.end method

.method private static native nativeSetupScreenKeyboardButtons([B)V
.end method

.method public static setConfigOptionFromSDL(II)V
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setConfigOptionFromSDL: cannot find option with ID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", value "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SDL"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sput p1, Lcom/stryker/terminal/Globals;->VideoDepthBpp:I

    :goto_0
    sget-object p0, Lcom/stryker/terminal/MainActivity;->instance:Lcom/stryker/terminal/MainActivity;

    invoke-static {p0}, Lcom/stryker/terminal/Settings;->Save(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V

    return-void
.end method

.method public static setEnvVars(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    const-string v1, "_"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "libSDL: setting env LANGUAGE to \'"

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, "\'"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "SDL"

    .line 64
    .line 65
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    const-string v1, "LANG"

    .line 69
    .line 70
    invoke-static {v1, v0}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v1, "LANGUAGE"

    .line 74
    .line 75
    invoke-static {v1, v0}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "APPDIR"

    .line 91
    .line 92
    invoke-static {v1, v0}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v1, "SECURE_STORAGE_DIR"

    .line 108
    .line 109
    invoke-static {v1, v0}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v0, "DATADIR"

    .line 113
    .line 114
    sget-object v1, Lcom/stryker/terminal/Globals;->DataDir:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v0, v1}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v0, "UNSECURE_STORAGE_DIR"

    .line 120
    .line 121
    sget-object v1, Lcom/stryker/terminal/Globals;->UnSecureDataDir:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v0, v1}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lcom/stryker/terminal/Settings$SdcardAppPath;->get()Lcom/stryker/terminal/Settings$SdcardAppPath;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lcom/stryker/terminal/Settings$SdcardAppPath;->setEnv(Landroid/content/Context;)V

    .line 135
    .line 136
    .line 137
    const-string v0, "HOME"

    .line 138
    .line 139
    sget-object v1, Lcom/stryker/terminal/Globals;->HomeDir:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v0, v1}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const-string v1, "SDCARD"

    .line 153
    .line 154
    invoke-static {v1, v0}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const-string v1, "SDCARD_DOWNLOADS"

    .line 168
    .line 169
    invoke-static {v1, v0}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v1, "SDCARD_PICTURES"

    .line 183
    .line 184
    invoke-static {v1, v0}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const-string v1, "SDCARD_MOVIES"

    .line 198
    .line 199
    invoke-static {v1, v0}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    const-string v1, "SDCARD_DCIM"

    .line 213
    .line 214
    invoke-static {v1, v0}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 218
    .line 219
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    const-string v1, "SDCARD_MUSIC"

    .line 228
    .line 229
    invoke-static {v1, v0}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 233
    .line 234
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    const-string v1, "ANDROID_VERSION"

    .line 239
    .line 240
    invoke-static {v1, v0}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    const-string v1, "ANDROID_PACKAGE_NAME"

    .line 252
    .line 253
    invoke-static {v1, v0}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    const-string v1, "ANDROID_PACKAGE_PATH"

    .line 265
    .line 266
    invoke-static {v1, v0}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    const-string v1, "ANDROID_MY_OWN_APP_FILE"

    .line 278
    .line 279
    invoke-static {v1, v0}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    :try_start_0
    const-string v0, "ANDROID_APP_NAME"

    .line 283
    .line 284
    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 297
    .line 298
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-static {v0, v1}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .line 304
    .line 305
    :catch_0
    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->isRunningOnOUYA()Z

    .line 306
    .line 307
    .line 308
    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->isRunningOnOUYA()Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_1

    .line 313
    .line 314
    const-string v0, "OUYA"

    .line 315
    .line 316
    const-string v1, "1"

    .line 317
    .line 318
    invoke-static {v0, v1}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const-string v0, "TV"

    .line 322
    .line 323
    invoke-static {v0, v1}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    const-string v0, "ANDROID_TV"

    .line 327
    .line 328
    invoke-static {v0, v1}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    :cond_1
    :try_start_1
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 332
    .line 333
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 334
    .line 335
    .line 336
    invoke-interface {p0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getWindowManager()Landroid/view/WindowManager;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 345
    .line 346
    .line 347
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 348
    .line 349
    int-to-float p0, p0

    .line 350
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 351
    .line 352
    div-float/2addr p0, v1

    .line 353
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 354
    .line 355
    int-to-float v1, v1

    .line 356
    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 357
    .line 358
    div-float/2addr v1, v2

    .line 359
    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    .line 364
    .line 365
    .line 366
    move-result p0

    .line 367
    mul-float v1, v2, v2

    .line 368
    .line 369
    mul-float v3, p0, p0

    .line 370
    .line 371
    add-float/2addr v3, v1

    .line 372
    float-to-double v3, v3

    .line 373
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 374
    .line 375
    .line 376
    move-result-wide v3

    .line 377
    double-to-float v1, v3

    .line 378
    const-string v3, "DISPLAY_SIZE"

    .line 379
    .line 380
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    invoke-static {v3, v4}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    const-string v3, "DISPLAY_SIZE_MM"

    .line 388
    .line 389
    const v4, 0x41cb3333    # 25.4f

    .line 390
    .line 391
    .line 392
    mul-float/2addr v1, v4

    .line 393
    float-to-int v1, v1

    .line 394
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-static {v3, v1}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    const-string v1, "DISPLAY_WIDTH"

    .line 402
    .line 403
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    invoke-static {v1, v3}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    const-string v1, "DISPLAY_HEIGHT"

    .line 411
    .line 412
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    invoke-static {v1, v3}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    const-string v1, "DISPLAY_WIDTH_MM"

    .line 420
    .line 421
    mul-float/2addr v2, v4

    .line 422
    float-to-int v2, v2

    .line 423
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-static {v1, v2}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    const-string v1, "DISPLAY_HEIGHT_MM"

    .line 431
    .line 432
    mul-float/2addr p0, v4

    .line 433
    float-to-int p0, p0

    .line 434
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p0

    .line 438
    invoke-static {v1, p0}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    const-string p0, "DISPLAY_RESOLUTION_WIDTH"

    .line 442
    .line 443
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 444
    .line 445
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 446
    .line 447
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-static {p0, v1}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    const-string p0, "DISPLAY_RESOLUTION_HEIGHT"

    .line 459
    .line 460
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 461
    .line 462
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 463
    .line 464
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-static {p0, v0}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    .line 474
    .line 475
    :catch_1
    return-void
.end method
