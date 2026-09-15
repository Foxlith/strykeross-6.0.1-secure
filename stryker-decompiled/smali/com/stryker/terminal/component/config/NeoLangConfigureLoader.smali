.class public final Lcom/stryker/terminal/component/config/NeoLangConfigureLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/component/config/IConfigureLoader;


# instance fields
.field private final configFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "configFile"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/component/config/NeoLangConfigureLoader;->configFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public loadConfigure()Lcom/stryker/terminal/component/config/NeoConfigureFile;
    .locals 2

    new-instance v0, Lcom/stryker/terminal/component/config/NeoConfigureFile;

    iget-object v1, p0, Lcom/stryker/terminal/component/config/NeoLangConfigureLoader;->configFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/stryker/terminal/component/config/NeoConfigureFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/stryker/terminal/component/config/NeoConfigureFile;->parseConfigure()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
