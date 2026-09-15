.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarDomainInfo"
.end annotation


# instance fields
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
    .locals 6

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    if-nez v0, :cond_0

    new-instance v0, Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v0}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    if-eqz v0, :cond_3

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iget v3, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v5, v4, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-nez v5, :cond_2

    if-ltz v0, :cond_1

    const v5, 0xffff

    if-gt v0, v5, :cond_1

    new-array v0, v0, [S

    iput-object v0, v4, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    goto :goto_0

    :cond_1
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v3, v3, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_5

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    if-nez v0, :cond_4

    new-instance v0, Ljcifs/dcerpc/rpc$sid_t;

    invoke-direct {v0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    :cond_4
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$sid_t;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_5
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 6
    .line 7
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 13
    .line 14
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

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
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 33
    .line 34
    iget-object v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 39
    .line 40
    iget-short v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 41
    .line 42
    div-int/lit8 v1, v1, 0x2

    .line 43
    .line 44
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 45
    .line 46
    div-int/lit8 v0, v0, 0x2

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 56
    .line 57
    .line 58
    iget v2, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 59
    .line 60
    const/4 v3, 0x2

    .line 61
    invoke-static {v1, v3, p1, v2}, Landroid/support/v4/media/session/a;->x(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_0
    if-ge v0, v1, :cond_0

    .line 66
    .line 67
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 68
    .line 69
    iget-object v2, v2, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 70
    .line 71
    aget-short v2, v2, v0

    .line 72
    .line 73
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 80
    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$sid_t;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method
