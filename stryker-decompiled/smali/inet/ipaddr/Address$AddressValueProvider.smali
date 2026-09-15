.class public interface abstract Linet/ipaddr/Address$AddressValueProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AddressValueProvider"
.end annotation


# virtual methods
.method public abstract getSegmentCount()I
.end method

.method public getUpperValues()Linet/ipaddr/Address$SegmentValueProvider;
    .locals 1

    invoke-interface {p0}, Linet/ipaddr/Address$AddressValueProvider;->getValues()Linet/ipaddr/Address$SegmentValueProvider;

    move-result-object v0

    return-object v0
.end method

.method public abstract getValues()Linet/ipaddr/Address$SegmentValueProvider;
.end method
