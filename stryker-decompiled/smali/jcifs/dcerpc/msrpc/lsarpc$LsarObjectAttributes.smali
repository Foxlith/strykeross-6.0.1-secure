.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarObjectAttributes"
.end annotation


# instance fields
.field public attributes:I

.field public length:I

.field public object_name:Ljcifs/dcerpc/rpc$unicode_string;

.field public root_directory:Ljcifs/dcerpc/ndr/NdrSmall;

.field public security_descriptor:I

.field public security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->length:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iput v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->attributes:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    iput v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_descriptor:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    if-eqz v0, :cond_0

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->root_directory:Ljcifs/dcerpc/ndr/NdrSmall;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrSmall;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Ljcifs/dcerpc/rpc$unicode_string;

    if-nez v0, :cond_1

    new-instance v0, Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v0}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Ljcifs/dcerpc/rpc$unicode_string;

    :cond_1
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$unicode_string;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_2
    if-eqz v2, :cond_4

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    if-nez v0, :cond_3

    new-instance v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    :cond_3
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_4
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->length:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->root_directory:Ljcifs/dcerpc/ndr/NdrSmall;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->attributes:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_descriptor:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->root_directory:Ljcifs/dcerpc/ndr/NdrSmall;

    if-eqz v0, :cond_0

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/NdrSmall;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Ljcifs/dcerpc/rpc$unicode_string;

    if-eqz v0, :cond_1

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$unicode_string;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_1
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    if-eqz v0, :cond_2

    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_2
    return-void
.end method
