.class Linet/ipaddr/format/validate/ParsedIPAddress$1;
.super Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/format/validate/ParsedIPAddress;->createIPv4Addresses(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult<",
        "Linet/ipaddr/ipv4/IPv4Address;",
        "Linet/ipaddr/ipv4/IPv4AddressSection;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Linet/ipaddr/format/validate/ParsedIPAddress;


# direct methods
.method public constructor <init>(Linet/ipaddr/format/validate/ParsedIPAddress;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$1;->this$0:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-direct {p0, p1}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;-><init>(Linet/ipaddr/format/validate/ParsedIPAddress;)V

    return-void
.end method


# virtual methods
.method public getCreator()Linet/ipaddr/format/validate/ParsedAddressCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/validate/ParsedAddressCreator<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$1;->this$0:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress;->access$800(Linet/ipaddr/format/validate/ParsedIPAddress;)Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    return-object v0
.end method
