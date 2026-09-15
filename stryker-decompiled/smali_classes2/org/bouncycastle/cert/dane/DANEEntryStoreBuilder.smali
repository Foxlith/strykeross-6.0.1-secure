.class public Lorg/bouncycastle/cert/dane/DANEEntryStoreBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final daneEntryFetcher:Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/dane/DANEEntryStoreBuilder;->daneEntryFetcher:Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;

    return-void
.end method


# virtual methods
.method public build(Ljava/lang/String;)Lorg/bouncycastle/cert/dane/DANEEntryStore;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cert/dane/DANEEntryStore;

    iget-object v1, p0, Lorg/bouncycastle/cert/dane/DANEEntryStoreBuilder;->daneEntryFetcher:Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;

    invoke-interface {v1, p1}, Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;->build(Ljava/lang/String;)Lorg/bouncycastle/cert/dane/DANEEntryFetcher;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/cert/dane/DANEEntryFetcher;->getEntries()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/dane/DANEEntryStore;-><init>(Ljava/util/List;)V

    return-object v0
.end method
