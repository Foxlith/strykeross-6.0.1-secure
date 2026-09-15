.class public Lorg/bouncycastle/oer/OEREncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/OERDefinition$Element;)[B
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/oer/OEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/oer/OEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/OERDefinition$Element;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
