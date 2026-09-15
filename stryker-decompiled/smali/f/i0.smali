.class public final synthetic Lf/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf/j0;


# direct methods
.method public synthetic constructor <init>(Lf/j0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lf/i0;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lf/i0;->b:Lf/j0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget v0, p0, Lf/i0;->a:I

    iget-object v1, p0, Lf/i0;->b:Lf/j0;

    invoke-virtual {v1, p1}, Lf/j0;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
