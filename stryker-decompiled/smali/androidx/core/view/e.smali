.class public final Landroidx/core/view/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/f;


# instance fields
.field public final a:Landroid/view/ContentInfo$Builder;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Landroidx/core/view/d;->d(Landroid/content/ClipData;I)Landroid/view/ContentInfo$Builder;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/e;->a:Landroid/view/ContentInfo$Builder;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/e;->a:Landroid/view/ContentInfo$Builder;

    invoke-static {v0, p1}, Landroidx/core/view/d;->n(Landroid/view/ContentInfo$Builder;Landroid/os/Bundle;)V

    return-void
.end method

.method public final build()Landroidx/core/view/i;
    .locals 3

    new-instance v0, Landroidx/core/view/i;

    new-instance v1, Lf/q0;

    iget-object v2, p0, Landroidx/core/view/e;->a:Landroid/view/ContentInfo$Builder;

    invoke-static {v2}, Landroidx/core/view/d;->e(Landroid/view/ContentInfo$Builder;)Landroid/view/ContentInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lf/q0;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, Landroidx/core/view/i;-><init>(Landroidx/core/view/h;)V

    return-object v0
.end method

.method public final c(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/e;->a:Landroid/view/ContentInfo$Builder;

    invoke-static {v0, p1}, Landroidx/core/view/d;->m(Landroid/view/ContentInfo$Builder;Landroid/net/Uri;)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/e;->a:Landroid/view/ContentInfo$Builder;

    invoke-static {v0, p1}, Landroidx/core/view/d;->l(Landroid/view/ContentInfo$Builder;I)V

    return-void
.end method
