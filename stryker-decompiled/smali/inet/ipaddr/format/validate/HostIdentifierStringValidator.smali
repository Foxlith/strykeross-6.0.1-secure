.class public interface abstract Linet/ipaddr/format/validate/HostIdentifierStringValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IPvFUTURE:C = 'v'

.field public static final MAX_PREFIX:I = 0x80

.field public static final MAX_PREFIX_CHARS:I

.field public static final SMTP_IPV6_IDENTIFIER:Ljava/lang/String; = "IPv6:"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Linet/ipaddr/format/validate/HostIdentifierStringValidator;->MAX_PREFIX_CHARS:I

    return-void
.end method


# virtual methods
.method public abstract validateAddress(Linet/ipaddr/IPAddressString;)Linet/ipaddr/format/validate/IPAddressProvider;
.end method

.method public abstract validateAddress(Linet/ipaddr/MACAddressString;)Linet/ipaddr/format/validate/MACAddressProvider;
.end method

.method public abstract validateHost(Linet/ipaddr/HostName;)Linet/ipaddr/format/validate/ParsedHost;
.end method

.method public abstract validatePrefix(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;)I
.end method
