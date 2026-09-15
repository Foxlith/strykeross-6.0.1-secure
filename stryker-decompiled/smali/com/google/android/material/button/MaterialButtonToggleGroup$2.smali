.class Lcom/google/android/material/button/MaterialButtonToggleGroup$2;
.super Landroidx/core/view/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/button/MaterialButtonToggleGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$2;->this$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-direct {p0}, Landroidx/core/view/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$2;->this$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-static {v2, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->access$100(Lcom/google/android/material/button/MaterialButtonToggleGroup;Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/n;->c(IIIIZZ)Landroidx/fragment/app/n;

    move-result-object p1

    invoke-virtual {p2, p1}, Lh0/h;->h(Landroidx/fragment/app/n;)V

    return-void
.end method
