.class Lorg/osmdroid/tileprovider/cachemanager/CacheManager$2;
.super Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCleaningDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

.field final synthetic val$pCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$2;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iput-object p4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$2;->val$pCtx:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)V

    return-void
.end method


# virtual methods
.method public getUITitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$2;->val$pCtx:Landroid/content/Context;

    sget v1, Lorg/osmdroid/library/R$string;->cacheManagerCleaningTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTaskFailed(I)V
    .locals 3

    invoke-super {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->onTaskFailed(I)V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$2;->val$pCtx:Landroid/content/Context;

    sget v1, Lorg/osmdroid/library/R$string;->cacheManagerCleanFailed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
