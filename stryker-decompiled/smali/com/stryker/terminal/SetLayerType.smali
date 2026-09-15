.class abstract Lcom/stryker/terminal/SetLayerType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/SetLayerType$SetLayerTypeHoneycomb;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/stryker/terminal/SetLayerType;
    .locals 1

    invoke-static {}, Lcom/stryker/terminal/SetLayerType$SetLayerTypeHoneycomb$Holder;->access$000()Lcom/stryker/terminal/SetLayerType$SetLayerTypeHoneycomb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract setLayerType(Landroid/view/View;)V
.end method
