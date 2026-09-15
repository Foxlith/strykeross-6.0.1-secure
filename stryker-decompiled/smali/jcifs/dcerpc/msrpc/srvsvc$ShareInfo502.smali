.class public Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareInfo502"
.end annotation


# instance fields
.field public current_uses:I

.field public max_uses:I

.field public netname:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public permissions:I

.field public remark:Ljava/lang/String;

.field public sd_size:I

.field public security_descriptor:[B

.field public type:I


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

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->type:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iput v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->permissions:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iput v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->max_uses:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iput v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->current_uses:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    if-eqz v0, :cond_0

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->netname:Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->remark:Ljava/lang/String;

    :cond_1
    if-eqz v2, :cond_2

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->path:Ljava/lang/String;

    :cond_2
    if-eqz v3, :cond_3

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_string()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->password:Ljava/lang/String;

    :cond_3
    if-eqz v4, :cond_6

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    iget-object v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    if-nez v2, :cond_5

    if-ltz v0, :cond_4

    const v2, 0xffff

    if-gt v0, v2, :cond_4

    new-array v2, v0, [B

    iput-object v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    goto :goto_0

    :cond_4
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    const-string v0, "invalid array conformance"

    invoke-direct {p1, v0}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    iget-object v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->netname:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->type:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->remark:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->permissions:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->max_uses:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->current_uses:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->path:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->password:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->netname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->remark:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->path:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->password:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    if-eqz v0, :cond_4

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    aget-byte v2, v2, v1

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
