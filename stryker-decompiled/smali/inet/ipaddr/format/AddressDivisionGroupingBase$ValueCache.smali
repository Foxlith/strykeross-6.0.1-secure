.class public Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/AddressDivisionGroupingBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueCache"
.end annotation


# instance fields
.field public inetAddress:Ljava/net/InetAddress;

.field public lowerBytes:[B

.field public upperBytes:[B

.field public upperValue:Ljava/math/BigInteger;

.field public value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
