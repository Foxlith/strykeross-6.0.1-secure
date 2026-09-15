.class public final Lcom/google/crypto/tink/subtle/EngineFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_WRAPPER::",
        "Lcom/google/crypto/tink/subtle/EngineWrapper<",
        "TT_ENGINE;>;T_ENGINE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CIPHER:Lcom/google/crypto/tink/subtle/EngineFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/subtle/EngineFactory<",
            "Lcom/google/crypto/tink/subtle/EngineWrapper$TCipher;",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_LET_FALLBACK:Z = true

.field public static final KEY_AGREEMENT:Lcom/google/crypto/tink/subtle/EngineFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/subtle/EngineFactory<",
            "Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyAgreement;",
            "Ljavax/crypto/KeyAgreement;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_FACTORY:Lcom/google/crypto/tink/subtle/EngineFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/subtle/EngineFactory<",
            "Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyFactory;",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_PAIR_GENERATOR:Lcom/google/crypto/tink/subtle/EngineFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/subtle/EngineFactory<",
            "Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyPairGenerator;",
            "Ljava/security/KeyPairGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAC:Lcom/google/crypto/tink/subtle/EngineFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/subtle/EngineFactory<",
            "Lcom/google/crypto/tink/subtle/EngineWrapper$TMac;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/subtle/EngineFactory<",
            "Lcom/google/crypto/tink/subtle/EngineWrapper$TMessageDigest;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIGNATURE:Lcom/google/crypto/tink/subtle/EngineFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/subtle/EngineFactory<",
            "Lcom/google/crypto/tink/subtle/EngineWrapper$TSignature;",
            "Ljava/security/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultPolicy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private instanceBuilder:Lcom/google/crypto/tink/subtle/EngineWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_WRAPPER;"
        }
    .end annotation
.end field

.field private letFallback:Z

.field private policy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/crypto/tink/subtle/EngineFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->logger:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/crypto/tink/subtle/SubtleUtil;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GmsCore_OpenSSL"

    const-string v1, "AndroidOpenSSL"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/EngineFactory;->toProviderList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->defaultPolicy:Ljava/util/List;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v1, Lcom/google/crypto/tink/subtle/EngineWrapper$TCipher;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/EngineWrapper$TCipher;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;-><init>(Lcom/google/crypto/tink/subtle/EngineWrapper;)V

    sput-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->CIPHER:Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v0, Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v1, Lcom/google/crypto/tink/subtle/EngineWrapper$TMac;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/EngineWrapper$TMac;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;-><init>(Lcom/google/crypto/tink/subtle/EngineWrapper;)V

    sput-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MAC:Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v0, Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v1, Lcom/google/crypto/tink/subtle/EngineWrapper$TSignature;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/EngineWrapper$TSignature;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;-><init>(Lcom/google/crypto/tink/subtle/EngineWrapper;)V

    sput-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->SIGNATURE:Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v0, Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v1, Lcom/google/crypto/tink/subtle/EngineWrapper$TMessageDigest;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/EngineWrapper$TMessageDigest;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;-><init>(Lcom/google/crypto/tink/subtle/EngineWrapper;)V

    sput-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v0, Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v1, Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyAgreement;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyAgreement;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;-><init>(Lcom/google/crypto/tink/subtle/EngineWrapper;)V

    sput-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_AGREEMENT:Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v0, Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v1, Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyPairGenerator;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyPairGenerator;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;-><init>(Lcom/google/crypto/tink/subtle/EngineWrapper;)V

    sput-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_PAIR_GENERATOR:Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v0, Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v1, Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyFactory;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyFactory;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;-><init>(Lcom/google/crypto/tink/subtle/EngineWrapper;)V

    sput-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_FACTORY:Lcom/google/crypto/tink/subtle/EngineFactory;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/subtle/EngineWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/EngineFactory;->instanceBuilder:Lcom/google/crypto/tink/subtle/EngineWrapper;

    sget-object p1, Lcom/google/crypto/tink/subtle/EngineFactory;->defaultPolicy:Ljava/util/List;

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/EngineFactory;->policy:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/crypto/tink/subtle/EngineFactory;->letFallback:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/subtle/EngineWrapper;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;",
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/EngineFactory;->instanceBuilder:Lcom/google/crypto/tink/subtle/EngineWrapper;

    iput-object p2, p0, Lcom/google/crypto/tink/subtle/EngineFactory;->policy:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/crypto/tink/subtle/EngineFactory;->letFallback:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/subtle/EngineWrapper;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;",
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;Z)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/EngineFactory;->instanceBuilder:Lcom/google/crypto/tink/subtle/EngineWrapper;

    iput-object p2, p0, Lcom/google/crypto/tink/subtle/EngineFactory;->policy:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/crypto/tink/subtle/EngineFactory;->letFallback:Z

    return-void
.end method

