.class public interface abstract Linet/ipaddr/AddressNetwork$AddressSegmentCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/AddressNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AddressSegmentCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Linet/ipaddr/AddressSegment;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createSegment(I)Linet/ipaddr/AddressSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation
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

.method public abstract createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
