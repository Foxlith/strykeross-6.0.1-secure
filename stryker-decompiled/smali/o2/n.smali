.class public final synthetic Lo2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lo2/o;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lo2/o;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/n;->a:Lo2/o;

    iput-object p2, p0, Lo2/n;->b:Ljava/lang/String;

    iput-wide p3, p0, Lo2/n;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lo2/n;->a:Lo2/o;

    .line 2
    .line 3
    iget-object v0, v0, Lo2/o;->a:Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->k:Landroid/widget/TextView;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lo2/n;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " \u00b7 "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    iget-wide v4, p0, Lo2/n;->c:J

    .line 25
    .line 26
    cmp-long v2, v4, v2

    .line 27
    .line 28
    if-gtz v2, :cond_0

    .line 29
    .line 30
    const-string v2, "0 MB"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 34
    .line 35
    long-to-double v3, v4

    .line 36
    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    .line 37
    .line 38
    div-double/2addr v3, v5

    .line 39
    div-double/2addr v3, v5

    .line 40
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "%.1f MB"

    .line 49
    .line 50
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
