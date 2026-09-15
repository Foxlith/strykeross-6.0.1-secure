.class public final Lcom/stryker/terminal/component/config/OldConfigureLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/component/config/IConfigureLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion;


# instance fields
.field private final configFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/component/config/OldConfigureLoader;->Companion:Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "configFile"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/component/config/OldConfigureLoader;->configFile:Ljava/io/File;

    return-void
.end method

.method private final returnConfigure(Lcom/stryker/terminal/component/config/NeoConfigureFile;)Lcom/stryker/terminal/component/config/NeoConfigureFile;
    .locals 1

    invoke-virtual {p1}, Lcom/stryker/terminal/component/config/NeoConfigureFile;->parseConfigure()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public loadConfigure()Lcom/stryker/terminal/component/config/NeoConfigureFile;
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/component/config/OldConfigureLoader;->configFile:Ljava/io/File;

    invoke-static {v0}, Lg5/i;->j0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eks"

    invoke-static {v0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;

    iget-object v1, p0, Lcom/stryker/terminal/component/config/OldConfigureLoader;->configFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;-><init>(Ljava/io/File;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/stryker/terminal/component/config/OldConfigureLoader;->returnConfigure(Lcom/stryker/terminal/component/config/NeoConfigureFile;)Lcom/stryker/terminal/component/config/NeoConfigureFile;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v1, "color"

    invoke-static {v0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldColorSchemeConfigureFile;

    iget-object v1, p0, Lcom/stryker/terminal/component/config/OldConfigureLoader;->configFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldColorSchemeConfigureFile;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
