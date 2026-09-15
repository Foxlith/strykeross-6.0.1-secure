.class public final Lcom/stryker/terminal/component/pm/Architecture$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/component/pm/Architecture;
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
    invoke-direct {p0}, Lcom/stryker/terminal/component/pm/Architecture$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Ljava/lang/String;)Lcom/stryker/terminal/component/pm/Architecture;
    .locals 1

    const-string v0, "arch"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aarch64"

    invoke-static {p1, v0}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stryker/terminal/component/pm/Architecture;->AARCH64:Lcom/stryker/terminal/component/pm/Architecture;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/stryker/terminal/component/pm/Architecture;->ALL:Lcom/stryker/terminal/component/pm/Architecture;

    :goto_0
    return-object p1
.end method
