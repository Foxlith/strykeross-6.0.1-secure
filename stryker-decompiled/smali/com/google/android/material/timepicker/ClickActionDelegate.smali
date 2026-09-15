.class Lcom/google/android/material/timepicker/ClickActionDelegate;
.super Landroidx/core/view/c;
.source "SourceFile"


# instance fields
.field private final clickAction:Lh0/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Landroidx/core/view/c;-><init>()V

    new-instance v0, Lh0/g;

    const/16 v1, 0x10

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lh0/g;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClickActionDelegate;->clickAction:Lh0/g;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/ClickActionDelegate;->clickAction:Lh0/g;

    invoke-virtual {p2, p1}, Lh0/h;->b(Lh0/g;)V

    return-void
.end method
