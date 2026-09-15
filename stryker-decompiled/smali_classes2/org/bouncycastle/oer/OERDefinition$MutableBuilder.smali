.class public Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;
.super Lorg/bouncycastle/oer/OERDefinition$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutableBuilder"
.end annotation


# instance fields
.field private frozen:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->frozen:Z

    return-void
.end method


# virtual methods
.method public varargs addItemsAndFreeze([Lorg/bouncycastle/oer/OERDefinition$Builder;)V
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->frozen:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    aget-object v1, p1, v0

    iget-object v2, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->frozen:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "build cannot be modified and must be copied only"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
