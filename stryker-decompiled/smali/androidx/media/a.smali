.class public final Landroidx/media/a;
.super Landroidx/media/j;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lb/e;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lb/e;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/media/a;->d:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media/a;->e:Lb/e;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/media/j;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Landroidx/media/a;->d:I

    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Landroidx/media/a;->e:Lb/e;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v4, v3, v0}, Lb/e;->c(ILandroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    invoke-virtual {v4, v2, v0}, Lb/e;->c(ILandroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    iget v1, p0, Landroidx/media/j;->c:I

    .line 20
    .line 21
    and-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v4, v2, v0}, Lb/e;->c(ILandroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "media_item"

    .line 35
    .line 36
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v3, v1}, Lb/e;->c(ILandroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
