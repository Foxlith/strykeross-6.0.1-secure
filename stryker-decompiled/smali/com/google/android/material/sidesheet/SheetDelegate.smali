.class abstract Lcom/google/android/material/sidesheet/SheetDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract calculateInnerMargin(Landroid/view/ViewGroup$MarginLayoutParams;)I
.end method

.method public abstract calculateSlideOffset(I)F
.end method

.method public abstract calculateTargetStateOnViewReleased(Landroid/view/View;FF)I
.end method

.method public abstract getExpandedOffset()I
.end method

.method public abstract getHiddenOffset()I
.end method

.method public abstract getOuterEdge(Landroid/view/View;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)I"
        }
    .end annotation
.end method

.method public abstract getSheetEdge()I
.end method

.method public abstract isSettling(Landroid/view/View;IZ)Z
.end method

.method public abstract shouldHide(Landroid/view/View;F)Z
.end method

.method public abstract updateCoplanarSiblingLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V
.end method
