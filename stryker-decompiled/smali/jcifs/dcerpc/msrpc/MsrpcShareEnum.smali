.class public Ljcifs/dcerpc/msrpc/MsrpcShareEnum;
.super Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "\\\\"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v3, 0x1

    .line 8
    new-instance v4, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;

    .line 9
    .line 10
    invoke-direct {v4}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v5, -0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    move-object v1, p0

    .line 17
    invoke-direct/range {v1 .. v7}, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;-><init>(Ljava/lang/String;ILjcifs/dcerpc/ndr/NdrObject;III)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 22
    .line 23
    const/4 p1, 0x3

    .line 24
    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public getEntries()[Ljcifs/smb/FileEntry;
    .locals 5

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->info:Ljcifs/dcerpc/ndr/NdrObject;

    check-cast v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;

    iget v1, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->count:I

    new-array v1, v1, [Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->count:I

    if-ge v2, v3, :cond_0

    new-instance v3, Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;

    iget-object v4, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    aget-object v4, v4, v2

    invoke-direct {v3, p0, v4}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;-><init>(Ljcifs/dcerpc/msrpc/MsrpcShareEnum;Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
