.class public final synthetic Lo4/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll4/h;


# direct methods
.method public synthetic constructor <init>(Ll4/h;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lo4/m;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lo4/m;->b:Ll4/h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lo4/m;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lo4/m;->b:Ll4/h;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lo4/p;

    .line 9
    .line 10
    invoke-virtual {v1}, Lo4/p;->d()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast v1, Lo4/n;

    .line 15
    .line 16
    iget-object v0, v1, Ll4/h;->c:Ll4/l;

    .line 17
    .line 18
    const-string v1, "The network wait time was longer than expected."

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
