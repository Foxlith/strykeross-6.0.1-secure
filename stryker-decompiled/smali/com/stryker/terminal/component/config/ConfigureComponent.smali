.class public final Lcom/stryker/terminal/component/config/ConfigureComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/component/NeoComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/component/config/ConfigureComponent$Companion;
    }
.end annotation


# static fields
.field private static final CONFIG_LOADER_VERSION:I = 0x14

.field public static final Companion:Lcom/stryker/terminal/component/config/ConfigureComponent$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/component/config/ConfigureComponent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/component/config/ConfigureComponent$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/component/config/ConfigureComponent;->Companion:Lcom/stryker/terminal/component/config/ConfigureComponent$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLoaderVersion()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public final newLoader(Ljava/io/File;)Lcom/stryker/terminal/component/config/IConfigureLoader;
    .locals 2

    const-string v0, "configFile"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lg5/i;->j0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nl"

    invoke-static {v0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/stryker/terminal/component/config/NeoLangConfigureLoader;

    invoke-direct {v0, p1}, Lcom/stryker/terminal/component/config/NeoLangConfigureLoader;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stryker/terminal/component/config/OldConfigureLoader;

    invoke-direct {v0, p1}, Lcom/stryker/terminal/component/config/OldConfigureLoader;-><init>(Ljava/io/File;)V

    :goto_0
    return-object v0
.end method

.method public onServiceDestroy()V
    .locals 0

    return-void
.end method

.method public onServiceInit()V
    .locals 0

    return-void
.end method

.method public onServiceObtained()V
    .locals 0

    return-void
.end method
