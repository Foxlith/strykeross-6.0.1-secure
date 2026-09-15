.class public Lorg/bouncycastle/cms/CMSProcessableFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/CMSTypedData;
.implements Lorg/bouncycastle/cms/CMSReadable;


# static fields
.field private static final DEFAULT_BUF_SIZE:I = 0x8000


# instance fields
.field private final bufSize:I

.field private final file:Ljava/io/File;

.field private final type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    const v0, 0x8000

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/CMSProcessableFile;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1

    .line 2
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/cms/CMSProcessableFile;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/File;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->file:Ljava/io/File;

    iput p3, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->bufSize:I

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget v2, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->bufSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget v1, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->bufSize:I

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method
