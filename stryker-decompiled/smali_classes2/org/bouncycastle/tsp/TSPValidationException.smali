.class public Lorg/bouncycastle/tsp/TSPValidationException;
.super Lorg/bouncycastle/tsp/TSPException;
.source "SourceFile"


# instance fields
.field private failureCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/tsp/TSPValidationException;->failureCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lorg/bouncycastle/tsp/TSPValidationException;->failureCode:I

    return-void
.end method


# virtual methods
.method public getFailureCode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/tsp/TSPValidationException;->failureCode:I

    return v0
.end method
