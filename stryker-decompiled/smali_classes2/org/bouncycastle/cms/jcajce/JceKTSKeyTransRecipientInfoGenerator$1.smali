.class final Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator$1;
.super Ljava/security/cert/CertificateEncodingException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->getEncodedRecipID(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;)V
    .locals 0

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator$1;->val$e:Ljava/io/IOException;

    return-object v0
.end method
