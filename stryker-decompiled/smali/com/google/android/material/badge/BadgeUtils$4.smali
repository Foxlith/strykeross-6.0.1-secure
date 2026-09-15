.class Lcom/google/android/material/badge/BadgeUtils$4;
.super Landroidx/core/view/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/badge/BadgeUtils;->detachBadgeContentDescription(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/c;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lh0/h;->i(Ljava/lang/CharSequence;)V

    return-void
.end method
