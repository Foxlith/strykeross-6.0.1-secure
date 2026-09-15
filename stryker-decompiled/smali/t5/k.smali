.class public final Lt5/k;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/p;


# static fields
.field public static final b:Lt5/k;

.field public static final c:Lt5/k;

.field public static final d:Lt5/k;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lt5/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt5/k;-><init>(I)V

    sput-object v0, Lt5/k;->b:Lt5/k;

    new-instance v0, Lt5/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lt5/k;-><init>(I)V

    sput-object v0, Lt5/k;->c:Lt5/k;

    new-instance v0, Lt5/k;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lt5/k;-><init>(I)V

    sput-object v0, Lt5/k;->d:Lt5/k;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lt5/k;->a:I

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lt5/k;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lt5/l;

    .line 7
    .line 8
    check-cast p2, La5/h;

    .line 9
    .line 10
    return-object p1

    .line 11
    :pswitch_0
    invoke-static {p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    check-cast p2, La5/h;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :pswitch_1
    check-cast p2, La5/h;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
