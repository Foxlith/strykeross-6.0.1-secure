.class Ljcifs/smb/Trans2GetDfsReferralResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;
    }
.end annotation


# instance fields
.field flags:I

.field numReferrals:I

.field pathConsumed:I

.field referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    const/16 v0, 0x10

    iput-byte v0, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .locals 4

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    add-int/lit8 v1, p2, 0x2

    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    :cond_0
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->flags:I

    add-int/lit8 v0, p2, 0x8

    iget v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    new-array v1, v1, [Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    iput-object v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    new-instance v3, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    invoke-direct {v3, p0}, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;-><init>(Ljcifs/smb/Trans2GetDfsReferralResponse;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, v0, p3}, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->readWireFormat([BII)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method

.method public readParametersWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public readSetupWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Trans2GetDfsReferralResponse["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",pathConsumed="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",numReferrals="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ",flags="

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse;->flags:I

    .line 43
    .line 44
    const-string v3, "]"

    .line 45
    .line 46
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeSetupWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
