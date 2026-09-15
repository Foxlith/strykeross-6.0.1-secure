.class public interface abstract Linet/ipaddr/HostIdentifierString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SEGMENT_VALUE_DELIMITER:C = ','


# virtual methods
.method public abstract getAddress()Linet/ipaddr/Address;
.end method

.method public abstract toAddress()Linet/ipaddr/Address;
.end method

.method public abstract toNormalizedString()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract validate()V
.end method
