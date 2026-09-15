.class public Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;
.super Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;-><init>()V

    const/16 v1, 0x1f6

    invoke-direct {p0, p1, p2, v1, v0}, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjcifs/dcerpc/ndr/NdrObject;)V

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    const/4 p1, 0x3

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    return-void
.end method


# virtual methods
.method public getSecurity()[Ljcifs/smb/ACE;
    .locals 4

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    check-cast v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;

    iget-object v1, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    if-eqz v1, :cond_0

    new-instance v2, Ljcifs/smb/SecurityDescriptor;

    const/4 v3, 0x0

    iget v0, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    invoke-direct {v2, v1, v3, v0}, Ljcifs/smb/SecurityDescriptor;-><init>([BII)V

    iget-object v0, v2, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
