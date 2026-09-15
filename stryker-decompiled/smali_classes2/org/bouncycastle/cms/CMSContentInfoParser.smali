.class public Lorg/bouncycastle/cms/CMSContentInfoParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

.field protected _data:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSContentInfoParser;->_data:Ljava/io/InputStream;

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSContentInfoParser;->_contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "No content found."

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "Unexpected object reading content."

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :goto_1
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "IOException reading content."

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSContentInfoParser;->_data:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method
