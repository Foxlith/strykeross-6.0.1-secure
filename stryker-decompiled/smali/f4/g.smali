.class public final Lf4/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lf4/e;

.field public b:Lf4/c;

.field public c:Lf4/d;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf4/g;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf4/g;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lf4/e;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lf4/e;

    const-string v1, "url"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sha256"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "size"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lf4/e;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lf4/g;
    .locals 15

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lf4/g;

    invoke-direct {p0}, Lf4/g;-><init>()V

    const-string v1, "manifest_version"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    const-string v1, "core"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v1, :cond_1

    const-string v4, "debian"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "min_version_code"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x259

    if-lt v6, v5, :cond_0

    const-string v5, "version"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "chroot64"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lf4/g;->a(Lorg/json/JSONObject;)Lf4/e;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lf4/g;->a:Lf4/e;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "rootless"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v10, Lf4/c;

    const-string v4, "qemu"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lf4/g;->a(Lorg/json/JSONObject;)Lf4/e;

    move-result-object v5

    const-string v4, "kernel"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lf4/g;->a(Lorg/json/JSONObject;)Lf4/e;

    move-result-object v6

    const-string v4, "initrd"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lf4/g;->a(Lorg/json/JSONObject;)Lf4/e;

    move-result-object v7

    const-string v4, "libslirp"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lf4/g;->a(Lorg/json/JSONObject;)Lf4/e;

    move-result-object v8

    const-string v4, "rootfs"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lf4/g;->a(Lorg/json/JSONObject;)Lf4/e;

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lf4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v10, p0, Lf4/g;->b:Lf4/c;

    :cond_2
    const-string v1, "app"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "url"

    if-eqz v1, :cond_3

    new-instance v14, Lf4/d;

    const-string v5, "versionCode"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v5, "versionName"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "sha256"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "size"

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v5, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v5, "mandatory"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v5, "changelog"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Lf4/d;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    iput-object v14, p0, Lf4/g;->c:Lf4/d;

    :cond_3
    const-string v1, "news"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v5, "id"

    const-string v6, "title"

    if-eqz v1, :cond_5

    move v7, v2

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_5

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    new-instance v9, Lcom/zalexdev/stryker/custom/News;

    invoke-direct {v9}, Lcom/zalexdev/stryker/custom/News;-><init>()V

    iget-object v10, v9, Lcom/zalexdev/stryker/custom/News;->title:Ljava/lang/String;

    invoke-virtual {v8, v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/zalexdev/stryker/custom/News;->title:Ljava/lang/String;

    const-string v10, "description"

    iget-object v11, v9, Lcom/zalexdev/stryker/custom/News;->description:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/zalexdev/stryker/custom/News;->description:Ljava/lang/String;

    const-string v10, "actionbutton1"

    invoke-virtual {v8, v10, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v9, Lcom/zalexdev/stryker/custom/News;->actionbutton1:Z

    const-string v10, "actionbutton2"

    invoke-virtual {v8, v10, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v9, Lcom/zalexdev/stryker/custom/News;->actionbutton2:Z

    const-string v10, "pinned"

    invoke-virtual {v8, v10, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v11, "pin"

    invoke-virtual {v8, v11, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v9, Lcom/zalexdev/stryker/custom/News;->pinned:Z

    const-string v10, "actionbutton1text"

    const-string v11, "Open"

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/zalexdev/stryker/custom/News;->actionbutton1text:Ljava/lang/String;

    const-string v10, "actionbutton2text"

    invoke-virtual {v8, v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/zalexdev/stryker/custom/News;->actionbutton2text:Ljava/lang/String;

    const-string v10, "actionbutton1url"

    invoke-virtual {v8, v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/zalexdev/stryker/custom/News;->actionbutton1url:Ljava/lang/String;

    const-string v10, "actionbutton2url"

    invoke-virtual {v8, v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/zalexdev/stryker/custom/News;->actionbutton2url:Ljava/lang/String;

    const-string v10, "newsUrl"

    invoke-virtual {v8, v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/zalexdev/stryker/custom/News;->newsUrl:Ljava/lang/String;

    const-string v10, "newsDate"

    invoke-virtual {v8, v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/zalexdev/stryker/custom/News;->newsDate:Ljava/lang/String;

    const-string v10, "imageUrl"

    invoke-virtual {v8, v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/zalexdev/stryker/custom/News;->imageUrl:Ljava/lang/String;

    invoke-virtual {v8, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v9, Lcom/zalexdev/stryker/custom/News;->id:I

    iget-object v8, p0, Lf4/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_5
    const-string v1, "notifications"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7

    move v1, v2

    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_7

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_6

    goto :goto_5

    :cond_6
    iget-object v8, p0, Lf4/g;->e:Ljava/util/ArrayList;

    new-instance v9, Lf4/f;

    invoke-virtual {v7, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v7, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "body"

    invoke-virtual {v7, v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v11, v10, v12, v7}, Lf4/f;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-object p0
.end method
