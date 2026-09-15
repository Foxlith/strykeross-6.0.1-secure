.class public final Lcom/stryker/terminal/component/config/NeoTermPath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APT_BIN_PATH:Ljava/lang/String; = "/data/data/com.zalexdev.stryker/files/usr/bin/apt"

.field public static final BIN_PATH:Ljava/lang/String; = "/data/data/com.zalexdev.stryker/files/usr/bin"

.field public static final COLORS_PATH:Ljava/lang/String; = "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/color"

.field public static final CUSTOM_PATH:Ljava/lang/String; = "/data/data/com.zalexdev.stryker/files/usr/home/.terminal"

.field private static final DEFAULT_MAIN_PACKAGE_SOURCE:Ljava/lang/String;

.field public static final EKS_DEFAULT_FILE:Ljava/lang/String; = "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/eks/default.nl"

.field public static final EKS_PATH:Ljava/lang/String; = "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/eks"

.field public static final FONT_PATH:Ljava/lang/String; = "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/font"

.field public static final HOME_PATH:Ljava/lang/String; = "/"

.field public static final INSTANCE:Lcom/stryker/terminal/component/config/NeoTermPath;

.field public static final LIB_PATH:Ljava/lang/String; = "/data/data/com.zalexdev.stryker/files/usr/lib"

.field public static final NEOTERM_LOGIN_SHELL_PATH:Ljava/lang/String; = "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/shell"

.field public static final PACKAGE_LIST_DIR:Ljava/lang/String; = "/data/data/com.zalexdev.stryker/files/usr/var/lib/apt/lists"

.field public static final PROFILE_PATH:Ljava/lang/String; = "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/profile"

.field public static final ROOT_PATH:Ljava/lang/String; = "/data/data/com.zalexdev.stryker/files"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation
.end field

.field private static final SOURCE:Ljava/lang/String; = "https://example.com/terminal/"

.field public static final SOURCE_FILE:Ljava/lang/String; = "/data/data/com.zalexdev.stryker/files/usr/etc/apt/sources.list"

.field public static final USER_SCRIPT_PATH:Ljava/lang/String; = "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/script"

.field public static final USR_PATH:Ljava/lang/String; = "/data/data/com.zalexdev.stryker/files/usr"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stryker/terminal/component/config/NeoTermPath;

    invoke-direct {v0}, Lcom/stryker/terminal/component/config/NeoTermPath;-><init>()V

    sput-object v0, Lcom/stryker/terminal/component/config/NeoTermPath;->INSTANCE:Lcom/stryker/terminal/component/config/NeoTermPath;

    const-string v0, "https://example.com/terminal/"

    sput-object v0, Lcom/stryker/terminal/component/config/NeoTermPath;->DEFAULT_MAIN_PACKAGE_SOURCE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEFAULT_MAIN_PACKAGE_SOURCE()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/stryker/terminal/component/config/NeoTermPath;->DEFAULT_MAIN_PACKAGE_SOURCE:Ljava/lang/String;

    return-object v0
.end method
