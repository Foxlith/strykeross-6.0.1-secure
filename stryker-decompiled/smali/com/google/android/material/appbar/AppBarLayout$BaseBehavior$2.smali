.class Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;
.super Landroidx/core/view/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->this$0:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    invoke-direct {p0}, Landroidx/core/view/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;->this$0:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->access$000(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lh0/h;->k(Z)V

    const-class p1, Landroid/widget/ScrollView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lh0/h;->g(Ljava/lang/CharSequence;)V

    return-void
.end method
