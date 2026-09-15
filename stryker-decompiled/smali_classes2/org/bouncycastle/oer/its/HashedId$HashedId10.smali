.class public Lorg/bouncycastle/oer/its/HashedId$HashedId10;
.super Lorg/bouncycastle/oer/its/HashedId;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/HashedId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashedId10"
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/HashedId;-><init>([B)V

    array-length p1, p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hash id not 10 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
