.class Lcom/getkeepsafe/taptargetview/ViewTapTarget;
.super Lcom/getkeepsafe/taptargetview/TapTarget;
.source "SourceFile"


# instance fields
.field final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/getkeepsafe/taptargetview/TapTarget;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/ViewTapTarget;->view:Landroid/view/View;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given null view to target"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onReady(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/ViewTapTarget;->view:Landroid/view/View;

    new-instance v1, Lcom/getkeepsafe/taptargetview/ViewTapTarget$1;

    invoke-direct {v1, p0, p1}, Lcom/getkeepsafe/taptargetview/ViewTapTarget$1;-><init>(Lcom/getkeepsafe/taptargetview/ViewTapTarget;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/getkeepsafe/taptargetview/ViewUtil;->onLaidOut(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
