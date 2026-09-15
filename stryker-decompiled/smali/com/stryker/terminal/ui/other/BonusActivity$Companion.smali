.class public final Lcom/stryker/terminal/ui/other/BonusActivity$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/ui/other/BonusActivity;
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
    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/BonusActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFLAVORS$terminal_release()[I
    .locals 1

    invoke-static {}, Lcom/stryker/terminal/ui/other/BonusActivity;->access$getFLAVORS$cp()[I

    move-result-object v0

    return-object v0
.end method

.method public final newColorIndex$terminal_release()I
    .locals 5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/other/BonusActivity$Companion;->getFLAVORS$terminal_release()[I

    move-result-object v2

    array-length v2, v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const/4 v2, 0x2

    int-to-double v3, v2

    div-double/2addr v0, v3

    double-to-int v0, v0

    mul-int/2addr v0, v2

    return v0
.end method
