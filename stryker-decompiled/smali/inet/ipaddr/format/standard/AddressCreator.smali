.class public abstract Linet/ipaddr/format/standard/AddressCreator;
.super Linet/ipaddr/format/validate/ParsedAddressCreator;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/AddressNetwork$AddressSegmentCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linet/ipaddr/Address;",
        "R::",
        "Linet/ipaddr/AddressSection;",
        "E::",
        "Linet/ipaddr/AddressSection;",
        "S::",
        "Linet/ipaddr/AddressSegment;",
        ">",
        "Linet/ipaddr/format/validate/ParsedAddressCreator<",
        "TT;TR;TE;TS;>;",
        "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedAddressCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createAddress(Linet/ipaddr/AddressSection;)Linet/ipaddr/Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TT;"
        }
    .end annotation
.end method

.method public abstract createAddressInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;)TT;"
        }
    .end annotation
.end method

.method public abstract createAddressInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createAddressInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;",
            "Ljava/lang/Integer;",
            "Z)TT;"
        }
    .end annotation
.end method

.method public abstract createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/AddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;",
            "Ljava/lang/Integer;",
            "Z)TR;"
        }
    .end annotation
.end method

.method public abstract createSectionInternal([BILjava/lang/Integer;Z)Linet/ipaddr/AddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/lang/Integer;",
            "Z)TR;"
        }
    .end annotation
.end method

.method public abstract createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;)TR;"
        }
    .end annotation
.end method

.method public abstract createSectionInternal([Linet/ipaddr/AddressSegment;IZ)Linet/ipaddr/AddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;IZ)TR;"
        }
    .end annotation
.end method

.method public abstract getNetwork()Linet/ipaddr/AddressNetwork;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/AddressNetwork<",
            "TS;>;"
        }
    .end annotation
.end method
