.class Lcom/google/android/material/badge/BadgeUtils$2;
.super Landroidx/core/view/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/badge/BadgeUtils;->attachBadgeContentDescription(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;


# direct methods
.method public constructor <init>(Landroid/view/View$AccessibilityDelegate;Lcom/google/android/material/badge/BadgeDrawable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/material/badge/BadgeUtils$2;->val$badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-direct {p0, p1}, Landroidx/core/view/c;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    iget-object p1, p0, Lcom/google/android/material/badge/BadgeUtils$2;->val$badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/badge/BadgeDrawable;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Lh0/h;->i(Ljava/lang/CharSequence;)V

    return-void
.end method
