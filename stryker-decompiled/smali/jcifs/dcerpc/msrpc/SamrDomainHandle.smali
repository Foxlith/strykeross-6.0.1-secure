.class public Ljcifs/dcerpc/msrpc/SamrDomainHandle;
.super Ljcifs/dcerpc/rpc$policy_handle;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;)V
    .locals 1

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$policy_handle;-><init>()V

    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;

    invoke-direct {v0, p2, p3, p4, p0}, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;-><init>(Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;Ljcifs/dcerpc/msrpc/SamrDomainHandle;)V

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget p1, v0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->retval:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljcifs/smb/SmbException;

    iget p2, v0, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;->retval:I

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method
