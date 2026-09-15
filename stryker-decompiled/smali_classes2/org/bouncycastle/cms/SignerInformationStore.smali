.class public Lorg/bouncycastle/cms/SignerInformationStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/Iterable<",
        "Lorg/bouncycastle/cms/SignerInformation;",
        ">;"
    }
.end annotation


# instance fields
.field private all:Ljava/util/List;

.field private table:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/cms/SignerInformation;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformationStore;->all:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v1}, Lorg/bouncycastle/cms/SignerInformation;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Lorg/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformationStore;->all:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/SignerInformation;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformationStore;->all:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformationStore;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformationStore;->all:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Lorg/bouncycastle/cms/SignerId;)Lorg/bouncycastle/cms/SignerInformation;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners(Lorg/bouncycastle/cms/SignerId;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/cms/SignerInformation;

    :goto_0
    return-object p1
.end method

.method public getSigners()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/cms/SignerInformation;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformationStore;->all:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSigners(Lorg/bouncycastle/cms/SignerId;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/cms/SignerId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/cms/SignerInformation;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerId;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerId;->getSubjectKeyIdentifier()[B

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/bouncycastle/cms/SignerId;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerId;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/cms/SignerId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners(Lorg/bouncycastle/cms/SignerId;)Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v1, Lorg/bouncycastle/cms/SignerId;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerId;->getSubjectKeyIdentifier()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/SignerId;-><init>([B)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners(Lorg/bouncycastle/cms/SignerId;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/bouncycastle/cms/SignerInformation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformationStore;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
