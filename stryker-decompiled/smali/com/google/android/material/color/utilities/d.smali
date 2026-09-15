.class public final synthetic Lcom/google/android/material/color/utilities/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:Ljava/util/function/Function;

.field public final synthetic b:Lcom/google/android/material/color/utilities/DynamicScheme;

.field public final synthetic c:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicScheme;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/color/utilities/d;->a:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/google/android/material/color/utilities/d;->b:Lcom/google/android/material/color/utilities/DynamicScheme;

    iput-object p3, p0, Lcom/google/android/material/color/utilities/d;->c:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Double;

    check-cast p2, Ljava/lang/Double;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/d;->a:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/android/material/color/utilities/d;->b:Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v2, p0, Lcom/google/android/material/color/utilities/d;->c:Ljava/util/function/Function;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/android/material/color/utilities/DynamicColor;->g(Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicScheme;Ljava/util/function/Function;Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
