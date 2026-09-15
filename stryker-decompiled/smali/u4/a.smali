.class public final Lu4/a;
.super Lu4/c;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lu4/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lu4/a;->a:I

    iput-object p1, p0, Lu4/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lu4/e;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lu4/a;->a:I

    const-string v0, "primaryValue"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lu4/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lu4/e;
    .locals 1

    .line 1
    iget v0, p0, Lu4/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p1, Lu4/e;->b:Lu4/e;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    iget-object v0, p0, Lu4/a;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lu4/d;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lu4/d;->b(Ljava/lang/String;)Lu4/e;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
