.class public final Ljcifs/smb/NtlmChallenge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public challenge:[B

.field public dc:Ljcifs/UniAddress;


# direct methods
.method public constructor <init>([BLjcifs/UniAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljcifs/smb/NtlmChallenge;->challenge:[B

    iput-object p2, p0, Ljcifs/smb/NtlmChallenge;->dc:Ljcifs/UniAddress;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NtlmChallenge[challenge=0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljcifs/smb/NtlmChallenge;->challenge:[B

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",dc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/NtlmChallenge;->dc:Ljcifs/UniAddress;

    invoke-virtual {v1}, Ljcifs/UniAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
