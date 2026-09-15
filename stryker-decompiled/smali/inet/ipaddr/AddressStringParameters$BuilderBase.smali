.class public Linet/ipaddr/AddressStringParameters$BuilderBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/AddressStringParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderBase"
.end annotation


# instance fields
.field protected allowAll:Z

.field protected allowEmpty:Z

.field protected allowSingleSegment:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowEmpty:Z

    iput-boolean v0, p0, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowAll:Z

    iput-boolean v0, p0, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowSingleSegment:Z

    return-void
.end method


# virtual methods
.method public allowAll(Z)Linet/ipaddr/AddressStringParameters$BuilderBase;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowAll:Z

    return-object p0
.end method

.method public allowEmpty(Z)Linet/ipaddr/AddressStringParameters$BuilderBase;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowEmpty:Z

    return-object p0
.end method

.method public allowSingleSegment(Z)Linet/ipaddr/AddressStringParameters$BuilderBase;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowSingleSegment:Z

    return-object p0
.end method
