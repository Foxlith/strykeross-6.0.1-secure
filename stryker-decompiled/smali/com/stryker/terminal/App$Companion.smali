.class public final Lcom/stryker/terminal/App$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/App;
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
    invoke-direct {p0}, Lcom/stryker/terminal/App$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/stryker/terminal/App;
    .locals 1

    invoke-static {}, Lcom/stryker/terminal/App;->access$getApp$cp()Lcom/stryker/terminal/App;

    move-result-object v0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    return-object v0
.end method
