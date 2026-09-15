.class public Ljcifs/dcerpc/msrpc/MsrpcSamrConnect4;
.super Ljcifs/dcerpc/msrpc/samr$SamrConnect4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/SamrPolicyHandle;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2, p3}, Ljcifs/dcerpc/msrpc/samr$SamrConnect4;-><init>(Ljava/lang/String;IILjcifs/dcerpc/rpc$policy_handle;)V

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    const/4 p1, 0x3

    iput p1, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    return-void
.end method
