.class public Lorg/bouncycastle/oer/its/SequenceOfPsidSsp$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/PsidSsp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/SequenceOfPsidSsp$Builder;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createSequenceOfPsidSsp()Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/SequenceOfPsidSsp$Builder;->items:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public varargs setItem([Lorg/bouncycastle/oer/its/PsidSsp;)Lorg/bouncycastle/oer/its/SequenceOfPsidSsp$Builder;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    aget-object v1, p1, v0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/SequenceOfPsidSsp$Builder;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setItems(Ljava/util/List;)Lorg/bouncycastle/oer/its/SequenceOfPsidSsp$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/PsidSsp;",
            ">;)",
            "Lorg/bouncycastle/oer/its/SequenceOfPsidSsp$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SequenceOfPsidSsp$Builder;->items:Ljava/util/List;

    return-object p0
.end method
