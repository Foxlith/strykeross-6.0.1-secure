.class Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/util/KeyManagerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientKeyStore"
.end annotation


# instance fields
.field private final certChain:[Ljava/security/cert/X509Certificate;

.field private final key:Ljava/security/PrivateKey;

.field private final keyAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->keyAlias:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p3

    check-cast p3, Ljava/security/PrivateKey;

    iput-object p3, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->key:Ljava/security/PrivateKey;

    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p1

    array-length p2, p1

    new-array p2, p2, [Ljava/security/cert/X509Certificate;

    new-instance p3, Lorg/apache/commons/net/util/a;

    invoke-direct {p3, p1}, Lorg/apache/commons/net/util/a;-><init>([Ljava/security/cert/Certificate;)V

    invoke-static {p2, p3}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    iput-object p2, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->certChain:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public static synthetic a([Ljava/security/cert/Certificate;I)Ljava/security/cert/X509Certificate;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->lambda$new$0([Ljava/security/cert/Certificate;I)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0([Ljava/security/cert/Certificate;I)Ljava/security/cert/X509Certificate;
    .locals 0

    aget-object p0, p0, p1

    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0
.end method


# virtual methods
.method public final getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->keyAlias:Ljava/lang/String;

    return-object v0
.end method

.method public final getCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->certChain:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public final getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->key:Ljava/security/PrivateKey;

    return-object v0
.end method
