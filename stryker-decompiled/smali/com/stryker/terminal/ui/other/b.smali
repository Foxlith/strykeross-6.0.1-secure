.class public final synthetic Lcom/stryker/terminal/ui/other/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/stryker/terminal/ui/other/BonusActivity;

.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/stryker/terminal/ui/other/BonusActivity;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/b;->a:Lcom/stryker/terminal/ui/other/BonusActivity;

    iput-object p2, p0, Lcom/stryker/terminal/ui/other/b;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/ui/other/b;->a:Lcom/stryker/terminal/ui/other/BonusActivity;

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/b;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/stryker/terminal/ui/other/BonusActivity;->g(Lcom/stryker/terminal/ui/other/BonusActivity;Landroid/widget/ImageView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
