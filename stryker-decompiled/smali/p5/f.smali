.class public final Lp5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp5/g;


# instance fields
.field public final synthetic a:I

.field public final b:Lj5/l;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/m0;Lj5/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lp5/f;->a:I

    iput-object p1, p0, Lp5/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Lp5/f;->b:Lj5/l;

    return-void
.end method

.method public constructor <init>(Lp5/g;Lj5/l;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lp5/f;->a:I

    const-string v0, "sequence"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lp5/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Lp5/f;->b:Lj5/l;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget v0, p0, Lp5/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lp5/m;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lp5/m;-><init>(Lp5/f;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_0
    new-instance v0, Lp5/e;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lp5/e;-><init>(Lp5/f;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
