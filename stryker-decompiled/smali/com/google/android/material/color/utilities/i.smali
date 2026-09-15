.class public final synthetic Lcom/google/android/material/color/utilities/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:D


# direct methods
.method public synthetic constructor <init>(DI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/material/color/utilities/i;->a:I

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/google/android/material/color/utilities/i;->b:D

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/i;->a:I

    iget-wide v1, p0, Lcom/google/android/material/color/utilities/i;->b:D

    check-cast p1, Ljava/lang/Double;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, v2, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->p(DLjava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {v1, v2, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->f(DLjava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
