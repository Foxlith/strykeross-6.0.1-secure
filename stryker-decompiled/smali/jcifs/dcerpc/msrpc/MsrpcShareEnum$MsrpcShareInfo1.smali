.class Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;
.super Ljcifs/smb/SmbShareInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/MsrpcShareEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsrpcShareInfo1"
.end annotation


# instance fields
.field final synthetic this$0:Ljcifs/dcerpc/msrpc/MsrpcShareEnum;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/MsrpcShareEnum;Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;)V
    .locals 0

    iput-object p1, p0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;->this$0:Ljcifs/dcerpc/msrpc/MsrpcShareEnum;

    invoke-direct {p0}, Ljcifs/smb/SmbShareInfo;-><init>()V

    iget-object p1, p2, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->netname:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    iget p1, p2, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->type:I

    iput p1, p0, Ljcifs/smb/SmbShareInfo;->type:I

    iget-object p1, p2, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;->remark:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/SmbShareInfo;->remark:Ljava/lang/String;

    return-void
.end method
