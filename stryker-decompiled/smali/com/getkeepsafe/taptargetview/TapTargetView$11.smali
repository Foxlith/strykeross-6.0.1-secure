.class Lcom/getkeepsafe/taptargetview/TapTargetView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getkeepsafe/taptargetview/TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/getkeepsafe/taptargetview/TapTarget;Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;


# direct methods
.method public constructor <init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 0

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$11;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$11;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v0, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->listener:Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    iget v2, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->lastTouchX:F

    float-to-int v2, v2

    iget p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->lastTouchY:F

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$11;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v0, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->listener:Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;

    invoke-virtual {v0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;->onTargetLongClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
