.class Linet/ipaddr/IPAddressString$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/IPAddressString;->iterator(Ljava/util/List;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private done:Z

.field private nextSet:[Ljava/lang/String;

.field final partCount:I

.field final synthetic val$parts:Ljava/util/List;

.field private final variations:[Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Linet/ipaddr/IPAddressString$2;->val$parts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Linet/ipaddr/IPAddressString$2;->partCount:I

    new-array v0, p1, [Ljava/util/Iterator;

    iput-object v0, p0, Linet/ipaddr/IPAddressString$2;->variations:[Ljava/util/Iterator;

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Linet/ipaddr/IPAddressString$2;->nextSet:[Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressString$2;->updateVariations(I)V

    return-void
.end method

.method private increment()V
    .locals 4

    iget v0, p0, Linet/ipaddr/IPAddressString$2;->partCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Linet/ipaddr/IPAddressString$2;->variations:[Ljava/util/Iterator;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Linet/ipaddr/IPAddressString$2;->nextSet:[Ljava/lang/String;

    iget-object v3, p0, Linet/ipaddr/IPAddressString$2;->variations:[Ljava/util/Iterator;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Linet/ipaddr/IPAddressString$2;->updateVariations(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Linet/ipaddr/IPAddressString$2;->done:Z

    return-void
.end method

.method private updateVariations(I)V
    .locals 2

    :goto_0
    iget v0, p0, Linet/ipaddr/IPAddressString$2;->partCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressString$2;->variations:[Ljava/util/Iterator;

    iget-object v1, p0, Linet/ipaddr/IPAddressString$2;->val$parts:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    aput-object v1, v0, p1

    iget-object v0, p0, Linet/ipaddr/IPAddressString$2;->nextSet:[Ljava/lang/String;

    iget-object v1, p0, Linet/ipaddr/IPAddressString$2;->variations:[Ljava/util/Iterator;

    aget-object v1, v1, p1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/IPAddressString$2;->done:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString$2;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .line 2
    iget-boolean v0, p0, Linet/ipaddr/IPAddressString$2;->done:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Linet/ipaddr/IPAddressString$2;->partCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Linet/ipaddr/IPAddressString$2;->nextSet:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Linet/ipaddr/IPAddressString$2;->increment()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
