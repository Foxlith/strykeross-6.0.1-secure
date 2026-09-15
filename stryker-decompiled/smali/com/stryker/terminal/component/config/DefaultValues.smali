.class public final Lcom/stryker/terminal/component/config/DefaultValues;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/stryker/terminal/component/config/DefaultValues;

.field public static final defaultFont:Ljava/lang/String; = "UbuntuMono"

.field public static final enableAutoCompletion:Z = false

.field public static final enableAutoHideToolbar:Z = false

.field public static final enableBackButtonBeMappedToEscape:Z = false

.field public static final enableBell:Z = false

.field public static final enableExecveWrapper:Z = true

.field public static final enableExplicitExtraKeysWeight:Z = false

.field public static final enableExtraKeys:Z = true

.field public static final enableFullScreen:Z = false

.field public static final enableSpecialVolumeKeys:Z = false

.field public static final enableSwitchNextTab:Z = false

.field public static final enableVibrate:Z = true

.field public static final enableWordBasedIme:Z = false

.field public static final fontSize:I = 0x1e

.field public static final initialCommand:Ljava/lang/String; = ""

.field public static final loginShell:Ljava/lang/String; = "bash"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stryker/terminal/component/config/DefaultValues;

    invoke-direct {v0}, Lcom/stryker/terminal/component/config/DefaultValues;-><init>()V

    sput-object v0, Lcom/stryker/terminal/component/config/DefaultValues;->INSTANCE:Lcom/stryker/terminal/component/config/DefaultValues;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
