.class public Lcom/zalexdev/stryker/custom/News;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public actionbutton1:Z

.field public actionbutton1text:Ljava/lang/String;

.field public actionbutton1url:Ljava/lang/String;

.field public actionbutton2:Z

.field public actionbutton2text:Ljava/lang/String;

.field public actionbutton2url:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public id:I

.field public image:Landroid/graphics/Bitmap;

.field public imageUrl:Ljava/lang/String;

.field public newsDate:Ljava/lang/String;

.field public newsUrl:Ljava/lang/String;

.field public pinned:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "No title"

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/News;->title:Ljava/lang/String;

    const-string v0, "No description"

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/News;->description:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/custom/News;->actionbutton1:Z

    iput-boolean v0, p0, Lcom/zalexdev/stryker/custom/News;->actionbutton2:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/zalexdev/stryker/custom/News;->imageUrl:Ljava/lang/String;

    const-string v2, "Open"

    iput-object v2, p0, Lcom/zalexdev/stryker/custom/News;->actionbutton1text:Ljava/lang/String;

    iput-object v1, p0, Lcom/zalexdev/stryker/custom/News;->actionbutton2text:Ljava/lang/String;

    iput-object v1, p0, Lcom/zalexdev/stryker/custom/News;->actionbutton1url:Ljava/lang/String;

    iput-object v1, p0, Lcom/zalexdev/stryker/custom/News;->actionbutton2url:Ljava/lang/String;

    iput-object v1, p0, Lcom/zalexdev/stryker/custom/News;->newsUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/zalexdev/stryker/custom/News;->newsDate:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zalexdev/stryker/custom/News;->image:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/zalexdev/stryker/custom/News;->pinned:Z

    iput v0, p0, Lcom/zalexdev/stryker/custom/News;->id:I

    return-void
.end method


# virtual methods
.method public hasArticleLink()Z
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/News;->newsUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasImage()Z
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/News;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
