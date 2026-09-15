.class Lcom/topjohnwu/superuser/internal/StreamGobbler$OUT;
.super Lcom/topjohnwu/superuser/internal/StreamGobbler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/topjohnwu/superuser/internal/StreamGobbler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OUT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/topjohnwu/superuser/internal/StreamGobbler<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final NO_RESULT_CODE:I = 0x1


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/StreamGobbler;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 2

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/internal/StreamGobbler;->process(Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/StreamGobbler$OUT;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
