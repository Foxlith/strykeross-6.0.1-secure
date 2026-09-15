.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarDnsDomainInfo"
.end annotation


# instance fields
.field public dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

.field public dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

.field public domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

.field public name:Ljcifs/dcerpc/rpc$unicode_string;

.field public sid:Ljcifs/dcerpc/rpc$sid_t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 13

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    if-nez v1, :cond_0

    new-instance v1, Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v1}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    :cond_0
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v1, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    if-nez v2, :cond_1

    new-instance v2, Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v2}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    :cond_1
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v3

    int-to-short v3, v3

    iput-short v3, v2, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v3

    int-to-short v3, v3

    iput-short v3, v2, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    if-nez v3, :cond_2

    new-instance v3, Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v3}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    :cond_2
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v3, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v3, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    if-nez v0, :cond_3

    new-instance v0, Ljcifs/dcerpc/rpc$uuid_t;

    invoke-direct {v0}, Ljcifs/dcerpc/rpc$uuid_t;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    :cond_3
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    const/4 v4, 0x6

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v5

    const-string v6, "invalid array conformance"

    const v7, 0xffff

    const/4 v8, 0x0

    if-eqz v1, :cond_6

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v9

    iget v10, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v11, v9, 0x2

    invoke-virtual {p1, v11}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget-object v11, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v12, v11, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-nez v12, :cond_5

    if-ltz v1, :cond_4

    if-gt v1, v7, :cond_4

    new-array v1, v1, [S

    iput-object v1, v11, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    goto :goto_0

    :cond_4
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    invoke-direct {p1, v6}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    invoke-virtual {p1, v10}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    move v1, v8

    :goto_1
    if-ge v1, v9, :cond_6

    iget-object v10, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v10, v10, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v11

    int-to-short v11, v11

    aput-short v11, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_9

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iget v9, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v10, v2, 0x2

    invoke-virtual {p1, v10}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget-object v10, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v11, v10, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-nez v11, :cond_8

    if-ltz v1, :cond_7

    if-gt v1, v7, :cond_7

    new-array v1, v1, [S

    iput-object v1, v10, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    goto :goto_2

    :cond_7
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    invoke-direct {p1, v6}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    invoke-virtual {p1, v9}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    move v1, v8

    :goto_3
    if-ge v1, v2, :cond_9

    iget-object v9, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v9, v9, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v10

    int-to-short v10, v10

    aput-short v10, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    if-eqz v3, :cond_c

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iget v3, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v9, v2, 0x2

    invoke-virtual {p1, v9}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget-object v9, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v10, v9, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-nez v10, :cond_b

    if-ltz v1, :cond_a

    if-gt v1, v7, :cond_a

    new-array v1, v1, [S

    iput-object v1, v9, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    goto :goto_4

    :cond_a
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    invoke-direct {p1, v6}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_4
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    move v1, v8

    :goto_5
    if-ge v1, v2, :cond_c

    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v3, v3, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v6

    int-to-short v6, v6

    aput-short v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-object v2, v1, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    if-nez v2, :cond_d

    new-array v2, v4, [B

    iput-object v2, v1, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    :cond_d
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    :goto_6
    if-ge v8, v4, :cond_e

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-object v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_e
    if-eqz v5, :cond_10

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    if-nez v0, :cond_f

    new-instance v0, Ljcifs/dcerpc/rpc$sid_t;

    invoke-direct {v0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    :cond_f
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$sid_t;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_10
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 6
    .line 7
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 13
    .line 14
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 20
    .line 21
    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 28
    .line 29
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 35
    .line 36
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 42
    .line 43
    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 49
    .line 50
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 56
    .line 57
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 63
    .line 64
    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 70
    .line 71
    iget v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 77
    .line 78
    iget-short v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 84
    .line 85
    iget-short v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 91
    .line 92
    iget-byte v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 98
    .line 99
    iget-byte v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 102
    .line 103
    .line 104
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 105
    .line 106
    const/4 v2, 0x6

    .line 107
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 111
    .line 112
    invoke-virtual {p1, v3, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 116
    .line 117
    iget-object v3, v1, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 118
    .line 119
    const/4 v4, 0x0

    .line 120
    if-eqz v3, :cond_0

    .line 121
    .line 122
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 123
    .line 124
    iget-short v3, v1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 125
    .line 126
    div-int/lit8 v3, v3, 0x2

    .line 127
    .line 128
    iget-short v1, v1, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 129
    .line 130
    div-int/lit8 v1, v1, 0x2

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 139
    .line 140
    .line 141
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 142
    .line 143
    const/4 v5, 0x2

    .line 144
    invoke-static {v3, v5, p1, v1}, Landroid/support/v4/media/session/a;->x(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    move v1, v4

    .line 149
    :goto_0
    if-ge v1, v3, :cond_0

    .line 150
    .line 151
    iget-object v5, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 152
    .line 153
    iget-object v5, v5, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 154
    .line 155
    aget-short v5, v5, v1

    .line 156
    .line 157
    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v1, v1, 0x1

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_0
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 164
    .line 165
    iget-object v3, v1, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 166
    .line 167
    if-eqz v3, :cond_1

    .line 168
    .line 169
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 170
    .line 171
    iget-short v3, v1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 172
    .line 173
    div-int/lit8 v3, v3, 0x2

    .line 174
    .line 175
    iget-short v1, v1, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 176
    .line 177
    div-int/lit8 v1, v1, 0x2

    .line 178
    .line 179
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 186
    .line 187
    .line 188
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 189
    .line 190
    const/4 v5, 0x2

    .line 191
    invoke-static {v3, v5, p1, v1}, Landroid/support/v4/media/session/a;->x(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    move v1, v4

    .line 196
    :goto_1
    if-ge v1, v3, :cond_1

    .line 197
    .line 198
    iget-object v5, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 199
    .line 200
    iget-object v5, v5, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 201
    .line 202
    aget-short v5, v5, v1

    .line 203
    .line 204
    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 205
    .line 206
    .line 207
    add-int/lit8 v1, v1, 0x1

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_1
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 211
    .line 212
    iget-object v3, v1, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 213
    .line 214
    if-eqz v3, :cond_2

    .line 215
    .line 216
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 217
    .line 218
    iget-short v3, v1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 219
    .line 220
    div-int/lit8 v3, v3, 0x2

    .line 221
    .line 222
    iget-short v1, v1, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 223
    .line 224
    div-int/lit8 v1, v1, 0x2

    .line 225
    .line 226
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 233
    .line 234
    .line 235
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 236
    .line 237
    const/4 v5, 0x2

    .line 238
    invoke-static {v3, v5, p1, v1}, Landroid/support/v4/media/session/a;->x(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    move v1, v4

    .line 243
    :goto_2
    if-ge v1, v3, :cond_2

    .line 244
    .line 245
    iget-object v5, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 246
    .line 247
    iget-object v5, v5, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 248
    .line 249
    aget-short v5, v5, v1

    .line 250
    .line 251
    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 252
    .line 253
    .line 254
    add-int/lit8 v1, v1, 0x1

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    :goto_3
    if-ge v4, v2, :cond_3

    .line 262
    .line 263
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 264
    .line 265
    iget-object v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 266
    .line 267
    aget-byte v0, v0, v4

    .line 268
    .line 269
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 270
    .line 271
    .line 272
    add-int/lit8 v4, v4, 0x1

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_3
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 276
    .line 277
    if-eqz v0, :cond_4

    .line 278
    .line 279
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 280
    .line 281
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$sid_t;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 282
    .line 283
    .line 284
    :cond_4
    return-void
.end method
