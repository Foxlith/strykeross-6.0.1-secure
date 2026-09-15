.class public interface abstract Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/AddressDivisionBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SegmentCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Linet/ipaddr/AddressSegment;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract applyAsInt(II)Linet/ipaddr/AddressSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TR;"
        }
    .end annotation
.end method
