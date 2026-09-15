.class public Linet/ipaddr/HostNameException;
.super Linet/ipaddr/HostIdentifierException;
.source "SourceFile"


# static fields
.field private static errorMessage:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x4L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ipaddress.host.error"

    invoke-static {v0}, Linet/ipaddr/HostIdentifierException;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linet/ipaddr/HostNameException;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const-string v0, " "

    .line 1
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Linet/ipaddr/HostNameException;->errorMessage:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ipaddress.host.error.invalid.character.at.index"

    invoke-static {v0}, Linet/ipaddr/HostIdentifierException;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Linet/ipaddr/HostIdentifierException;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 2

    const-string v0, " "

    .line 7
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Linet/ipaddr/HostNameException;->errorMessage:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ipaddress.host.error.invalid.character.at.index"

    invoke-static {v0}, Linet/ipaddr/HostIdentifierException;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Linet/ipaddr/HostIdentifierException;-><init>(Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Linet/ipaddr/AddressStringException;Ljava/lang/String;)V
    .locals 1

    .line 13
    sget-object v0, Linet/ipaddr/HostNameException;->errorMessage:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3, p2}, Linet/ipaddr/HostIdentifierException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    sget-object v0, Linet/ipaddr/HostNameException;->errorMessage:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Linet/ipaddr/HostIdentifierException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
