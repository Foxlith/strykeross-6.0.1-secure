.class public Ljcifs/dcerpc/rpc$unicode_string;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "unicode_string"
.end annotation


# instance fields
.field public buffer:[S

.field public length:S

.field public maximum_length:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iget v2, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget-object v3, p0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-nez v3, :cond_1

    if-ltz v0, :cond_0

    const v3, 0xffff

    if-gt v0, v3, :cond_0

    new-array v0, v0, [S

    iput-object v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    goto :goto_0

    :cond_0
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
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
    iget-short v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 8
    .line 9
    .line 10
    iget-short v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 26
    .line 27
    iget-short v0, p0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 28
    .line 29
    div-int/lit8 v0, v0, 0x2

    .line 30
    .line 31
    iget-short v1, p0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 32
    .line 33
    div-int/lit8 v1, v1, 0x2

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 43
    .line 44
    .line 45
    iget v2, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    invoke-static {v0, v3, p1, v2}, Landroid/support/v4/media/session/a;->x(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    if-ge v1, v0, :cond_0

    .line 53
    .line 54
    iget-object v2, p0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 55
    .line 56
    aget-short v2, v2, v1

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method
