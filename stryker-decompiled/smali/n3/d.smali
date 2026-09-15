.class public final synthetic Ln3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/ScrollView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ScrollView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ln3/d;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ln3/d;->b:Landroid/widget/ScrollView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Ln3/d;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ln3/d;->b:Landroid/widget/ScrollView;

    .line 4
    .line 5
    const/16 v2, 0x82

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
