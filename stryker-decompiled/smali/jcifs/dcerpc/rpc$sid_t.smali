.class public Ljcifs/dcerpc/rpc$sid_t;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sid_t"
.end annotation


# instance fields
.field public identifier_authority:[B

.field public revision:B

.field public sub_authority:[I

.field public sub_authority_count:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 7

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget v3, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v4, v0, 0x4

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget-object v4, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    if-nez v4, :cond_0

    new-array v4, v2, [B

    iput-object v4, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    :cond_0
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    if-nez v2, :cond_3

    if-ltz v0, :cond_2

    const v2, 0xffff

    if-gt v0, v2, :cond_2

    new-array v2, v0, [I

    iput-object v2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    goto :goto_1

    :cond_2
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    :goto_2
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
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
    iget-byte v0, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 8
    .line 9
    .line 10
    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 13
    .line 14
    .line 15
    iget-byte v1, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 18
    .line 19
    .line 20
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 21
    .line 22
    const/4 v2, 0x6

    .line 23
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 24
    .line 25
    .line 26
    iget v3, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 27
    .line 28
    const/4 v4, 0x4

    .line 29
    invoke-static {v0, v4, p1, v1}, Landroid/support/v4/media/session/a;->x(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v1, 0x0

    .line 34
    move v4, v1

    .line 35
    :goto_0
    if-ge v4, v2, :cond_0

    .line 36
    .line 37
    iget-object v5, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 38
    .line 39
    aget-byte v5, v5, v4

    .line 40
    .line 41
    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :goto_1
    if-ge v1, v0, :cond_1

    .line 52
    .line 53
    iget-object v2, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 54
    .line 55
    aget v2, v2, v1

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    return-void
.end method
