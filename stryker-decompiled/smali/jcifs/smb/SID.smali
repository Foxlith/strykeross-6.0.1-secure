.class public Ljcifs/smb/SID;
.super Ljcifs/dcerpc/rpc$sid_t;
.source "SourceFile"


# static fields
.field public static CREATOR_OWNER:Ljcifs/smb/SID; = null

.field public static EVERYONE:Ljcifs/smb/SID; = null

.field public static final SID_FLAG_RESOLVE_SIDS:I = 0x1

.field public static final SID_TYPE_ALIAS:I = 0x4

.field public static final SID_TYPE_DELETED:I = 0x6

.field public static final SID_TYPE_DOMAIN:I = 0x3

.field public static final SID_TYPE_DOM_GRP:I = 0x2

.field public static final SID_TYPE_INVALID:I = 0x7

.field static final SID_TYPE_NAMES:[Ljava/lang/String;

.field public static final SID_TYPE_UNKNOWN:I = 0x8

.field public static final SID_TYPE_USER:I = 0x1

.field public static final SID_TYPE_USE_NONE:I = 0x0

.field public static final SID_TYPE_WKN_GRP:I = 0x5

.field public static SYSTEM:Ljcifs/smb/SID;

.field static sid_cache:Ljava/util/Map;


# instance fields
.field acctName:Ljava/lang/String;

.field domainName:Ljava/lang/String;

.field origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field origin_server:Ljava/lang/String;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "0"

    const-string v1, "User"

    const-string v2, "Domain group"

    const-string v3, "Domain"

    const-string v4, "Local group"

    const-string v5, "Builtin group"

    const-string v6, "Deleted"

    const-string v7, "Invalid"

    const-string v8, "Unknown"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SID;->SID_TYPE_NAMES:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Ljcifs/smb/SID;->EVERYONE:Ljcifs/smb/SID;

    sput-object v0, Ljcifs/smb/SID;->CREATOR_OWNER:Ljcifs/smb/SID;

    sput-object v0, Ljcifs/smb/SID;->SYSTEM:Ljcifs/smb/SID;

    :try_start_0
    new-instance v0, Ljcifs/smb/SID;

    const-string v1, "S-1-1-0"

    invoke-direct {v0, v1}, Ljcifs/smb/SID;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/SID;->EVERYONE:Ljcifs/smb/SID;

    new-instance v0, Ljcifs/smb/SID;

    const-string v1, "S-1-3-0"

    invoke-direct {v0, v1}, Ljcifs/smb/SID;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/SID;->CREATOR_OWNER:Ljcifs/smb/SID;

    new-instance v0, Ljcifs/smb/SID;

    const-string v1, "S-1-5-18"

    invoke-direct {v0, v1}, Ljcifs/smb/SID;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/SID;->SYSTEM:Ljcifs/smb/SID;
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "-"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p1

    iput-byte p1, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "0x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    const/4 p1, 0x6

    new-array p1, p1, [B

    iput-object p1, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 p1, 0x5

    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const-wide/16 v4, 0x100

    rem-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, p1

    const/16 v3, 0x8

    shr-long/2addr v1, v3

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-lez p1, :cond_2

    new-array p1, p1, [I

    iput-object p1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    const/4 p1, 0x0

    :goto_2
    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Bad textual SID format: "

    .line 1
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-byte v0, p1, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    iget-byte v0, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    iget-object v1, p1, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    iput-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    iget-object v1, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iput-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iput p2, p0, Ljcifs/smb/SID;->type:I

    iput-object p3, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object p4, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    if-eqz p5, :cond_0

    add-int/lit8 v0, v0, -0x1

    int-to-byte p2, v0

    iput-byte p2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    new-array p2, p2, [I

    iput-object p2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    const/4 p2, 0x0

    :goto_0
    iget-byte p3, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iget-object p4, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget p4, p4, p2

    aput p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SID;I)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-byte v0, p1, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    iget-object v0, p1, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    iput-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    iget-byte v0, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    const/4 v0, 0x0

    :goto_0
    iget-byte v1, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iget-object v2, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aput p2, p1, v0

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 4

    .line 9
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    iput-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    add-int/lit8 v1, p2, 0x2

    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    const/4 v0, 0x6

    new-array v2, v0, [B

    iput-object v2, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, 0x8

    iget-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    :goto_0
    iget-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    aput v1, v0, v3

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid SID sub_authority_count"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getGroupMemberSids0(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;Ljcifs/smb/SID;II)[Ljcifs/smb/SID;
    .locals 10

    new-instance p2, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    invoke-direct {p2}, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljcifs/dcerpc/msrpc/SamrAliasHandle;

    const v2, 0x2000c

    invoke-direct {v1, p0, p1, v2, p3}, Ljcifs/dcerpc/msrpc/SamrAliasHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p1, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;

    invoke-direct {p1, v1, p2}, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;-><init>(Ljcifs/dcerpc/msrpc/SamrAliasHandle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V

    invoke-virtual {p0, p1}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget p2, p1, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->retval:I

    const/4 p3, 0x0

    if-nez p2, :cond_2

    iget-object p2, p1, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    iget p2, p2, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->num_sids:I

    new-array v0, p2, [Ljcifs/smb/SID;

    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->getServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->getPrincipal()Ljava/security/Principal;

    move-result-object p0

    check-cast p0, Ljcifs/smb/NtlmPasswordAuthentication;

    :goto_0
    if-ge p3, p2, :cond_0

    new-instance v9, Ljcifs/smb/SID;

    iget-object v3, p1, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    iget-object v3, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    aget-object v3, v3, p3

    iget-object v4, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Ljcifs/dcerpc/rpc$sid_t;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Ljcifs/smb/SID;-><init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v9, v0, p3

    iput-object v2, v9, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object p0, v9, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :cond_0
    if-lez p2, :cond_1

    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    invoke-static {v2, p0, v0}, Ljcifs/smb/SID;->resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-virtual {v1}, Ljcifs/dcerpc/msrpc/SamrAliasHandle;->close()V

    return-object v0

    :cond_2
    :try_start_2
    new-instance p0, Ljcifs/smb/SmbException;

    iget p1, p1, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->retval:I

    invoke-direct {p0, p1, p3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljcifs/dcerpc/msrpc/SamrAliasHandle;->close()V

    :cond_3
    throw p0
.end method

.method public static getLocalGroupsMap(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)Ljava/util/Map;
    .locals 12

    const-string v0, "ncacn_np:"

    invoke-static {p0, p1}, Ljcifs/smb/SID;->getServerSid(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SID;

    move-result-object v1

    new-instance v2, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    invoke-direct {v2}, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;-><init>()V

    sget-object v3, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[\\PIPE\\samr]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    new-instance v0, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;

    const/high16 v5, 0x2000000

    invoke-direct {v0, p1, p0, v5}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance p0, Ljcifs/dcerpc/msrpc/SamrDomainHandle;

    invoke-direct {p0, p1, v0, v5, v1}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v4, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;

    const v5, 0xffff

    invoke-direct {v4, p0, v5, v2}, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;-><init>(Ljcifs/dcerpc/msrpc/SamrDomainHandle;ILjcifs/dcerpc/msrpc/samr$SamrSamArray;)V

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v2, v4, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->retval:I

    const/4 v5, 0x0

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v6, v5

    :goto_0
    iget-object v7, v4, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    iget v8, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->count:I

    if-ge v6, v8, :cond_3

    iget-object v7, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    aget-object v7, v7, v6

    iget v8, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->idx:I

    invoke-static {p1, p0, v1, v8, p2}, Ljcifs/smb/SID;->getGroupMemberSids0(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;Ljcifs/smb/SID;II)[Ljcifs/smb/SID;

    move-result-object v8

    new-instance v9, Ljcifs/smb/SID;

    iget v10, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->idx:I

    invoke-direct {v9, v1, v10}, Ljcifs/smb/SID;-><init>(Ljcifs/smb/SID;I)V

    const/4 v10, 0x4

    iput v10, v9, Ljcifs/smb/SID;->type:I

    invoke-virtual {v1}, Ljcifs/smb/SID;->getDomainName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    new-instance v10, Ljcifs/dcerpc/UnicodeString;

    iget-object v7, v7, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v10, v7, v5}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v10}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    move v7, v5

    :goto_1
    array-length v10, v8

    if-ge v7, v10, :cond_2

    aget-object v10, v8, v7

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-nez v10, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    aget-object v11, v8, v7

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception p2

    :goto_2
    move-object v4, p1

    goto :goto_4

    :cond_0
    :goto_3
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {p0}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    invoke-virtual {v0}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v2

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_4
    :try_start_5
    new-instance p2, Ljcifs/smb/SmbException;

    iget v1, v4, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->retval:I

    invoke-direct {p2, v1, v5}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception p2

    move-object p0, v4

    goto :goto_2

    :catchall_3
    move-exception p2

    move-object p0, v4

    move-object v0, p0

    goto :goto_2

    :catchall_4
    move-exception p2

    move-object p0, v4

    move-object v0, p0

    :goto_4
    if-eqz v4, :cond_7

    if-eqz v0, :cond_6

    if-eqz p0, :cond_5

    :try_start_6
    invoke-virtual {p0}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    :cond_5
    invoke-virtual {v0}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    :cond_6
    invoke-virtual {v4}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_7
    throw p2

    :goto_5
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public static getServerSid(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SID;
    .locals 11

    const-string v0, "ncacn_np:"

    new-instance v1, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;

    invoke-direct {v1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;-><init>()V

    sget-object v2, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[\\PIPE\\lsarpc]"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance p1, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v3, v0}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;

    const/4 v3, 0x5

    invoke-direct {v0, p1, v3, v1}, Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;-><init>(Ljcifs/dcerpc/msrpc/LsaPolicyHandle;SLjcifs/dcerpc/ndr/NdrObject;)V

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v3, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->retval:I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    new-instance v0, Ljcifs/smb/SID;

    iget-object v6, v1, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    const/4 v7, 0x3

    new-instance v3, Ljcifs/dcerpc/UnicodeString;

    iget-object v1, v1, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v3, v1, v4}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v3}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Ljcifs/smb/SID;-><init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_0
    move-object v3, p0

    goto :goto_1

    :cond_0
    :try_start_4
    new-instance v1, Ljcifs/smb/SmbException;

    iget v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->retval:I

    invoke-direct {v1, v0, v4}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_2
    move-exception v0

    move-object p1, v3

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object p1, v3

    :goto_1
    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    :try_start_5
    invoke-virtual {p1}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    :cond_1
    invoke-virtual {v3}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_2
    throw v0

    :goto_2
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public static resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    sget-object v4, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object v5, p2, v3

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljcifs/smb/SID;

    if-eqz v4, :cond_0

    aget-object v5, p2, v3

    iget v6, v4, Ljcifs/smb/SID;->type:I

    iput v6, v5, Ljcifs/smb/SID;->type:I

    iget-object v6, v4, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v6, v5, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iget-object v4, v4, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v4, v5, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    aget-object v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    new-array p2, v2, [Ljcifs/smb/SID;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljcifs/smb/SID;

    invoke-static {p0, p1, p2}, Ljcifs/smb/SID;->resolveSids0(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V

    :goto_2
    array-length p0, p2

    if-ge v2, p0, :cond_2

    sget-object p0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object p1, p2, v2

    invoke-interface {p0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;II)V
    .locals 7

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p4, :cond_1

    :try_start_0
    sget-object v4, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    add-int v5, p3, v3

    aget-object v6, p2, v5

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljcifs/smb/SID;

    if-eqz v4, :cond_0

    aget-object v5, p2, v5

    iget v6, v4, Ljcifs/smb/SID;->type:I

    iput v6, v5, Ljcifs/smb/SID;->type:I

    iget-object v6, v4, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v6, v5, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    iget-object v4, v4, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v4, v5, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    aget-object v4, p2, v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    new-array p2, v2, [Ljcifs/smb/SID;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljcifs/smb/SID;

    invoke-static {p0, p1, p2}, Ljcifs/smb/SID;->resolveSids0(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V

    :goto_2
    array-length p0, p2

    if-ge v2, p0, :cond_2

    sget-object p0, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object p1, p2, v2

    invoke-interface {p0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static resolveSids(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V
    .locals 6

    .line 3
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;

    invoke-direct {v0, p1, p2}, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;-><init>(Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget p0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->retval:I

    const p1, -0x3fffff8d    # -2.0000274f

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_1

    const/16 p1, 0x107

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljcifs/smb/SmbException;

    iget p1, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->retval:I

    invoke-direct {p0, p1, v1}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p0

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    array-length p1, p2

    if-ge p0, p1, :cond_3

    aget-object p1, p2, p0

    iget-object v2, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    iget-object v2, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v2, v2, p0

    iget-short v3, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_type:S

    iput v3, p1, Ljcifs/smb/SID;->type:I

    const/4 v4, 0x0

    iput-object v4, p1, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    const/4 v5, 0x4

    if-eq v3, v5, :cond_2

    const/4 v5, 0x5

    if-eq v3, v5, :cond_2

    goto :goto_2

    :cond_2
    iget v2, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_index:I

    iget-object v3, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    iget-object v3, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    aget-object v2, v3, v2

    iget-object v2, v2, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    new-instance v3, Ljcifs/dcerpc/UnicodeString;

    invoke-direct {v3, v2, v1}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v3}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    :goto_2
    aget-object p1, p2, p0

    new-instance v2, Ljcifs/dcerpc/UnicodeString;

    iget-object v3, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    iget-object v3, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v3, v3, p0

    iget-object v3, v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v2, v3, v1}, Ljcifs/dcerpc/UnicodeString;-><init>(Ljcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v2}, Ljcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    aget-object p1, p2, p0

    iput-object v4, p1, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v4, p1, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static resolveSids0(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V
    .locals 6

    const-string v0, "\\\\"

    const-string v1, "ncacn_np:"

    sget-object v2, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[\\PIPE\\lsarpc]"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v1, 0x2e

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v3

    :goto_0
    move-object v3, p1

    goto :goto_3

    :cond_0
    :goto_1
    new-instance v1, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x800

    invoke-direct {v1, p1, p0, v0}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1, v1, p2}, Ljcifs/smb/SID;->resolveSids(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_2
    monitor-exit v2

    return-void

    :catchall_2
    move-exception p0

    goto :goto_0

    :catchall_3
    move-exception p0

    move-object v1, v3

    :goto_3
    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    :cond_2
    invoke-virtual {v3}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_3
    throw p0

    :goto_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static toByteArray(Ljcifs/dcerpc/rpc$sid_t;)[B
    .locals 6

    iget-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    mul-int/lit8 v1, v0, 0x4

    const/16 v2, 0x8

    add-int/2addr v1, v2

    new-array v1, v1, [B

    iget-byte v3, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    const/4 v3, 0x1

    aput-byte v0, v1, v3

    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 v3, 0x6

    const/4 v5, 0x2

    invoke-static {v0, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ge v4, v0, :cond_0

    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v0, v0, v4

    invoke-static {v0, v1, v2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Ljcifs/smb/SID;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p1, Ljcifs/smb/SID;

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    iget-byte v2, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    iget-byte v3, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ne v2, v3, :cond_5

    :goto_0
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_2

    iget-object v3, p1, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v3, v3, v2

    iget-object v4, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_1

    return v1

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    const/4 v3, 0x6

    if-ge v2, v3, :cond_4

    iget-object v3, p1, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    aget-byte v3, v3, v2

    iget-object v4, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-byte p1, p1, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    iget-byte v2, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    if-ne p1, v2, :cond_5

    move v1, v0

    :cond_5
    return v1
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    :cond_0
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/16 v1, 0x8

    const-string v2, ""

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iget-byte v2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    return-object v2

    :cond_2
    iget-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    :cond_0
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljcifs/smb/SID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljcifs/smb/SID;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainSid()Ljcifs/smb/SID;
    .locals 7

    new-instance v6, Ljcifs/smb/SID;

    const/4 v2, 0x3

    iget-object v3, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljcifs/smb/SID;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljcifs/smb/SID;-><init>(Ljcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public getGroupMemberSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)[Ljcifs/smb/SID;
    .locals 5

    const-string v0, "ncacn_np:"

    iget v1, p0, Ljcifs/smb/SID;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljcifs/smb/SID;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SID;->getDomainSid()Ljcifs/smb/SID;

    move-result-object v1

    sget-object v2, Ljcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[\\PIPE\\samr]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    new-instance v0, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;

    const/16 v4, 0x30

    invoke-direct {v0, p2, p1, v4}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance p1, Ljcifs/dcerpc/msrpc/SamrDomainHandle;

    const/16 v4, 0x200

    invoke-direct {p1, p2, v0, v4, v1}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;-><init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Ljcifs/smb/SID;->getRid()I

    move-result v3

    invoke-static {p2, p1, v1, v3, p3}, Ljcifs/smb/SID;->getGroupMemberSids0(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;Ljcifs/smb/SID;II)[Ljcifs/smb/SID;

    move-result-object p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_1

    :try_start_4
    invoke-virtual {p1}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    invoke-virtual {v0}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    invoke-virtual {p2}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    monitor-exit v2

    return-object p3

    :catchall_1
    move-exception p3

    :goto_1
    move-object v3, p2

    goto :goto_2

    :catchall_2
    move-exception p3

    move-object p1, v3

    goto :goto_1

    :catchall_3
    move-exception p3

    move-object p1, v3

    move-object v0, p1

    goto :goto_1

    :catchall_4
    move-exception p3

    move-object p1, v3

    move-object v0, p1

    :goto_2
    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    :cond_2
    invoke-virtual {v0}, Ljcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    :cond_3
    invoke-virtual {v3}, Ljcifs/dcerpc/DcerpcHandle;->close()V

    :cond_4
    throw p3

    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public getRid()I
    .locals 2

    invoke-virtual {p0}, Ljcifs/smb/SID;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This SID is a domain sid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    :cond_0
    iget v0, p0, Ljcifs/smb/SID;->type:I

    return v0
.end method

.method public getTypeText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    :cond_0
    sget-object v0, Ljcifs/smb/SID;->SID_TYPE_NAMES:[Ljava/lang/String;

    iget v1, p0, Ljcifs/smb/SID;->type:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    const/4 v1, 0x0

    :goto_0
    iget-byte v2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v2, v2, v1

    const v3, 0x1003f

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public resolve(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljcifs/smb/SID;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, v0}, Ljcifs/smb/SID;->resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;)V

    return-void
.end method

.method public resolveWeak()V
    .locals 3

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p0, v0, v2}, Ljcifs/smb/SID;->resolve(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iput-object v1, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public toDisplayString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SID;->resolveWeak()V

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget v1, p0, Ljcifs/smb/SID;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const-string v1, "BUILTIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljcifs/smb/SID;->domainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    iget v0, p0, Ljcifs/smb/SID;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Ljcifs/smb/SID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Ljcifs/smb/SID;->acctName:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljcifs/smb/SID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "S-"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    .line 9
    .line 10
    and-int/lit16 v1, v1, 0xff

    .line 11
    .line 12
    const-string v2, "-"

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aget-byte v4, v1, v3

    .line 22
    .line 23
    if-nez v4, :cond_2

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    aget-byte v1, v1, v4

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const-wide/16 v5, 0x0

    .line 32
    .line 33
    const/4 v1, 0x5

    .line 34
    move-wide v7, v5

    .line 35
    :goto_0
    if-le v1, v4, :cond_1

    .line 36
    .line 37
    iget-object v9, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 38
    .line 39
    aget-byte v9, v9, v1

    .line 40
    .line 41
    int-to-long v9, v9

    .line 42
    const-wide/16 v11, 0xff

    .line 43
    .line 44
    and-long/2addr v9, v11

    .line 45
    long-to-int v11, v7

    .line 46
    shl-long/2addr v9, v11

    .line 47
    add-long/2addr v5, v9

    .line 48
    const-wide/16 v9, 0x8

    .line 49
    .line 50
    add-long/2addr v7, v9

    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    :goto_1
    const-string v1, "0x"

    .line 71
    .line 72
    invoke-static {v0, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 81
    .line 82
    const/4 v4, 0x6

    .line 83
    invoke-static {v1, v3, v4}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :goto_2
    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 95
    .line 96
    if-ge v3, v1, :cond_3

    .line 97
    .line 98
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 103
    .line 104
    aget v1, v1, v3

    .line 105
    .line 106
    int-to-long v4, v1

    .line 107
    const-wide v6, 0xffffffffL

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    and-long/2addr v4, v6

    .line 113
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    return-object v0
.end method