.method public static final varargs getCustomCipherProvider(Z[Ljava/lang/String;)Lcom/google/crypto/tink/subtle/EngineFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/crypto/tink/subtle/EngineFactory<",
            "Lcom/google/crypto/tink/subtle/EngineWrapper$TCipher;",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v1, Lcom/google/crypto/tink/subtle/EngineWrapper$TCipher;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/EngineWrapper$TCipher;-><init>()V

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/EngineFactory;->toProviderList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/crypto/tink/subtle/EngineFactory;-><init>(Lcom/google/crypto/tink/subtle/EngineWrapper;Ljava/util/List;Z)V

    return-object v0
.end method

.method public static final varargs getCustomKeyAgreementProvider(Z[Ljava/lang/String;)Lcom/google/crypto/tink/subtle/EngineFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/crypto/tink/subtle/EngineFactory<",
            "Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyAgreement;",
            "Ljavax/crypto/KeyAgreement;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v1, Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyAgreement;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyAgreement;-><init>()V

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/EngineFactory;->toProviderList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/crypto/tink/subtle/EngineFactory;-><init>(Lcom/google/crypto/tink/subtle/EngineWrapper;Ljava/util/List;Z)V

    return-object v0
.end method

.method public static final varargs getCustomKeyFactoryProvider(Z[Ljava/lang/String;)Lcom/google/crypto/tink/subtle/EngineFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/crypto/tink/subtle/EngineFactory<",
            "Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyFactory;",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v1, Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyFactory;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyFactory;-><init>()V

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/EngineFactory;->toProviderList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/crypto/tink/subtle/EngineFactory;-><init>(Lcom/google/crypto/tink/subtle/EngineWrapper;Ljava/util/List;Z)V

    return-object v0
.end method

.method public static final varargs getCustomKeyPairGeneratorProvider(Z[Ljava/lang/String;)Lcom/google/crypto/tink/subtle/EngineFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/crypto/tink/subtle/EngineFactory<",
            "Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyPairGenerator;",
            "Ljava/security/KeyPairGenerator;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v1, Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyPairGenerator;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/EngineWrapper$TKeyPairGenerator;-><init>()V

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/EngineFactory;->toProviderList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/crypto/tink/subtle/EngineFactory;-><init>(Lcom/google/crypto/tink/subtle/EngineWrapper;Ljava/util/List;Z)V

    return-object v0
.end method

.method public static final varargs getCustomMacProvider(Z[Ljava/lang/String;)Lcom/google/crypto/tink/subtle/EngineFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/crypto/tink/subtle/EngineFactory<",
            "Lcom/google/crypto/tink/subtle/EngineWrapper$TMac;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v1, Lcom/google/crypto/tink/subtle/EngineWrapper$TMac;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/EngineWrapper$TMac;-><init>()V

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/EngineFactory;->toProviderList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/crypto/tink/subtle/EngineFactory;-><init>(Lcom/google/crypto/tink/subtle/EngineWrapper;Ljava/util/List;Z)V

    return-object v0
.end method

.method public static final varargs getCustomMessageDigestProvider(Z[Ljava/lang/String;)Lcom/google/crypto/tink/subtle/EngineFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/crypto/tink/subtle/EngineFactory<",
            "Lcom/google/crypto/tink/subtle/EngineWrapper$TMessageDigest;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v1, Lcom/google/crypto/tink/subtle/EngineWrapper$TMessageDigest;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/EngineWrapper$TMessageDigest;-><init>()V

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/EngineFactory;->toProviderList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/crypto/tink/subtle/EngineFactory;-><init>(Lcom/google/crypto/tink/subtle/EngineWrapper;Ljava/util/List;Z)V

    return-object v0
.end method

.method public static final varargs getCustomSignatureProvider(Z[Ljava/lang/String;)Lcom/google/crypto/tink/subtle/EngineFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/crypto/tink/subtle/EngineFactory<",
            "Lcom/google/crypto/tink/subtle/EngineWrapper$TSignature;",
            "Ljava/security/Signature;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/crypto/tink/subtle/EngineFactory;

    new-instance v1, Lcom/google/crypto/tink/subtle/EngineWrapper$TSignature;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/EngineWrapper$TSignature;-><init>()V

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/EngineFactory;->toProviderList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/crypto/tink/subtle/EngineFactory;-><init>(Lcom/google/crypto/tink/subtle/EngineWrapper;Ljava/util/List;Z)V

    return-object v0
.end method

.method public static varargs toProviderList([Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/google/crypto/tink/subtle/EngineFactory;->logger:Ljava/util/logging/Logger;

    const-string v5, "Provider %s not available"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT_ENGINE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/subtle/EngineFactory;->policy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    :try_start_0
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/EngineFactory;->instanceBuilder:Lcom/google/crypto/tink/subtle/EngineWrapper;

    invoke-interface {v4, p1, v3}, Lcom/google/crypto/tink/subtle/EngineWrapper;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/EngineFactory;->letFallback:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/crypto/tink/subtle/EngineFactory;->instanceBuilder:Lcom/google/crypto/tink/subtle/EngineWrapper;

    invoke-interface {v0, p1, v1}, Lcom/google/crypto/tink/subtle/EngineWrapper;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "No good Provider found."

    invoke-direct {p1, v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
