.class public final Lr5/c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/l;


# static fields
.field public static final b:Lr5/c;

.field public static final c:Lr5/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr5/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr5/c;-><init>(I)V

    sput-object v0, Lr5/c;->b:Lr5/c;

    new-instance v0, Lr5/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lr5/c;-><init>(I)V

    sput-object v0, Lr5/c;->c:Lr5/c;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lr5/c;->a:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lr5/c;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, La5/h;

    .line 8
    .line 9
    instance-of v0, p1, Lr5/s;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move-object v1, p1

    .line 14
    check-cast v1, Lr5/s;

    .line 15
    .line 16
    :cond_0
    return-object v1

    .line 17
    :pswitch_0
    check-cast p1, La5/h;

    .line 18
    .line 19
    instance-of v0, p1, Lr5/e;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    move-object v1, p1

    .line 24
    check-cast v1, Lr5/e;

    .line 25
    .line 26
    :cond_1
    return-object v1

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
