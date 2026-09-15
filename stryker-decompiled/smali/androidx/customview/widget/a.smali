.class public final Landroidx/customview/widget/a;
.super Lh0/l;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroidx/customview/widget/b;


# direct methods
.method public constructor <init>(Landroidx/customview/widget/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/customview/widget/a;->b:Landroidx/customview/widget/b;

    invoke-direct {p0}, Lh0/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lh0/h;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/customview/widget/a;->b:Landroidx/customview/widget/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/customview/widget/b;->obtainAccessibilityNodeInfo(I)Lh0/h;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lh0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Lh0/h;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lh0/h;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final b(I)Lh0/h;
    .locals 2

    .line 1
    const/4 v0, 0x2

    iget-object v1, p0, Landroidx/customview/widget/a;->b:Landroidx/customview/widget/b;

    if-ne p1, v0, :cond_0

    iget p1, v1, Landroidx/customview/widget/b;->mAccessibilityFocusedVirtualViewId:I

    goto :goto_0

    :cond_0
    iget p1, v1, Landroidx/customview/widget/b;->mKeyboardFocusedVirtualViewId:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/customview/widget/a;->a(I)Lh0/h;

    move-result-object p1

    return-object p1
.end method

.method public final c(IILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/customview/widget/a;->b:Landroidx/customview/widget/b;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/customview/widget/b;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
