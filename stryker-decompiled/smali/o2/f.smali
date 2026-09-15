.class public final synthetic Lo2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/appintro/slides/Slide3;

.field public final synthetic b:J

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/appintro/slides/Slide3;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/f;->a:Lcom/zalexdev/stryker/appintro/slides/Slide3;

    iput-wide p2, p0, Lo2/f;->b:J

    iput-wide p4, p0, Lo2/f;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lo2/f;->a:Lcom/zalexdev/stryker/appintro/slides/Slide3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->k:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-wide v2, p0, Lo2/f;->b:J

    .line 11
    .line 12
    invoke-static {v2, v3}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->f(J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v4, " \u00b7 "

    .line 20
    .line 21
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-wide v4, p0, Lo2/f;->c:J

    .line 25
    .line 26
    invoke-static {v2, v3, v4, v5}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->g(JJ)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
