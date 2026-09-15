.class public final Lcom/stryker/terminal/component/ConfigFileBasedComponent$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/component/ConfigFileBasedComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/stryker/terminal/component/ConfigFileBasedComponent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNEOLANG_FILTER()Ljava/io/FileFilter;
    .locals 1

    invoke-static {}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->access$getNEOLANG_FILTER$cp()Ljava/io/FileFilter;

    move-result-object v0

    return-object v0
.end method
