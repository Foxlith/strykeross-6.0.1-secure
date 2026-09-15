.class public final synthetic Linet/ipaddr/mac/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/standard/AddressDivisionGrouping$SegPrefFunction;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Linet/ipaddr/mac/g;->a:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/mac/g;->a:Z

    check-cast p1, Linet/ipaddr/mac/MACAddressSegment;

    invoke-static {v0, p1, p2, p3}, Linet/ipaddr/mac/MACAddressSection;->F(ZLinet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;Ljava/lang/Integer;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method
