.class public final Lv3/i;
.super Ll4/c;
.source "SourceFile"


# instance fields
.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:Lcom/zalexdev/stryker/macchanger/MACChangerInline;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/macchanger/MACChangerInline;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv3/i;->u:Lcom/zalexdev/stryker/macchanger/MACChangerInline;

    iput-object p5, p0, Lv3/i;->s:Ljava/lang/String;

    iput-object p6, p0, Lv3/i;->t:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p4, p1}, Ll4/c;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    iget-object v2, p0, Ll4/c;->d:Ll4/l;

    if-lt v0, v1, :cond_0

    iget-object p1, p0, Ll4/c;->a:Landroid/app/Activity;

    const-string v0, "Need to connect to network. Waiting 10 seconds..."

    invoke-virtual {v2, p1, v0}, Ll4/l;->q0(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lv3/h;

    const/4 v1, 0x0

    iget-object v2, p0, Lv3/i;->s:Ljava/lang/String;

    iget-object v3, p0, Lv3/i;->t:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Lv3/h;-><init>(Lv3/i;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_0
    const-string v0, "successfully changed"

    invoke-static {p1, v0}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "MAC address successful changed."

    :goto_0
    invoke-virtual {v2, p1}, Ll4/l;->r0(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "Failed to change MAC address."

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lv3/i;->u:Lcom/zalexdev/stryker/macchanger/MACChangerInline;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "MAC address format error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Ll4/c;->d:Ll4/l;

    if-eqz v0, :cond_0

    const-string p1, "MAC address format error."

    invoke-virtual {v1, p1}, Ll4/l;->r0(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Ll4/c;->c:Ljava/lang/Process;

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto :goto_3

    :cond_0
    const-string v0, "Changing MAC address"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Changing MAC address..."

    :goto_1
    invoke-virtual {v1, p1}, Ll4/l;->r0(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const-string v0, "Wait about 5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string v0, "Failed to change"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    goto :goto_0

    :cond_3
    const-string v0, "successfully changed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "address changed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method
