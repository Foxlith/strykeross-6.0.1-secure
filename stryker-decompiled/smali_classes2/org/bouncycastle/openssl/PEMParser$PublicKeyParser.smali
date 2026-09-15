.class Lorg/bouncycastle/openssl/PEMParser$PublicKeyParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/openssl/PEMParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PublicKeyParser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openssl/PEMParser;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openssl/PEMParser;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openssl/PEMParser$PublicKeyParser;->this$0:Lorg/bouncycastle/openssl/PEMParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseObject(Lorg/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    return-object p1
.end method
