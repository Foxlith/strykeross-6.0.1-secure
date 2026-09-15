.class public final Lcom/stryker/terminal/utils/FullScreenHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/utils/FullScreenHelper;
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
    invoke-direct {p0}, Lcom/stryker/terminal/utils/FullScreenHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final injectActivity(Lf/q;ZZ)Lcom/stryker/terminal/utils/FullScreenHelper;
    .locals 2

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stryker/terminal/utils/FullScreenHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/stryker/terminal/utils/FullScreenHelper;-><init>(Lf/q;ZZLkotlin/jvm/internal/f;)V

    return-object v0
.end method
