.class public abstract Linet/ipaddr/format/validate/ParsedIPAddress$Masker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/ParsedIPAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Masker"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final isSequential:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential:Z

    return-void
.end method


# virtual methods
.method public getMaskedLower(JJ)J
    .locals 0

    and-long/2addr p1, p3

    return-wide p1
.end method

.method public getMaskedUpper(JJ)J
    .locals 0

    and-long/2addr p1, p3

    return-wide p1
.end method

.method public isSequential()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential:Z

    return v0
.end method
