.class public Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;
.super Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/LsaPolicyHandle;)V
    .locals 1

    new-instance v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;-><init>(Ljava/lang/String;Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;ILjcifs/dcerpc/rpc$policy_handle;)V

    iget-object p1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->object_attributes:Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    const/16 p2, 0x18

    iput p2, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->length:I

    new-instance p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    invoke-direct {p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;-><init>()V

    const/16 p2, 0xc

    iput p2, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->length:I

    const/4 p2, 0x2

    iput-short p2, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->impersonation_level:S

    const/4 p2, 0x1

    iput-byte p2, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->context_mode:B

    const/4 p2, 0x0

    iput-byte p2, p1, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->effective_only:B

    iget-object p3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->object_attributes:Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    iput-object p1, p3, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    iput p2, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    const/4 p1, 0x3

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    return-void
.end method
