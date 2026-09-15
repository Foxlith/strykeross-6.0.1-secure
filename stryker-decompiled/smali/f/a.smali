.class public abstract Lf/a;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput p1, p0, Lf/a;->a:I

    return-void
.end method

.method public constructor <init>(Lf/a;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Lf/a;->a:I

    iget p1, p1, Lf/a;->a:I

    iput p1, p0, Lf/a;->a:I

    return-void
.end method
