.class Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cert/dane/DANEEntryFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory;->build(Ljava/lang/String;)Lorg/bouncycastle/cert/dane/DANEEntryFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory;

.field final synthetic val$domainName:Ljava/lang/String;

.field final synthetic val$env:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory$1;->this$0:Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory;

    iput-object p2, p0, Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory$1;->val$env:Ljava/util/Hashtable;

    iput-object p3, p0, Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory$1;->val$domainName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntries()Ljava/util/List;
    .locals 9

    const-string v0, "_smimecert."

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Ljavax/naming/directory/InitialDirContext;

    iget-object v3, p0, Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory$1;->val$env:Ljava/util/Hashtable;

    invoke-direct {v2, v3}, Ljavax/naming/directory/InitialDirContext;-><init>(Ljava/util/Hashtable;)V

    iget-object v3, p0, Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory$1;->val$domainName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    const-string v5, "53"

    const/4 v6, 0x1

    if-lez v3, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory$1;->val$domainName:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v2, v0, v3}, Ljavax/naming/directory/DirContext;->getAttributes(Ljava/lang/String;[Ljava/lang/String;)Ljavax/naming/directory/Attributes;

    move-result-object v0

    invoke-interface {v0, v5}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory$1;->this$0:Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory;

    iget-object v3, p0, Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory$1;->val$domainName:Ljava/lang/String;

    invoke-static {v2, v1, v3, v0}, Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory;->access$000(Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory;Ljava/util/List;Ljava/lang/String;Ljavax/naming/directory/Attribute;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory$1;->val$domainName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljavax/naming/directory/DirContext;->listBindings(Ljava/lang/String;)Ljavax/naming/NamingEnumeration;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/naming/Binding;

    invoke-virtual {v3}, Ljavax/naming/Binding;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/naming/directory/DirContext;

    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->getNameInNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->getNameInNamespace()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/String;

    aput-object v5, v8, v4

    invoke-interface {v2, v7, v8}, Ljavax/naming/directory/DirContext;->getAttributes(Ljava/lang/String;[Ljava/lang/String;)Ljavax/naming/directory/Attributes;

    move-result-object v7

    invoke-interface {v7, v5}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->getNameInNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory$1;->this$0:Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory;

    invoke-static {v8, v1, v3, v7}, Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory;->access$000(Lorg/bouncycastle/cert/dane/fetcher/JndiDANEFetcherFactory;Ljava/util/List;Ljava/lang/String;Ljavax/naming/directory/Attribute;)V
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1

    :goto_2
    new-instance v1, Lorg/bouncycastle/cert/dane/DANEException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception dealing with DNS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/naming/NamingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/dane/DANEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
