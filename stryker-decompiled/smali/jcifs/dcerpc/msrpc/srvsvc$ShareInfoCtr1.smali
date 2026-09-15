.class public Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareInfoCtr1"
.end annotation


# instance fields
.field public array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

.field public count:I


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

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->count:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v2, v0, 0xc

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget-object v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    if-nez v2, :cond_1

    if-ltz v0, :cond_0

    const v2, 0xffff

    if-gt v0, v2, :cond_0

    new-array v2, v0, [Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    iput-object v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    goto :goto_0

    :cond_0
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    aget-object v3, v2, v1

    if-nez v3, :cond_2

    new-instance v3, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    invoke-direct {v3}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;-><init>()V

    aput-object v3, v2, v1

    :cond_2
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 3
    .line 4
    .line 5
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->count:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 21
    .line 22
    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->count:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 25
    .line 26
    .line 27
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 28
    .line 29
    const/16 v2, 0xc

    .line 30
    .line 31
    invoke-static {v0, v2, p1, v1}, Landroid/support/v4/media/session/a;->x(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-ge v1, v0, :cond_0

    .line 37
    .line 38
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    .line 39
    .line 40
    aget-object v2, v2, v1

    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method
