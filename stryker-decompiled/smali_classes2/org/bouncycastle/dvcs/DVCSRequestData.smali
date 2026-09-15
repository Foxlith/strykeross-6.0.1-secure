.class public abstract Lorg/bouncycastle/dvcs/DVCSRequestData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected data:Lorg/bouncycastle/asn1/dvcs/Data;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/Data;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/dvcs/DVCSRequestData;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    return-void
.end method


# virtual methods
.method public toASN1Structure()Lorg/bouncycastle/asn1/dvcs/Data;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequestData;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    return-object v0
.end method
