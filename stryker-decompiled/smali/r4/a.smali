.class public final Lr4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/x0;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/x0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lr4/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lr4/a;->b:Landroidx/fragment/app/x0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(I)I
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    iget v1, p0, Lr4/a;->a:I

    .line 3
    .line 4
    const/high16 v2, 0x42c80000    # 100.0f

    .line 5
    .line 6
    iget-object v3, p0, Lr4/a;->b:Landroidx/fragment/app/x0;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-array v0, v0, [F

    .line 15
    .line 16
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    aget p1, v0, p1

    .line 21
    .line 22
    mul-float/2addr p1, v2

    .line 23
    float-to-int p1, p1

    .line 24
    return p1

    .line 25
    :pswitch_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-array v0, v0, [F

    .line 29
    .line 30
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    aget p1, v0, p1

    .line 35
    .line 36
    mul-float/2addr p1, v2

    .line 37
    float-to-int p1, p1

    .line 38
    return p1

    .line 39
    :pswitch_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-array v0, v0, [F

    .line 43
    .line 44
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    aget p1, v0, p1

    .line 49
    .line 50
    float-to-int p1, p1

    .line 51
    return p1

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
