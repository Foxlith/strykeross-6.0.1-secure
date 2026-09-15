.class public final Lo/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lo/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lo/g;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget v0, p0, Lo/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, [I

    .line 7
    .line 8
    check-cast p2, [I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    aget p1, p1, v0

    .line 12
    .line 13
    aget p2, p2, v0

    .line 14
    .line 15
    sub-int/2addr p1, p2

    .line 16
    return p1

    .line 17
    :pswitch_0
    check-cast p1, Lo/j;

    .line 18
    .line 19
    check-cast p2, Lo/j;

    .line 20
    .line 21
    iget p1, p1, Lo/j;->b:I

    .line 22
    .line 23
    iget p2, p2, Lo/j;->b:I

    .line 24
    .line 25
    sub-int/2addr p1, p2

    .line 26
    return p1

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
