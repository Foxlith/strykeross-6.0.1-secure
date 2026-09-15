.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarTranslatedName"
.end annotation


# instance fields
.field public name:Ljcifs/dcerpc/rpc$unicode_string;

.field public sid_index:I

.field public sid_type:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 5

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_type:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    if-nez v0, :cond_0

    new-instance v0, Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v0}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_index:I

    if-eqz v0, :cond_3

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iget v2, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v4, v3, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-nez v4, :cond_2

    if-ltz v0, :cond_1

    const v4, 0xffff

    if-gt v0, v4, :cond_1

    new-array v0, v0, [S

    iput-object v0, v3, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    goto :goto_0

    :cond_1
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v2, v2, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
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
    iget-short v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_type:S

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 11
    .line 12
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 18
    .line 19
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 25
    .line 26
    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_index:I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 38
    .line 39
    iget-object v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 44
    .line 45
    iget-short v1, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 46
    .line 47
    div-int/lit8 v1, v1, 0x2

    .line 48
    .line 49
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 50
    .line 51
    div-int/lit8 v0, v0, 0x2

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 61
    .line 62
    .line 63
    iget v2, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 64
    .line 65
    const/4 v3, 0x2

    .line 66
    invoke-static {v1, v3, p1, v2}, Landroid/support/v4/media/session/a;->x(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :goto_0
    if-ge v0, v1, :cond_0

    .line 71
    .line 72
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 73
    .line 74
    iget-object v2, v2, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 75
    .line 76
    aget-short v2, v2, v0

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method
