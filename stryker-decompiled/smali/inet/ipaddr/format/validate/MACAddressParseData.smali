.class Linet/ipaddr/format/validate/MACAddressParseData;
.super Linet/ipaddr/format/validate/AddressParseData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private format:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

.field private isDoubleSegment:Z

.field private isExtended:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Linet/ipaddr/format/validate/AddressParseData;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;
    .locals 0

    return-object p0
.end method

.method public getFormat()Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/MACAddressParseData;->format:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    return-object v0
.end method

.method public isDoubleSegment()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/validate/MACAddressParseData;->isDoubleSegment:Z

    return v0
.end method

.method public isExtended()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/validate/MACAddressParseData;->isExtended:Z

    return v0
.end method

.method public setDoubleSegment(Z)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/validate/MACAddressParseData;->isDoubleSegment:Z

    return-void
.end method

.method public setExtended(Z)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/validate/MACAddressParseData;->isExtended:Z

    return-void
.end method

.method public setFormat(Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/validate/MACAddressParseData;->format:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Linet/ipaddr/format/validate/MACAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linet/ipaddr/format/validate/MACAddressParseData;->isDoubleSegment()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "is double segment\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "bit length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linet/ipaddr/format/validate/MACAddressParseData;->isExtended()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x40

    goto :goto_0

    :cond_1
    const/16 v1, 0x30

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linet/ipaddr/format/validate/MACAddressParseData;->getFormat()Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
