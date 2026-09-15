.class public Lorg/bouncycastle/cert/dane/DANECertificateFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fetcherFactory:Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;

.field private final selectorFactory:Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/dane/DANECertificateFetcher;->fetcherFactory:Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;

    new-instance p1, Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;-><init>(Lorg/bouncycastle/operator/DigestCalculator;)V

    iput-object p1, p0, Lorg/bouncycastle/cert/dane/DANECertificateFetcher;->selectorFactory:Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;

    return-void
.end method


# virtual methods
.method public fetch(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/cert/dane/DANECertificateFetcher;->selectorFactory:Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;->createSelector(Ljava/lang/String;)Lorg/bouncycastle/cert/dane/DANEEntrySelector;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cert/dane/DANECertificateFetcher;->fetcherFactory:Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/dane/DANEEntrySelector;->getDomainName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;->build(Ljava/lang/String;)Lorg/bouncycastle/cert/dane/DANEEntryFetcher;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/cert/dane/DANEEntryFetcher;->getEntries()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cert/dane/DANEEntry;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/cert/dane/DANEEntrySelector;->match(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/cert/dane/DANEEntry;->getCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
