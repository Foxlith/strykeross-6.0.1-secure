.class Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/carousel/CarouselLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeylineRange"
.end annotation


# instance fields
.field final left:Lcom/google/android/material/carousel/KeylineState$Keyline;

.field final right:Lcom/google/android/material/carousel/KeylineState$Keyline;


# direct methods
.method public constructor <init>(Lcom/google/android/material/carousel/KeylineState$Keyline;Lcom/google/android/material/carousel/KeylineState$Keyline;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 5
    .line 6
    iget v1, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 7
    .line 8
    cmpg-float v0, v0, v1

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->left:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->right:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p1
.end method
