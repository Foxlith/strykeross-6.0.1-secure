.class public Ljcifs/dcerpc/msrpc/LsaPolicyHandle;
.super Ljcifs/dcerpc/rpc$policy_handle;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$policy_handle;-><init>()V

    if-nez p2, :cond_0

    const-string p2, "\\\\"

    :cond_0
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;

    invoke-direct {v0, p2, p3, p0}, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;-><init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/LsaPolicyHandle;)V

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget p1, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->retval:I

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljcifs/smb/SmbException;

    iget p2, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;->retval:I

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method
