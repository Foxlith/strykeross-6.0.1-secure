.class public final Lcom/nambimobile/widgets/efab/Label$hideOnAnimationEnd$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nambimobile/widgets/efab/Label;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nambimobile/widgets/efab/Label;


# direct methods
.method public constructor <init>(Lcom/nambimobile/widgets/efab/Label;)V
    .locals 0

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/Label$hideOnAnimationEnd$1;->this$0:Lcom/nambimobile/widgets/efab/Label;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/nambimobile/widgets/efab/Label$hideOnAnimationEnd$1;->this$0:Lcom/nambimobile/widgets/efab/Label;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
