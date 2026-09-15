.class public Lorg/bouncycastle/cert/dane/DANEEntryFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final selectorFactory:Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;-><init>(Lorg/bouncycastle/operator/DigestCalculator;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/dane/DANEEntryFactory;->selectorFactory:Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;

    return-void
.end method


# virtual methods
.method public createEntry(Ljava/lang/String;ILorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/dane/DANEEntry;
    .locals 2

    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/cert/dane/DANEEntryFactory;->selectorFactory:Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;->createSelector(Ljava/lang/String;)Lorg/bouncycastle/cert/dane/DANEEntrySelector;

    move-result-object p1

    new-array v0, v0, [B

    int-to-byte p2, p2

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/4 p2, 0x1

    aput-byte v1, v0, p2

    const/4 p2, 0x2

    aput-byte v1, v0, p2

    new-instance p2, Lorg/bouncycastle/cert/dane/DANEEntry;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/dane/DANEEntrySelector;->getDomainName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0, p3}, Lorg/bouncycastle/cert/dane/DANEEntry;-><init>(Ljava/lang/String;[BLorg/bouncycastle/cert/X509CertificateHolder;)V

    return-object p2

    :cond_0
    new-instance p1, Lorg/bouncycastle/cert/dane/DANEException;

    const-string p3, "unknown certificate usage: "

    .line 1
    invoke-static {p3, p2}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/dane/DANEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createEntry(Ljava/lang/String;Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/dane/DANEEntry;
    .locals 1

    .line 7
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/cert/dane/DANEEntryFactory;->createEntry(Ljava/lang/String;ILorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/dane/DANEEntry;

    move-result-object p1

    return-object p1
.end method
