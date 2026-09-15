.class public Ljcifs/dcerpc/DcerpcBind;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "SourceFile"


# static fields
.field static final result_message:[Ljava/lang/String;


# instance fields
.field binding:Ljcifs/dcerpc/DcerpcBinding;

.field max_recv:I

.field max_xmit:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "DCERPC_BIND_ERR_PROPOSED_TRANSFER_SYNTAXES_NOT_SUPPORTED"

    const-string v1, "DCERPC_BIND_ERR_LOCAL_LIMIT_EXCEEDED"

    const-string v2, "0"

    const-string v3, "DCERPC_BIND_ERR_ABSTRACT_SYNTAX_NOT_SUPPORTED"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/dcerpc/DcerpcBind;->result_message:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljcifs/dcerpc/DcerpcBinding;Ljcifs/dcerpc/DcerpcHandle;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    iput-object p1, p0, Ljcifs/dcerpc/DcerpcBind;->binding:Ljcifs/dcerpc/DcerpcBinding;

    iget p1, p2, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    iput p1, p0, Ljcifs/dcerpc/DcerpcBind;->max_xmit:I

    iget p1, p2, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    iput p1, p0, Ljcifs/dcerpc/DcerpcBind;->max_recv:I

    const/16 p1, 0xb

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    const/4 p1, 0x3

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    return-void
.end method

.method public static getResultMessage(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    sget-object v0, Ljcifs/dcerpc/DcerpcBind;->result_message:[Ljava/lang/String;

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2

    iget v0, p0, Ljcifs/dcerpc/DcerpcBind;->max_xmit:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    iget v0, p0, Ljcifs/dcerpc/DcerpcBind;->max_recv:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBind;->binding:Ljcifs/dcerpc/DcerpcBinding;

    iget-object v0, v0, Ljcifs/dcerpc/DcerpcBinding;->uuid:Ljcifs/dcerpc/UUID;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$uuid_t;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBind;->binding:Ljcifs/dcerpc/DcerpcBinding;

    iget v0, v0, Ljcifs/dcerpc/DcerpcBinding;->major:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBind;->binding:Ljcifs/dcerpc/DcerpcBinding;

    iget v0, v0, Ljcifs/dcerpc/DcerpcBinding;->minor:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    sget-object v0, Ljcifs/dcerpc/DcerpcConstants;->DCERPC_UUID_SYNTAX_NDR:Ljcifs/dcerpc/UUID;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$uuid_t;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void
.end method

.method public getOpnum()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getResult()Ljcifs/dcerpc/DcerpcException;
    .locals 2

    iget v0, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    if-eqz v0, :cond_0

    new-instance v0, Ljcifs/dcerpc/DcerpcException;

    iget v1, p0, Ljcifs/dcerpc/DcerpcMessage;->result:I

    invoke-static {v1}, Ljcifs/dcerpc/DcerpcBind;->getResultMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
