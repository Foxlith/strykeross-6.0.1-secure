.class public final synthetic Ln3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Ln3/e;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ln3/e;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Ln3/e;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget p1, p0, Ln3/e;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Ln3/e;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Ln3/e;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v1, [Ljava/lang/String;

    .line 11
    .line 12
    check-cast v0, Landroid/app/Dialog;

    .line 13
    .line 14
    sget-object p1, Lo4/u;->m:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    aget-object p1, v1, p1

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    if-ge p1, v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_0
    check-cast v1, Landroid/widget/TextView;

    .line 32
    .line 33
    check-cast v0, Landroid/text/TextWatcher;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
