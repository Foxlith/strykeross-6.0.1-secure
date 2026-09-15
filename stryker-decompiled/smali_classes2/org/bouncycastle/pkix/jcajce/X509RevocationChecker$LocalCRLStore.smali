.class Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jcajce/PKIXCRLStore;
.implements Lorg/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalCRLStore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/jcajce/PKIXCRLStore<",
        "Ljava/security/cert/CRL;",
        ">;",
        "Lorg/bouncycastle/util/Iterable<",
        "Ljava/security/cert/CRL;",
        ">;"
    }
.end annotation


# instance fields
.field private _local:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;Lorg/bouncycastle/util/Store;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Store<",
            "Ljava/security/cert/CRL;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;->this$0:Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;->_local:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Selector<",
            "Ljava/security/cert/CRL;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;->_local:Ljava/util/Collection;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;->_local:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/CRL;

    invoke-interface {p1, v2}, Lorg/bouncycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
