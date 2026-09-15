.class public final Landroidx/fragment/app/o;
.super Landroidx/fragment/app/g0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/g0;

.field public final synthetic b:Landroidx/fragment/app/DialogFragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/o;->b:Landroidx/fragment/app/DialogFragment;

    iput-object p2, p0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/g0;

    return-void
.end method


# virtual methods
.method public final b(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/g0;

    invoke-virtual {v0}, Landroidx/fragment/app/g0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/g0;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o;->b:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/DialogFragment;->onFindViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/g0;

    invoke-virtual {v0}, Landroidx/fragment/app/g0;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/o;->b:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->onHasView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
