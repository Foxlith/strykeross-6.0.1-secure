.class public final synthetic Lcom/google/android/material/color/utilities/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(ILjava/util/function/Function;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/material/color/utilities/a;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/material/color/utilities/a;->b:Ljava/util/function/Function;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/a;->a:I

    iget-object v1, p0, Lcom/google/android/material/color/utilities/a;->b:Ljava/util/function/Function;

    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->a(Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->q(Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
