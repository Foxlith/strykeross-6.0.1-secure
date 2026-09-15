.class public final synthetic Lcom/google/android/material/color/utilities/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/color/utilities/DynamicScheme;


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/material/color/utilities/DynamicScheme;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/material/color/utilities/c;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/material/color/utilities/c;->b:Lcom/google/android/material/color/utilities/DynamicScheme;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/c;->a:I

    iget-object v1, p0, Lcom/google/android/material/color/utilities/c;->b:Lcom/google/android/material/color/utilities/DynamicScheme;

    check-cast p1, Lcom/google/android/material/color/utilities/DynamicColor;

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->m(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p1, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->h(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p1, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->e(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
