.class public final synthetic Ld3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/g;->a:Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Ld3/g;->a:Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    .line 1
    iget-object p1, p1, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->i:Ld3/e;

    if-eqz p1, :cond_2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    if-lez p4, :cond_2

    if-gtz p5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p2, p1, Ld3/e;->h:I

    if-ne p4, p2, :cond_1

    iget p2, p1, Ld3/e;->i:I

    if-ne p5, p2, :cond_1

    goto :goto_0

    :cond_1
    iput p4, p1, Ld3/e;->h:I

    iput p5, p1, Ld3/e;->i:I

    invoke-virtual {p1}, Ld3/e;->a()V

    :cond_2
    :goto_0
    return-void
.end method
