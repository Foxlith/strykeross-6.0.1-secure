.class public final Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1$onAttachedToWindow$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1$onAttachedToWindow$1;->this$0:Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outline"

    invoke-static {p2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1$onAttachedToWindow$1;->this$0:Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1$onAttachedToWindow$1;->this$0:Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1$onAttachedToWindow$1;->this$0:Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, p1, v0, v1}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void
.end method
