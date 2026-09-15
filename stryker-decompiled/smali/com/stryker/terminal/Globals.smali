.class public Lcom/stryker/terminal/Globals;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static AccelerometerCenterPos:I = 0x0

.field public static AccelerometerSensitivity:I = 0x0

.field public static AppLibraries:[Ljava/lang/String; = null

.field public static AppMinimumRAM:I = 0x0

.field public static AppNeedsArrowKeys:Z = false

.field public static AppNeedsTextInput:Z = false

.field public static AppNeedsTwoButtonMouse:Z = false

.field public static AppTouchscreenKeyboardKeysAmount:I = 0x0

.field public static AppTouchscreenKeyboardKeysNames:[Ljava/lang/String; = null

.field public static AppUsesAccelerometer:Z = false

.field public static AppUsesGyroscope:Z = false

.field public static AppUsesJoystick:Z = false

.field public static AppUsesMouse:Z = false

.field public static AppUsesMultitouch:Z = false

.field public static AppUsesOrientationSensor:Z = false

.field public static AppUsesSecondJoystick:Z = false

.field public static AppUsesThirdJoystick:Z = false

.field public static AudioBufferConfig:I = 0x0

.field public static AutoDetectOrientation:Z = false

.field public static ClickMouseWithDpad:Z = false

.field public static ClickScreenPressure:I = 0x0

.field public static ClickScreenTouchspotSize:I = 0x0

.field public static CommandLine:Ljava/lang/String; = null

.field public static CompatibilityHacksForceScreenUpdateMouseClick:Z = false

.field public static CompatibilityHacksStaticInit:Z = false

.field public static CompatibilityHacksTextInputEmulatesHwKeyboard:Z = false

.field public static CompatibilityHacksVideo:Z = false

.field public static CreateService:Z = false

.field public static DataDir:Ljava/lang/String; = null

.field public static DataDownloadUrl:[Ljava/lang/String; = null

.field public static DeleteFilesOnUpgrade:Ljava/lang/String; = null

.field public static DownloadToSdcard:Z = false

.field public static FingerHover:Z = false

.field public static FirstStartMenuOptions:[Lcom/stryker/terminal/SettingsMenu$Menu; = null

.field public static FloatingScreenJoystick:Z = false

.field public static ForceHardwareMouse:Z = false

.field public static ForceRelativeMouseMode:Z = false

.field public static GenerateSubframeTouchEvents:Z = false

.field public static HiddenMenuOptions:[Lcom/stryker/terminal/SettingsMenu$Menu; = null

.field public static HideSystemMousePointer:Z = false

.field public static HomeDir:Ljava/lang/String; = null

.field public static HorizontalOrientation:Z = false

.field public static HoverJitterFilter:Z = false

.field public static ImmersiveMode:Z = false

.field public static InhibitSuspend:Z = false

.field public static KeepAspectRatio:Z = false

.field public static KeepAspectRatioDefaultSetting:Z = false

.field public static LeftClickKey:I = 0x0

.field public static LeftClickMethod:I = 0x0

.field public static LeftClickTimeout:I = 0x0

.field public static MoveMouseWithGyroscope:Z = false

.field public static MoveMouseWithGyroscopeSpeed:I = 0x0

.field public static MoveMouseWithJoystick:Z = false

.field public static MoveMouseWithJoystickAccel:I = 0x0

.field public static MoveMouseWithJoystickSpeed:I = 0x0

.field public static MultiThreadedVideo:Z = false

.field public static MultitouchGestureSensitivity:I = 0x0

.field public static MultitouchGesturesUsed:[Z = null

.field public static NeedDepthBuffer:Z = false

.field public static NeedGles2:Z = false

.field public static NeedGles3:Z = false

.field public static NeedStencilBuffer:Z = false

.field public static NonBlockingSwapBuffers:Z = false

.field public static OptionalDataDownload:[Z = null

.field public static OuyaEmulation:Z = false

.field public static PhoneHasArrowKeys:Z = false

.field public static ReadmeText:Ljava/lang/String; = null

.field public static RelativeMouseMovement:Z = false

.field public static RelativeMouseMovementAccel:I = 0x0

.field public static RelativeMouseMovementSpeed:I = 0x0

.field public static RemapHwKeycode:[I = null

.field public static RemapMultitouchGestureKeycode:[I = null

.field public static RemapScreenKbKeycode:[I = null

.field public static ResetSdlConfigForThisVersion:Z = false

.field public static RightClickKey:I = 0x0

.field public static RightClickMethod:I = 0x0

.field public static RightClickTimeout:I = 0x0

.field public static RightMouseButtonLongPress:Z = false

.field public static ScreenFollowsMouse:Z = false

.field public static ScreenKbControlsLayout:[[I = null

.field public static ScreenKbControlsShown:[Z = null

.field public static ShowMouseCursor:Z = false

.field public static ShowScreenUnderFinger:I = 0x0

.field public static StartupMenuButtonTimeout:I = 0x0

.field public static SwVideoMode:Z = false

.field public static final TOUCHSCREEN_KEYBOARD_CUSTOM:I = 0x4

.field public static TextInputKeyboard:I = 0x0

.field public static TouchscreenCalibration:[I = null

.field public static TouchscreenKeyboardDrawSize:I = 0x0

.field public static TouchscreenKeyboardSize:I = 0x0

.field public static TouchscreenKeyboardTheme:I = 0x0

.field public static TouchscreenKeyboardTransparency:I = 0x0

.field public static TvBorders:Z = false

.field public static UnSecureDataDir:Ljava/lang/String; = null

.field public static UseAccelerometerAsArrowKeys:Z = false

.field public static UseTouchscreenKeyboard:Z = false

.field public static final Using_SDL_1_3:Z = false

.field public static final Using_SDL_2_0:Z = false

.field public static VideoDepthBpp:I = 0x0

.field public static VideoLinearFilter:Z = false

.field public static XAPP_LIBS:[Ljava/lang/String; = null

.field public static XLIBS:[Ljava/lang/String; = null

.field public static XLIB_DIR:Ljava/lang/String; = "/data/data/io.neoterm/files/usr/lib/xorg-neoterm"


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "x11_sdl_ttf"

    const-string v1, "x11_crypto"

    const-string v2, "x11_sdl_native_helpers"

    const-string v3, "x11_sdl-1.2"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stryker/terminal/Globals;->XLIBS:[Ljava/lang/String;

    const-string v0, "x11_application"

    const-string v1, "x11_sdl_main"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stryker/terminal/Globals;->XAPP_LIBS:[Ljava/lang/String;

    const-string v0, "sdl_ttf"

    const-string v1, "crypto"

    const-string v2, "sdl_native_helpers"

    const-string v3, "sdl-1.2"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stryker/terminal/Globals;->AppLibraries:[Ljava/lang/String;

    const-string v0, "!!Data files|:DroidSansMono.ttf:DroidSansMono.ttf"

    const-string v1, "Additional fonts (90Mb)|:xfonts.tar.gz:http://sourceforge.net/projects/libsdl-android/files/apk/XServer-XSDL/xfonts.tgz/download"

    const-string v2, "!!Data files|:data.tar.gz:data-1.tgz"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stryker/terminal/Globals;->DataDownloadUrl:[Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/stryker/terminal/Globals;->SwVideoMode:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/stryker/terminal/Globals;->NeedDepthBuffer:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->NeedStencilBuffer:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->NeedGles2:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->NeedGles3:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->CompatibilityHacksVideo:Z

    sput-boolean v0, Lcom/stryker/terminal/Globals;->CompatibilityHacksForceScreenUpdateMouseClick:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->CompatibilityHacksStaticInit:Z

    sput-boolean v0, Lcom/stryker/terminal/Globals;->CompatibilityHacksTextInputEmulatesHwKeyboard:Z

    sput v1, Lcom/stryker/terminal/Globals;->TextInputKeyboard:I

    sput-boolean v1, Lcom/stryker/terminal/Globals;->KeepAspectRatioDefaultSetting:Z

    sput-boolean v0, Lcom/stryker/terminal/Globals;->InhibitSuspend:Z

    sput-boolean v0, Lcom/stryker/terminal/Globals;->CreateService:Z

    const-string v2, ""

    sput-object v2, Lcom/stryker/terminal/Globals;->ReadmeText:Ljava/lang/String;

    const-string v2, "XSDL"

    sput-object v2, Lcom/stryker/terminal/Globals;->CommandLine:Ljava/lang/String;

    sput-boolean v0, Lcom/stryker/terminal/Globals;->AppUsesMouse:Z

    sput-boolean v0, Lcom/stryker/terminal/Globals;->AppNeedsTwoButtonMouse:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->RightMouseButtonLongPress:Z

    sput-boolean v0, Lcom/stryker/terminal/Globals;->ForceRelativeMouseMode:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->ShowMouseCursor:Z

    sput-boolean v0, Lcom/stryker/terminal/Globals;->ScreenFollowsMouse:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->AppNeedsArrowKeys:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->AppNeedsTextInput:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->AppUsesJoystick:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->AppUsesSecondJoystick:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->AppUsesThirdJoystick:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->AppUsesAccelerometer:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->AppUsesGyroscope:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->AppUsesOrientationSensor:Z

    sput-boolean v0, Lcom/stryker/terminal/Globals;->AppUsesMultitouch:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->NonBlockingSwapBuffers:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->ResetSdlConfigForThisVersion:Z

    const-string v2, "%"

    sput-object v2, Lcom/stryker/terminal/Globals;->DeleteFilesOnUpgrade:Ljava/lang/String;

    const/4 v2, 0x3

    sput v2, Lcom/stryker/terminal/Globals;->AppTouchscreenKeyboardKeysAmount:I

    const-string v3, "LCTRL LALT LSHIFT RETURN SPACE DELETE KP_PLUS KP_MINUS 1 2"

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/stryker/terminal/Globals;->AppTouchscreenKeyboardKeysNames:[Ljava/lang/String;

    const/16 v3, 0xbb8

    sput v3, Lcom/stryker/terminal/Globals;->StartupMenuButtonTimeout:I

    sput v1, Lcom/stryker/terminal/Globals;->AppMinimumRAM:I

    new-array v3, v1, [Lcom/stryker/terminal/SettingsMenu$Menu;

    sput-object v3, Lcom/stryker/terminal/Globals;->HiddenMenuOptions:[Lcom/stryker/terminal/SettingsMenu$Menu;

    const/4 v3, 0x2

    new-array v4, v3, [Lcom/stryker/terminal/SettingsMenu$Menu;

    new-instance v5, Lcom/stryker/terminal/SettingsMenuMisc$GyroscopeCalibration;

    invoke-direct {v5}, Lcom/stryker/terminal/SettingsMenuMisc$GyroscopeCalibration;-><init>()V

    aput-object v5, v4, v1

    new-instance v5, Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig;

    invoke-direct {v5}, Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig;-><init>()V

    aput-object v5, v4, v0

    sput-object v4, Lcom/stryker/terminal/Globals;->FirstStartMenuOptions:[Lcom/stryker/terminal/SettingsMenu$Menu;

    const/16 v4, 0x10

    sput v4, Lcom/stryker/terminal/Globals;->VideoDepthBpp:I

    sput-boolean v0, Lcom/stryker/terminal/Globals;->HorizontalOrientation:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->AutoDetectOrientation:Z

    sput-boolean v0, Lcom/stryker/terminal/Globals;->ImmersiveMode:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->HideSystemMousePointer:Z

    sput-boolean v0, Lcom/stryker/terminal/Globals;->DownloadToSdcard:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->PhoneHasArrowKeys:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->UseAccelerometerAsArrowKeys:Z

    sput-boolean v0, Lcom/stryker/terminal/Globals;->UseTouchscreenKeyboard:Z

    sput v0, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardSize:I

    sput v3, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardDrawSize:I

    sput v1, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    sput v3, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTransparency:I

    sput-boolean v1, Lcom/stryker/terminal/Globals;->FloatingScreenJoystick:Z

    sput v3, Lcom/stryker/terminal/Globals;->AccelerometerSensitivity:I

    sput v3, Lcom/stryker/terminal/Globals;->AccelerometerCenterPos:I

    sput v1, Lcom/stryker/terminal/Globals;->AudioBufferConfig:I

    const/4 v4, 0x0

    sput-object v4, Lcom/stryker/terminal/Globals;->OptionalDataDownload:[Z

    sget-boolean v4, Lcom/stryker/terminal/Globals;->ForceRelativeMouseMode:Z

    if-eqz v4, :cond_0

    const/4 v6, 0x7

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    sput v6, Lcom/stryker/terminal/Globals;->LeftClickMethod:I

    const/16 v6, 0x17

    sput v6, Lcom/stryker/terminal/Globals;->LeftClickKey:I

    sput v2, Lcom/stryker/terminal/Globals;->LeftClickTimeout:I

    const/4 v6, 0x4

    sput v6, Lcom/stryker/terminal/Globals;->RightClickTimeout:I

    sget-boolean v7, Lcom/stryker/terminal/Globals;->AppNeedsTwoButtonMouse:Z

    sput v7, Lcom/stryker/terminal/Globals;->RightClickMethod:I

    const/16 v7, 0x52

    sput v7, Lcom/stryker/terminal/Globals;->RightClickKey:I

    sput-boolean v1, Lcom/stryker/terminal/Globals;->MoveMouseWithJoystick:Z

    sput v0, Lcom/stryker/terminal/Globals;->MoveMouseWithJoystickSpeed:I

    sput v1, Lcom/stryker/terminal/Globals;->MoveMouseWithJoystickAccel:I

    sput-boolean v0, Lcom/stryker/terminal/Globals;->MoveMouseWithGyroscope:Z

    sput v3, Lcom/stryker/terminal/Globals;->MoveMouseWithGyroscopeSpeed:I

    sput-boolean v1, Lcom/stryker/terminal/Globals;->ClickMouseWithDpad:Z

    sput-boolean v4, Lcom/stryker/terminal/Globals;->RelativeMouseMovement:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->ForceHardwareMouse:Z

    sput v3, Lcom/stryker/terminal/Globals;->RelativeMouseMovementSpeed:I

    sput v1, Lcom/stryker/terminal/Globals;->RelativeMouseMovementAccel:I

    sput v1, Lcom/stryker/terminal/Globals;->ShowScreenUnderFinger:I

    sput v1, Lcom/stryker/terminal/Globals;->ClickScreenPressure:I

    sput v1, Lcom/stryker/terminal/Globals;->ClickScreenTouchspotSize:I

    sput-boolean v0, Lcom/stryker/terminal/Globals;->FingerHover:Z

    sput-boolean v0, Lcom/stryker/terminal/Globals;->HoverJitterFilter:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->GenerateSubframeTouchEvents:Z

    sget-boolean v4, Lcom/stryker/terminal/Globals;->KeepAspectRatioDefaultSetting:Z

    sput-boolean v4, Lcom/stryker/terminal/Globals;->KeepAspectRatio:Z

    sput-boolean v0, Lcom/stryker/terminal/Globals;->TvBorders:Z

    const/16 v4, 0xff

    new-array v4, v4, [I

    sput-object v4, Lcom/stryker/terminal/Globals;->RemapHwKeycode:[I

    const/4 v4, 0x6

    new-array v7, v4, [I

    sput-object v7, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    sget-boolean v7, Lcom/stryker/terminal/Globals;->AppUsesThirdJoystick:Z

    const/4 v10, 0x5

    const/16 v11, 0xb1

    const/16 v14, 0x138

    const/16 v15, 0x1e8

    const/16 v9, 0x30

    const/16 v8, 0x12f

    const/16 v12, 0x1e0

    const/16 v5, 0x130

    const/16 v4, 0x188

    const/16 v13, 0x190

    if-eqz v7, :cond_1

    const/16 v7, 0xa

    new-array v7, v7, [[I

    filled-new-array {v1, v8, v11, v12}, [I

    move-result-object v11

    aput-object v11, v7, v1

    filled-new-array {v1, v1, v9, v9}, [I

    move-result-object v9

    aput-object v9, v7, v0

    filled-new-array {v13, v4, v15, v12}, [I

    move-result-object v9

    aput-object v9, v7, v3

    filled-new-array {v14, v4, v13, v12}, [I

    move-result-object v3

    aput-object v3, v7, v2

    filled-new-array {v13, v5, v15, v4}, [I

    move-result-object v2

    aput-object v2, v7, v6

    filled-new-array {v14, v5, v13, v4}, [I

    move-result-object v2

    aput-object v2, v7, v10

    const/16 v2, 0xd8

    filled-new-array {v13, v2, v15, v5}, [I

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v7, v4

    filled-new-array {v14, v2, v13, v5}, [I

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v7, v3

    const/16 v2, 0x26f

    const/16 v3, 0x320

    filled-new-array {v2, v8, v3, v12}, [I

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v7, v5

    const/16 v4, 0x7e

    filled-new-array {v2, v4, v3, v8}, [I

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v7, v3

    goto/16 :goto_1

    :cond_1
    sget-boolean v7, Lcom/stryker/terminal/Globals;->AppUsesSecondJoystick:Z

    if-eqz v7, :cond_2

    const/16 v7, 0x9

    new-array v7, v7, [[I

    filled-new-array {v1, v8, v11, v12}, [I

    move-result-object v11

    aput-object v11, v7, v1

    filled-new-array {v1, v1, v9, v9}, [I

    move-result-object v9

    aput-object v9, v7, v0

    filled-new-array {v13, v4, v15, v12}, [I

    move-result-object v9

    aput-object v9, v7, v3

    filled-new-array {v14, v4, v13, v12}, [I

    move-result-object v3

    aput-object v3, v7, v2

    filled-new-array {v13, v5, v15, v4}, [I

    move-result-object v2

    aput-object v2, v7, v6

    filled-new-array {v14, v5, v13, v4}, [I

    move-result-object v2

    aput-object v2, v7, v10

    const/16 v2, 0xd8

    filled-new-array {v13, v2, v15, v5}, [I

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v7, v4

    filled-new-array {v14, v2, v13, v5}, [I

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v7, v3

    const/16 v2, 0x26f

    const/16 v13, 0x320

    filled-new-array {v2, v8, v13, v12}, [I

    move-result-object v2

    const/16 v14, 0x8

    aput-object v2, v7, v14

    goto :goto_1

    :cond_2
    const/16 v13, 0x320

    const/16 v14, 0x8

    new-array v7, v14, [[I

    filled-new-array {v1, v8, v11, v12}, [I

    move-result-object v8

    aput-object v8, v7, v1

    filled-new-array {v1, v1, v9, v9}, [I

    move-result-object v8

    aput-object v8, v7, v0

    const/16 v8, 0x2c8

    filled-new-array {v8, v4, v13, v12}, [I

    move-result-object v9

    aput-object v9, v7, v3

    const/16 v3, 0x270

    filled-new-array {v3, v4, v8, v12}, [I

    move-result-object v3

    aput-object v3, v7, v2

    filled-new-array {v8, v5, v13, v4}, [I

    move-result-object v2

    aput-object v2, v7, v6

    const/16 v2, 0x270

    filled-new-array {v2, v5, v8, v4}, [I

    move-result-object v2

    aput-object v2, v7, v10

    const/16 v2, 0xd8

    filled-new-array {v8, v2, v13, v5}, [I

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v7, v4

    const/16 v3, 0x270

    filled-new-array {v3, v2, v8, v5}, [I

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v7, v3

    :goto_1
    sput-object v7, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    array-length v2, v7

    new-array v2, v2, [Z

    sput-object v2, Lcom/stryker/terminal/Globals;->ScreenKbControlsShown:[Z

    new-array v2, v6, [I

    sput-object v2, Lcom/stryker/terminal/Globals;->RemapMultitouchGestureKeycode:[I

    new-array v2, v6, [Z

    sput-object v2, Lcom/stryker/terminal/Globals;->MultitouchGesturesUsed:[Z

    sput v0, Lcom/stryker/terminal/Globals;->MultitouchGestureSensitivity:I

    new-array v2, v6, [I

    sput-object v2, Lcom/stryker/terminal/Globals;->TouchscreenCalibration:[I

    const-string v2, "/data/data/io.neoterm/files/usr/share/xorg-neoterm"

    sput-object v2, Lcom/stryker/terminal/Globals;->DataDir:Ljava/lang/String;

    const-string v2, "/data/data/io.neoterm/files/usr/share/xorg-neoterm"

    sput-object v2, Lcom/stryker/terminal/Globals;->UnSecureDataDir:Ljava/lang/String;

    const-string v2, "/data/data/io.neoterm/files/home"

    sput-object v2, Lcom/stryker/terminal/Globals;->HomeDir:Ljava/lang/String;

    sput-boolean v0, Lcom/stryker/terminal/Globals;->VideoLinearFilter:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->MultiThreadedVideo:Z

    sput-boolean v1, Lcom/stryker/terminal/Globals;->OuyaEmulation:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
