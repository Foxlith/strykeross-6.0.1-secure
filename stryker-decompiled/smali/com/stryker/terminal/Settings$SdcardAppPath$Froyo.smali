.class Lcom/stryker/terminal/Settings$SdcardAppPath$Froyo;
.super Lcom/stryker/terminal/Settings$SdcardAppPath;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/Settings$SdcardAppPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Froyo"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/stryker/terminal/Settings$SdcardAppPath;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stryker/terminal/Settings$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/stryker/terminal/Settings$SdcardAppPath$Froyo;-><init>()V

    return-void
.end method


# virtual methods
.method public allPaths(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/Settings$SdcardAppPath$Froyo;->path(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bestPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/Settings$SdcardAppPath$Froyo;->path(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public path(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "/files"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/Android/data/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setEnv(Landroid/content/Context;)V
    .locals 1

    const-string p1, "UNSECURE_STORAGE_DIR_0"

    sget-object v0, Lcom/stryker/terminal/Globals;->DataDir:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/stryker/terminal/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
