.class public abstract Linet/ipaddr/format/validate/ParsedAddressCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


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
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCaches()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Linet/ipaddr/format/validate/Validator;->MASK_CACHE:[[Linet/ipaddr/format/validate/IPAddressProvider$MaskCreator;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract createAddressInternal(Linet/ipaddr/AddressSection;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Linet/ipaddr/HostIdentifierString;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createAddressInternal(Linet/ipaddr/AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/CharSequence;",
            "Linet/ipaddr/HostIdentifierString;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createAddressInternal(Linet/ipaddr/AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/Address;Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/CharSequence;",
            "Linet/ipaddr/HostIdentifierString;",
            "TT;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract createAddressInternal([BLjava/lang/CharSequence;)Linet/ipaddr/Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation
.end method

.method public createAddressInternal([Linet/ipaddr/AddressSegment;Linet/ipaddr/HostIdentifierString;Ljava/lang/Integer;)Linet/ipaddr/Address;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;",
            "Linet/ipaddr/HostIdentifierString;",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createAddressInternal(Linet/ipaddr/AddressSection;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal([Linet/ipaddr/AddressSegment;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;Ljava/lang/Integer;)Linet/ipaddr/Address;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;",
            "Ljava/lang/CharSequence;",
            "Linet/ipaddr/HostIdentifierString;",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p4}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createAddressInternal(Linet/ipaddr/AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public abstract createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;",
            "Ljava/lang/Integer;",
            ")TR;"
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

.method public abstract createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;)TR;"
        }
    .end annotation
.end method

.method public createSectionInternal([Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSection;)Linet/ipaddr/AddressSection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;TE;)TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createSectionInternal([Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSection;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;TE;",
            "Ljava/lang/Integer;",
            ")TR;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p3}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createSectionInternal([Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSection;Ljava/lang/Integer;Z)Linet/ipaddr/AddressSection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;TE;",
            "Ljava/lang/Integer;",
            "Z)TR;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p3, p4}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Integer;",
            ")TS;"
        }
    .end annotation
.end method

.method public abstract createSegmentArray(I)[Linet/ipaddr/AddressSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TS;"
        }
    .end annotation
.end method

.method public abstract createSegmentInternal(IILjava/lang/Integer;Ljava/lang/CharSequence;IIZZIII)Linet/ipaddr/AddressSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            "IIZZIII)TS;"
        }
    .end annotation
.end method

.method public abstract createSegmentInternal(ILjava/lang/Integer;Ljava/lang/CharSequence;IZII)Linet/ipaddr/AddressSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            "IZII)TS;"
        }
    .end annotation
.end method

.method public abstract getMaxValuePerSegment()I
.end method

.method public setSegmentCaching(Z)V
    .locals 0

    return-void
.end method
