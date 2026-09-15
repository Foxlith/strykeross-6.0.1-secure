.class public Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;
.super Lorg/bouncycastle/mime/MimeWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;,
        Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;
    }
.end annotation


# instance fields
.field private final contentTransferEncoding:Ljava/lang/String;

.field private final envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

.field private final mimeOut:Ljava/io/OutputStream;

.field private final outEnc:Lorg/bouncycastle/operator/OutputEncryptor;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;Lorg/bouncycastle/operator/OutputEncryptor;Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/bouncycastle/mime/Headers;

    invoke-static {p1}, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->access$100(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/mime/MimeWriter;->mapToLines(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->contentTransferEncoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/mime/Headers;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/mime/MimeWriter;-><init>(Lorg/bouncycastle/mime/Headers;)V

    invoke-static {p1}, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->access$200(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;)Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    iget-object p1, p1, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->contentTransferEncoding:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->contentTransferEncoding:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->outEnc:Lorg/bouncycastle/operator/OutputEncryptor;

    iput-object p3, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->mimeOut:Ljava/io/OutputStream;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;Lorg/bouncycastle/operator/OutputEncryptor;Ljava/io/OutputStream;Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;-><init>(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;Lorg/bouncycastle/operator/OutputEncryptor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public getContentStream()Ljava/io/OutputStream;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/mime/MimeWriter;->headers:Lorg/bouncycastle/mime/Headers;

    iget-object v1, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->mimeOut:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/mime/Headers;->dumpHeaders(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->mimeOut:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->mimeOut:Ljava/io/OutputStream;

    const-string v1, "base64"

    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->contentTransferEncoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/mime/encoding/Base64OutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/mime/encoding/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    invoke-static {v0}, Lorg/bouncycastle/mime/smime/SMimeUtils;->createUnclosable(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->outEnc:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->open(Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;

    invoke-direct {v2, p0, v1, v0}, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;-><init>(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_1
    new-instance v1, Lorg/bouncycastle/mime/MimeIOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/mime/MimeIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
