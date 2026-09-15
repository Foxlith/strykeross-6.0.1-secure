.class Lcom/stryker/terminal/SetLayerType$SetLayerTypeHoneycomb;
.super Lcom/stryker/terminal/SetLayerType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SetLayerType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetLayerTypeHoneycomb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/SetLayerType$SetLayerTypeHoneycomb$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/stryker/terminal/SetLayerType;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stryker/terminal/SetLayerType$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/stryker/terminal/SetLayerType$SetLayerTypeHoneycomb;-><init>()V

    return-void
.end method


# virtual methods
.method public setLayerType(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
