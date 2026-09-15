.class public final synthetic Lh3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le0/j;


# direct methods
.method public synthetic constructor <init>(Le0/j;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lh3/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lh3/b;->b:Le0/j;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lh3/b;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lh3/b;->b:Le0/j;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Ld3/d;

    .line 11
    .line 12
    sget-object v4, Lh3/a;->b:Lh3/a;

    .line 13
    .line 14
    const-string v5, "Cancelled by user"

    .line 15
    .line 16
    invoke-direct {v0, v4, v5, v3, v2}, Ld3/d;-><init>(Lh3/a;Ljava/lang/String;ILe3/a;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Le0/j;->b(Ld3/d;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    new-instance v0, Ld3/d;

    .line 24
    .line 25
    sget-object v4, Lh3/a;->a:Lh3/a;

    .line 26
    .line 27
    const-string v5, "Done"

    .line 28
    .line 29
    invoke-direct {v0, v4, v5, v3, v2}, Ld3/d;-><init>(Lh3/a;Ljava/lang/String;ILe3/a;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Le0/j;->b(Ld3/d;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
