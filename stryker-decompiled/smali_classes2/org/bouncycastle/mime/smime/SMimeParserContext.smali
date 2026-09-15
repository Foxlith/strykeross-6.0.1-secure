.class public Lorg/bouncycastle/mime/smime/SMimeParserContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/mime/MimeParserContext;


# instance fields
.field private final defaultContentTransferEncoding:Ljava/lang/String;

.field private final digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/mime/smime/SMimeParserContext;->defaultContentTransferEncoding:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/mime/smime/SMimeParserContext;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    return-void
.end method


# virtual methods
.method public getDefaultContentTransferEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeParserContext;->defaultContentTransferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getDigestCalculatorProvider()Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeParserContext;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    return-object v0
.end method
