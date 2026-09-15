.class public Linet/ipaddr/AddressStringException;
.super Linet/ipaddr/HostIdentifierException;
.source "SourceFile"


# static fields
.field private static final errorMessage:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x4L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ipaddress.address.error"

    invoke-static {v0}, Linet/ipaddr/HostIdentifierException;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linet/ipaddr/AddressStringException;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IZ)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Linet/ipaddr/AddressStringException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string p3, "ipaddress.error.invalid.character.combination.at.index"

    goto :goto_0

    :cond_0
    const-string p3, "ipaddress.error.invalid.character.at.index"

    :goto_0
    invoke-static {p3}, Linet/ipaddr/HostIdentifierException;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/HostIdentifierException;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Linet/ipaddr/AddressStringException;->errorMessage:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Linet/ipaddr/HostIdentifierException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Linet/ipaddr/AddressStringException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Linet/ipaddr/HostIdentifierException;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/HostIdentifierException;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 5
    sget-object v0, Linet/ipaddr/AddressStringException;->errorMessage:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Linet/ipaddr/HostIdentifierException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 6
    sget-object v0, Linet/ipaddr/AddressStringException;->errorMessage:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Linet/ipaddr/HostIdentifierException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method
