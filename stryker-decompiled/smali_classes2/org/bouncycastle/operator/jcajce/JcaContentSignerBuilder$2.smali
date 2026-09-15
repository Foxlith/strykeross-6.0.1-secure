.class Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/ContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->buildComposite(Lorg/bouncycastle/jcajce/CompositePrivateKey;)Lorg/bouncycastle/operator/ContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field stream:Ljava/io/OutputStream;

.field final synthetic this$0:Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

.field final synthetic val$sigStream:Ljava/io/OutputStream;

.field final synthetic val$sigs:[Ljava/security/Signature;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;Ljava/io/OutputStream;[Ljava/security/Signature;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->val$sigStream:Ljava/io/OutputStream;

    iput-object p3, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->val$sigs:[Ljava/security/Signature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->stream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    invoke-static {v0}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->access$000(Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->stream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->val$sigs:[Ljava/security/Signature;

    .line 8
    .line 9
    array-length v2, v2

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Lorg/bouncycastle/asn1/DERBitString;

    .line 13
    .line 14
    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->val$sigs:[Ljava/security/Signature;

    .line 15
    .line 16
    aget-object v3, v3, v1

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :catch_1
    move-exception v0

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "DER"

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 43
    .line 44
    .line 45
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-object v0

    .line 47
    :goto_1
    new-instance v1, Lorg/bouncycastle/operator/RuntimeOperatorException;

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v3, "exception obtaining signature: "

    .line 52
    .line 53
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw v1

    .line 71
    :goto_2
    new-instance v1, Lorg/bouncycastle/operator/RuntimeOperatorException;

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v3, "exception encoding signature: "

    .line 76
    .line 77
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    throw v1
.end method
