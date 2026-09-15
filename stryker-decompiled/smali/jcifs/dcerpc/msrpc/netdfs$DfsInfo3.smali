.class public Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsInfo3"
.end annotation


# instance fields
.field public comment:Ljava/lang/String;

.field public num_stores:I

.field public path:Ljava/lang/String;

.field public state:I

.field public stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;


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

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iput v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->state:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iput v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->num_stores:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    if-eqz v0, :cond_0

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->path:Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->comment:Ljava/lang/String;

    :cond_1
    if-eqz v2, :cond_5

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    mul-int/lit8 v2, v0, 0xc

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    if-nez v2, :cond_3

    if-ltz v0, :cond_2

    const v2, 0xffff

    if-gt v0, v2, :cond_2

    new-array v2, v0, [Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    iput-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    goto :goto_0

    :cond_2
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    aget-object v3, v2, v1

    if-nez v3, :cond_4

    new-instance v3, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    invoke-direct {v3}, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;-><init>()V

    aput-object v3, v2, v1

    :cond_4
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
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
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->path:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->comment:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->state:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->num_stores:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->path:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->comment:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 54
    .line 55
    iget v0, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->num_stores:I

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 58
    .line 59
    .line 60
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 61
    .line 62
    const/16 v2, 0xc

    .line 63
    .line 64
    invoke-static {v0, v2, p1, v1}, Landroid/support/v4/media/session/a;->x(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const/4 v1, 0x0

    .line 69
    :goto_0
    if-ge v1, v0, :cond_2

    .line 70
    .line 71
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo3;->stores:[Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;

    .line 72
    .line 73
    aget-object v2, v2, v1

    .line 74
    .line 75
    invoke-virtual {v2, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    return-void
.end method
