.class Lcom/getkeepsafe/taptargetview/TapTargetView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

.field final synthetic val$boundingParent:Landroid/view/ViewGroup;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$layoutNoLimits:Z

.field final synthetic val$target:Lcom/getkeepsafe/taptargetview/TapTarget;

.field final synthetic val$translucentNavigationBar:Z

.field final synthetic val$translucentStatusBar:Z


# direct methods
.method public constructor <init>(Lcom/getkeepsafe/taptargetview/TapTargetView;Lcom/getkeepsafe/taptargetview/TapTarget;Landroid/view/ViewGroup;Landroid/content/Context;ZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$9;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$9;->val$target:Lcom/getkeepsafe/taptargetview/TapTarget;

    iput-object p3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$9;->val$boundingParent:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$9;->val$context:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$9;->val$translucentStatusBar:Z

    iput-boolean p6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$9;->val$translucentNavigationBar:Z

    iput-boolean p7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$9;->val$layoutNoLimits:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$9;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-static {v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->access$200(Lcom/getkeepsafe/taptargetview/TapTargetView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$9;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-virtual {v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->updateTextLayouts()V

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$9;->val$target:Lcom/getkeepsafe/taptargetview/TapTarget;

    new-instance v1, Lcom/getkeepsafe/taptargetview/TapTargetView$9$1;

    invoke-direct {v1, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$9$1;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView$9;)V

    invoke-virtual {v0, v1}, Lcom/getkeepsafe/taptargetview/TapTarget;->onReady(Ljava/lang/Runnable;)V

    return-void
.end method
