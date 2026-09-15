.class public Ljcifs/ntlmssp/Type3Message;
.super Ljcifs/ntlmssp/NtlmMessage;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final DEFAULT_FLAGS:I

.field private static final DEFAULT_PASSWORD:Ljava/lang/String;

.field private static final DEFAULT_USER:Ljava/lang/String;

.field private static final DEFAULT_WORKSTATION:Ljava/lang/String;

.field private static final LM_COMPATIBILITY:I

.field static final MILLISECONDS_BETWEEN_1970_AND_1601:J = 0xa9730b66800L

.field private static final RANDOM:Ljava/security/SecureRandom;


# instance fields
.field private domain:Ljava/lang/String;

.field private lmResponse:[B

.field private masterKey:[B

.field private ntResponse:[B

.field private sessionKey:[B

.field private user:Ljava/lang/String;

.field private workstation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    const-string v0, "jcifs.smb.client.useUnicode"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/lit16 v0, v1, 0x200

    sput v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    const-string v0, "jcifs.smb.client.domain"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.username"

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_USER:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.password"

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_PASSWORD:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-object v1, Ljcifs/ntlmssp/Type3Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    const-string v0, "jcifs.smb.lmCompatibility"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/ntlmssp/Type3Message;->LM_COMPATIBILITY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    invoke-virtual {p0, p4}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type2Message;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    invoke-static {p1}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultPassword()Ljava/lang/String;

    move-result-object v2

    sget v3, Ljcifs/ntlmssp/Type3Message;->LM_COMPATIBILITY:I

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    new-array v3, v3, [B

    sget-object v4, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1, v0, v1, v2, v3}, Ljcifs/ntlmssp/Type3Message;->getLMv2Response(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    goto :goto_0

    :cond_1
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto :goto_0

    :cond_2
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    .line 4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    iput-object v5, v0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    invoke-static {p1}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I

    move-result v5

    or-int v5, p6, v5

    invoke-virtual {p0, v5}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    if-nez p5, :cond_0

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object/from16 v5, p5

    :goto_0
    invoke-virtual {p0, v5}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    sget v5, Ljcifs/ntlmssp/Type3Message;->LM_COMPATIBILITY:I

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/16 v9, 0x10

    if-eqz v5, :cond_4

    const/4 v10, 0x1

    if-eq v5, v10, :cond_4

    const/4 v10, 0x2

    if-eq v5, v10, :cond_3

    const/4 v10, 0x3

    if-eq v5, v10, :cond_1

    const/4 v10, 0x4

    if-eq v5, v10, :cond_1

    const/4 v10, 0x5

    if-eq v5, v10, :cond_1

    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto/16 :goto_1

    :cond_1
    invoke-static {p3, v4, p2}, Ljcifs/smb/NtlmPasswordAuthentication;->nTOWFv2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    new-array v10, v8, [B

    sget-object v11, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v11, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1, p3, v4, p2, v10}, Ljcifs/ntlmssp/Type3Message;->getLMv2Response(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    new-array v2, v8, [B

    invoke-virtual {v11, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1, v5, v2}, Ljcifs/ntlmssp/Type3Message;->getNTLMv2Response(Ljcifs/ntlmssp/Type2Message;[B[B)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v1

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_7

    new-instance v1, Ljcifs/util/HMACT64;

    invoke-direct {v1, v5}, Ljcifs/util/HMACT64;-><init>([B)V

    iget-object v2, v0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    invoke-virtual {v1, v2, v7, v9}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v2

    and-int/2addr v2, v6

    if-eqz v2, :cond_2

    new-array v2, v9, [B

    iput-object v2, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {v11, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v2, v9, [B

    new-instance v3, Ljcifs/util/RC4;

    invoke-direct {v3, v1}, Ljcifs/util/RC4;-><init>([B)V

    iget-object v1, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object p1, v3

    move-object p2, v1

    move p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v2

    move/from16 p6, v6

    invoke-virtual/range {p1 .. p6}, Ljcifs/util/RC4;->update([BII[BI)V

    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto/16 :goto_1

    :cond_2
    iput-object v1, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto/16 :goto_1

    :cond_3
    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v3

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_5

    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto/16 :goto_1

    :cond_5
    const/16 v3, 0x18

    new-array v4, v3, [B

    sget-object v5, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v4, v8, v3, v7}, Ljava/util/Arrays;->fill([BIIB)V

    invoke-static {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->nTOWFv1(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v3

    invoke-static {v2, v3, v4}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLM2Response([B[B[B)[B

    move-result-object v3

    invoke-virtual {p0, v4}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v3

    and-int/2addr v3, v9

    if-ne v3, v9, :cond_7

    new-array v3, v9, [B

    invoke-virtual {p1}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v1

    invoke-static {v1, v7, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v7, v3, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljcifs/util/MD4;

    invoke-direct {v1}, Ljcifs/util/MD4;-><init>()V

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljcifs/util/HMACT64;

    invoke-direct {v2, v1}, Ljcifs/util/HMACT64;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v2

    and-int/2addr v2, v6

    if-eqz v2, :cond_6

    new-array v2, v9, [B

    iput-object v2, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {v5, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v2, v9, [B

    new-instance v3, Ljcifs/util/RC4;

    invoke-direct {v3, v1}, Ljcifs/util/RC4;-><init>([B)V

    iget-object v1, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object p1, v3

    move-object p2, v1

    move p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v2

    move/from16 p6, v6

    invoke-virtual/range {p1 .. p6}, Ljcifs/util/RC4;->update([BII[BI)V

    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto :goto_1

    :cond_6
    iput-object v1, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    :cond_7
    :goto_1
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    invoke-direct {p0, p1}, Ljcifs/ntlmssp/Type3Message;->parse([B)V

    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultFlags()I
    .locals 1

    .line 1
    sget v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    return v0
.end method

.method public static getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I
    .locals 1

    .line 2
    if-nez p0, :cond_0

    sget p0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    return p0

    :cond_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/lit16 p0, v0, 0x200

    return p0
.end method

.method public static getDefaultPassword()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_PASSWORD:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultUser()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_USER:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultWorkstation()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    return-object v0
.end method

.method public static getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B
    .locals 0

    .line 2
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object p0

    invoke-static {p1, p0}, Ljcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLMv2Response(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object p0

    invoke-static {p1, p2, p3, p0, p4}, Ljcifs/smb/NtlmPasswordAuthentication;->getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNTLMv2Response(Ljcifs/ntlmssp/Type2Message;[B[B)[B
    .locals 10

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0xa9730b66800L

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    mul-long v7, v0, v2

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v5

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    move-result-object v9

    move-object v4, p1

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMv2Response([B[B[BJ[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B
    .locals 0

    .line 2
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object p0

    invoke-static {p1, p0}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private parse([B)V
    .locals 11

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    aget-byte v1, p1, v0

    sget-object v2, Ljcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not an NTLMSSP message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const/16 v0, 0xc

    invoke-static {p1, v0}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v1

    const/16 v2, 0x14

    invoke-static {p1, v2}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    move-result-object v2

    const/16 v3, 0x18

    invoke-static {p1, v3}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v3

    const/16 v4, 0x1c

    invoke-static {p1, v4}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    move-result-object v4

    const/16 v5, 0x20

    invoke-static {p1, v5}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v5

    const/16 v6, 0x24

    invoke-static {p1, v6}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    move-result-object v6

    const/16 v7, 0x28

    invoke-static {p1, v7}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v7

    const/16 v8, 0x2c

    invoke-static {p1, v8}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    move-result-object v8

    const/16 v9, 0x30

    invoke-static {p1, v9}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v9

    const/16 v10, 0x34

    if-eq v1, v10, :cond_4

    if-eq v3, v10, :cond_4

    if-eq v5, v10, :cond_4

    if-eq v7, v10, :cond_4

    if-ne v9, v10, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1, v10}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    move-result-object v1

    const/16 v3, 0x3c

    invoke-static {p1, v3}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result p1

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    const-string v3, "UTF-16LE"

    goto :goto_2

    :cond_3
    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/16 p1, 0x202

    :goto_2
    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v4, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v6, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v8, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not a Type 3 message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getLMResponse()[B
    .locals 1

    .line 1
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->lmResponse:[B

    return-object v0
.end method

.method public getMasterKey()[B
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    return-object v0
.end method

.method public getNTResponse()[B
    .locals 1

    .line 1
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    return-object v0
.end method

.method public getSessionKey()[B
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkstation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->workstation:Ljava/lang/String;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->domain:Ljava/lang/String;

    return-void
.end method

.method public setLMResponse([B)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->lmResponse:[B

    return-void
.end method

.method public setNTResponse([B)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    return-void
.end method

.method public setSessionKey([B)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->user:Ljava/lang/String;

    return-void
.end method

.method public setWorkstation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->workstation:Ljava/lang/String;

    return-void
.end method

.method public toByteArray()[B
    .locals 16

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getDomain()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "UTF-16LE"

    if-eqz v5, :cond_3

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v3

    :goto_2
    if-eqz v5, :cond_4

    array-length v7, v5

    goto :goto_3

    :cond_4
    move v7, v2

    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getUser()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {v8, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    goto :goto_4

    :cond_6
    move-object v8, v3

    :goto_4
    if-eqz v8, :cond_7

    array-length v9, v8

    goto :goto_5

    :cond_7
    move v9, v2

    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getWorkstation()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_9

    if-eqz v1, :cond_8

    invoke-virtual {v10, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    :goto_6
    move-object v3, v1

    goto :goto_7

    :cond_8
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_6

    :cond_9
    :goto_7
    if-eqz v3, :cond_a

    array-length v1, v3

    goto :goto_8

    :cond_a
    move v1, v2

    :goto_8
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getLMResponse()[B

    move-result-object v4

    if-eqz v4, :cond_b

    array-length v6, v4

    goto :goto_9

    :cond_b
    move v6, v2

    :goto_9
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getNTResponse()[B

    move-result-object v10

    if-eqz v10, :cond_c

    array-length v11, v10

    goto :goto_a

    :cond_c
    move v11, v2

    :goto_a
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getSessionKey()[B

    move-result-object v12

    if-eqz v12, :cond_d

    array-length v13, v12

    goto :goto_b

    :cond_d
    move v13, v2

    :goto_b
    add-int/lit8 v14, v7, 0x40

    add-int/2addr v14, v9

    add-int/2addr v14, v1

    add-int/2addr v14, v6

    add-int/2addr v14, v11

    add-int/2addr v14, v13

    new-array v13, v14, [B

    sget-object v14, Ljcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    const/16 v15, 0x8

    invoke-static {v14, v2, v13, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x3

    invoke-static {v13, v15, v2}, Ljcifs/ntlmssp/NtlmMessage;->writeULong([BII)V

    const/16 v2, 0xc

    const/16 v14, 0x40

    invoke-static {v13, v2, v14, v4}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    add-int/2addr v6, v14

    const/16 v2, 0x14

    invoke-static {v13, v2, v6, v10}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    add-int/2addr v6, v11

    const/16 v2, 0x1c

    invoke-static {v13, v2, v6, v5}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    add-int/2addr v6, v7

    const/16 v2, 0x24

    invoke-static {v13, v2, v6, v8}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    add-int/2addr v6, v9

    const/16 v2, 0x2c

    invoke-static {v13, v2, v6, v3}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    add-int/2addr v6, v1

    const/16 v1, 0x34

    invoke-static {v13, v1, v6, v12}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    const/16 v1, 0x3c

    invoke-static {v13, v1, v0}, Ljcifs/ntlmssp/NtlmMessage;->writeULong([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v13

    :goto_c
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getUser()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getDomain()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getWorkstation()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getLMResponse()[B

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getNTResponse()[B

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getSessionKey()[B

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v7, "Type3Message[domain="

    .line 28
    .line 29
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ",user="

    .line 36
    .line 37
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ",workstation="

    .line 44
    .line 45
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ",lmResponse="

    .line 52
    .line 53
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, " bytes>"

    .line 57
    .line 58
    const-string v1, "<"

    .line 59
    .line 60
    const-string v2, "null"

    .line 61
    .line 62
    if-nez v3, :cond_0

    .line 63
    .line 64
    move-object v3, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    array-length v3, v3

    .line 72
    invoke-static {v7, v3, v0}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v3, ",ntResponse="

    .line 80
    .line 81
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    if-nez v4, :cond_1

    .line 85
    .line 86
    move-object v3, v2

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    array-length v4, v4

    .line 94
    invoke-static {v3, v4, v0}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v3, ",sessionKey="

    .line 102
    .line 103
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    if-nez v5, :cond_2

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    array-length v1, v5

    .line 115
    invoke-static {v2, v1, v0}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v0, ",flags=0x"

    .line 123
    .line 124
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    const/16 v1, 0x8

    .line 132
    .line 133
    invoke-static {v0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v0, "]"

    .line 141
    .line 142
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    return-object v0
.end method
