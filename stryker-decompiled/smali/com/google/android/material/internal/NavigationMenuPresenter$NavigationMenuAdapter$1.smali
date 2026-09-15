.class Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;
.super Landroidx/core/view/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setAccessibilityDelegate(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

.field final synthetic val$isHeader:Z

.field final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;->this$1:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    iput p2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;->val$position:I

    iput-boolean p3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;->val$isHeader:Z

    invoke-direct {p0}, Landroidx/core/view/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;->this$1:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    iget v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;->val$position:I

    invoke-static {v0, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->access$100(Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;->val$isHeader:Z

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v7

    invoke-static/range {v2 .. v7}, Landroidx/fragment/app/n;->c(IIIIZZ)Landroidx/fragment/app/n;

    move-result-object p1

    invoke-virtual {p2, p1}, Lh0/h;->h(Landroidx/fragment/app/n;)V

    return-void
.end method
