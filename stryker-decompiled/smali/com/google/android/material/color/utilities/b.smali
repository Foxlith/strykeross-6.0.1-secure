.class public final synthetic Lcom/google/android/material/color/utilities/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/Function;

.field public final synthetic c:Ljava/util/function/Function;

.field public final synthetic d:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(ILjava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/material/color/utilities/b;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/material/color/utilities/b;->b:Ljava/util/function/Function;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/material/color/utilities/b;->c:Ljava/util/function/Function;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/material/color/utilities/b;->d:Ljava/util/function/Function;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/b;->a:I

    iget-object v1, p0, Lcom/google/android/material/color/utilities/b;->c:Ljava/util/function/Function;

    iget-object v2, p0, Lcom/google/android/material/color/utilities/b;->b:Ljava/util/function/Function;

    iget-object v3, p0, Lcom/google/android/material/color/utilities/b;->d:Ljava/util/function/Function;

    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1, v3, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->s(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {v2, v1, v3, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->j(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
