.class public final synthetic Lp2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lp2/n;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lp2/n;->d:Ljava/lang/Object;

    .line 7
    .line 8
    iput-boolean p2, p0, Lp2/n;->b:Z

    .line 9
    .line 10
    iput p3, p0, Lp2/n;->c:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lp2/n;->a:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lp2/n;->b:Z

    .line 4
    .line 5
    iget v2, p0, Lp2/n;->c:I

    .line 6
    .line 7
    iget-object v3, p0, Lp2/n;->d:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Lp2/r;

    .line 13
    .line 14
    iget-object v0, v3, Lp2/r;->k:Lp2/j;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Lp2/j;->c(IZ)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :pswitch_0
    check-cast v3, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;

    .line 23
    .line 24
    sget v0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->m:I

    .line 25
    .line 26
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iget-object v0, v3, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->k:Landroid/widget/TextView;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    if-eqz v1, :cond_2

    .line 38
    .line 39
    const v0, 0x7f1300ba

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {v3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const v0, 0x7f1300b9

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :goto_1
    iget-object v1, v3, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->k:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const v2, 0x7f1300bb

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_2
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
