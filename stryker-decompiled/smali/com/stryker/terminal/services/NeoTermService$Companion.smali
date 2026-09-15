.class public final Lcom/stryker/terminal/services/NeoTermService$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/services/NeoTermService;
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
    invoke-direct {p0}, Lcom/stryker/terminal/services/NeoTermService$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getACTION_ACQUIRE_LOCK()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/stryker/terminal/services/NeoTermService;->access$getACTION_ACQUIRE_LOCK$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getACTION_RELEASE_LOCK()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/stryker/terminal/services/NeoTermService;->access$getACTION_RELEASE_LOCK$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getACTION_SERVICE_STOP()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/stryker/terminal/services/NeoTermService;->access$getACTION_SERVICE_STOP$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDEFAULT_CHANNEL_ID()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/stryker/terminal/services/NeoTermService;->access$getDEFAULT_CHANNEL_ID$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
