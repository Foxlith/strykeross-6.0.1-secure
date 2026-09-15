.class public final Lcom/google/crypto/tink/hybrid/HybridConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ECIES_AEAD_HKDF_PRIVATE_KEY_TYPE_URL:Ljava/lang/String;

.field public static final ECIES_AEAD_HKDF_PUBLIC_KEY_TYPE_URL:Ljava/lang/String;

.field public static final LATEST:Lcom/google/crypto/tink/proto/RegistryConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TINK_1_0_0:Lcom/google/crypto/tink/proto/RegistryConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TINK_1_1_0:Lcom/google/crypto/tink/proto/RegistryConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPublicKeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPublicKeyManager;-><init>()V

    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPublicKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/HybridConfig;->ECIES_AEAD_HKDF_PUBLIC_KEY_TYPE_URL:Ljava/lang/String;

    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;-><init>()V

    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/HybridConfig;->ECIES_AEAD_HKDF_PRIVATE_KEY_TYPE_URL:Ljava/lang/String;

    invoke-static {}, Lcom/google/crypto/tink/proto/RegistryConfig;->getDefaultInstance()Lcom/google/crypto/tink/proto/RegistryConfig;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/HybridConfig;->TINK_1_0_0:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-static {}, Lcom/google/crypto/tink/proto/RegistryConfig;->getDefaultInstance()Lcom/google/crypto/tink/proto/RegistryConfig;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/HybridConfig;->TINK_1_1_0:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-static {}, Lcom/google/crypto/tink/proto/RegistryConfig;->getDefaultInstance()Lcom/google/crypto/tink/proto/RegistryConfig;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/HybridConfig;->LATEST:Lcom/google/crypto/tink/proto/RegistryConfig;

    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HybridConfig;->init()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/crypto/tink/hybrid/HybridConfig;->register()V

    return-void
.end method

.method public static register()V
    .locals 1

    invoke-static {}, Lcom/google/crypto/tink/aead/AeadConfig;->register()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->registerPair(Z)V

    invoke-static {}, Lcom/google/crypto/tink/hybrid/HybridDecryptWrapper;->register()V

    invoke-static {}, Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper;->register()V

    return-void
.end method
