.class public Lcom/zalexdev/stryker/custom/Site;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ip:Ljava/lang/String;

.field public nucleis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zalexdev/stryker/custom/NucleiItem;",
            ">;"
        }
    .end annotation
.end field

.field public pid:Ljava/lang/String;

.field public progress:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public vulnsCount:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zalexdev/stryker/custom/Site;->nucleis:Ljava/util/ArrayList;

    const/4 v1, 0x0

    filled-new-array {v1, v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/zalexdev/stryker/custom/Site;->vulnsCount:[I

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/Site;->pid:Ljava/lang/String;

    return-void
.end method

.method public static parseItem(Ljava/lang/String;)Lcom/zalexdev/stryker/custom/Site;
    .locals 7

    const-string v0, "ip"

    const-string v1, "status"

    new-instance v2, Lcom/zalexdev/stryker/custom/Site;

    invoke-direct {v2}, Lcom/zalexdev/stryker/custom/Site;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "url"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/zalexdev/stryker/custom/Site;->url:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    iput-object p0, v2, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_0
    const-string p0, "Scheduled..."

    goto :goto_0

    :goto_1
    const-string p0, "progress"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    const-string p0, "vulnsCount"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    move v4, v1

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, v2, Lcom/zalexdev/stryker/custom/Site;->vulnsCount:[I

    array-length v6, v5

    if-ge v4, v6, :cond_1

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    const-string p0, "vulns"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    :goto_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, v2, Lcom/zalexdev/stryker/custom/Site;->nucleis:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zalexdev/stryker/custom/NucleiItem;->parseItem(Ljava/lang/String;)Lcom/zalexdev/stryker/custom/NucleiItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    const-string p0, "pid"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/zalexdev/stryker/custom/Site;->pid:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/zalexdev/stryker/custom/Site;->ip:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_5
    return-object v2
.end method


# virtual methods
.method public addNuclei(Lcom/zalexdev/stryker/custom/NucleiItem;)V
    .locals 5

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Site;->nucleis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zalexdev/stryker/custom/NucleiItem;

    iget-object v3, p1, Lcom/zalexdev/stryker/custom/NucleiItem;->title:Ljava/lang/String;

    iget-object v4, v1, Lcom/zalexdev/stryker/custom/NucleiItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/zalexdev/stryker/custom/NucleiItem;->host:Ljava/lang/String;

    iget-object v1, v1, Lcom/zalexdev/stryker/custom/NucleiItem;->host:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v1, p1, Lcom/zalexdev/stryker/custom/NucleiItem;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    iget v0, p1, Lcom/zalexdev/stryker/custom/NucleiItem;->severity:I

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/zalexdev/stryker/custom/Site;->vulnsCount:[I

    array-length v3, v1

    if-ge v0, v3, :cond_3

    aget v3, v1, v0

    add-int/2addr v3, v2

    aput v3, v1, v0

    :cond_3
    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Site;->nucleis:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Site;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getJSON()Ljava/lang/String;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "url"

    iget-object v2, p0, Lcom/zalexdev/stryker/custom/Site;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ip"

    iget-object v2, p0, Lcom/zalexdev/stryker/custom/Site;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status"

    iget-object v2, p0, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/zalexdev/stryker/custom/Site;->nucleis:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zalexdev/stryker/custom/NucleiItem;

    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/NucleiItem;->getJSON()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    const-string v2, "vulns"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "progress"

    iget-object v2, p0, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/zalexdev/stryker/custom/Site;->vulnsCount:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "pid"

    iget-object v3, p0, Lcom/zalexdev/stryker/custom/Site;->pid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "vulnsCount"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNuclei(Lcom/zalexdev/stryker/custom/NucleiItem;)V
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Site;->nucleis:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getNucleis()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zalexdev/stryker/custom/NucleiItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Site;->nucleis:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Site;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Site;->ip:Ljava/lang/String;

    return-void
.end method

.method public setNucleis(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zalexdev/stryker/custom/NucleiItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Site;->nucleis:Ljava/util/ArrayList;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Site;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Site{url=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zalexdev/stryker/custom/Site;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zalexdev/stryker/custom/Site;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', nucleis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zalexdev/stryker/custom/Site;->nucleis:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vulnsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zalexdev/stryker/custom/Site;->vulnsCount:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
