.class public final synthetic Lo2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/appintro/slides/Slide3;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/appintro/slides/Slide3;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lo2/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lo2/c;->b:Lcom/zalexdev/stryker/appintro/slides/Slide3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 36

    move-object/from16 v0, p0

    iget v1, v0, Lo2/c;->a:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lo2/c;->b:Lcom/zalexdev/stryker/appintro/slides/Slide3;

    .line 1
    iget-object v4, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v4, v3}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    iget-object v4, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->t:Lcom/google/android/material/button/MaterialButton;

    const v4, 0x7f130680

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->t:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_0
    iget-object v1, v0, Lo2/c;->b:Lcom/zalexdev/stryker/appintro/slides/Slide3;

    .line 2
    iget-object v2, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v2, v4}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    iget-object v2, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->k:Landroid/widget/TextView;

    const-string v2, "Connecting..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    iget-object v1, v0, Lo2/c;->b:Lcom/zalexdev/stryker/appintro/slides/Slide3;

    .line 3
    iget-object v2, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->u:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo2/h;

    sget-object v4, Lo2/g;->a:Lo2/g;

    invoke-virtual {v1, v3, v4}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->d(Lo2/h;Lo2/g;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_2
    iget-object v1, v0, Lo2/c;->b:Lcom/zalexdev/stryker/appintro/slides/Slide3;

    .line 4
    iget-object v2, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    iget-object v1, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ll4/l;->Y(Landroidx/viewpager2/widget/ViewPager2;)V

    return-void

    :pswitch_3
    iget-object v1, v0, Lo2/c;->b:Lcom/zalexdev/stryker/appintro/slides/Slide3;

    .line 5
    iget-object v1, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v1, v4}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    return-void

    :pswitch_4
    iget-object v1, v0, Lo2/c;->b:Lcom/zalexdev/stryker/appintro/slides/Slide3;

    .line 6
    iget-object v1, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_5
    iget-object v1, v0, Lo2/c;->b:Lcom/zalexdev/stryker/appintro/slides/Slide3;

    .line 7
    sget v5, Lcom/zalexdev/stryker/appintro/slides/Slide3;->z:I

    sget-object v5, Ln2/a;->b:Ln2/a;

    sget-object v6, Lo2/g;->b:Lo2/g;

    .line 8
    invoke-virtual {v1, v5, v6}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    sget-object v7, Ln2/e;->b:Ln2/e;

    const-string v8, "Preparing storage layout"

    invoke-virtual {v1, v7, v8}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    .line 9
    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    const-string v9, "/data/data/com.zalexdev.stryker/files/"

    invoke-virtual {v8, v9}, Ll4/l;->i(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll4/l;->J()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/Stryker/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ll4/l;->m(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    const-string v9, "/data/local/stryker"

    invoke-virtual {v8, v9}, Ll4/l;->m(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    const-string v9, "/data/local/stryker/release"

    invoke-virtual {v8, v9}, Ll4/l;->W(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v4

    sget-object v10, Ln2/e;->e:Ln2/e;

    sget-object v11, Lo2/g;->d:Lo2/g;

    const/4 v12, 0x3

    const-string v14, "/data/local/stryker/release/bin"

    if-nez v8, :cond_1

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    invoke-virtual {v8}, Ll4/l;->Q()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    invoke-virtual {v8, v14}, Ll4/l;->d(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_1
    const-string v8, "Removing the previous Linux system"

    invoke-virtual {v1, v7, v8}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    .line 10
    iget-object v15, v8, Ll4/l;->f:Lu3/g;

    const-string v3, "Removing the previous chroot"

    .line 11
    invoke-virtual {v15, v4, v3}, Lu3/g;->e(ILjava/lang/String;)V

    invoke-virtual {v8}, Ll4/l;->s0()Ljava/lang/Boolean;

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    invoke-virtual {v8, v9}, Ll4/l;->W(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-wide/16 v16, 0x1f4

    :try_start_0
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    invoke-virtual {v8, v9}, Ll4/l;->i0(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v2, "Could not unmount the old chroot \u2014 refusing to delete it"

    invoke-virtual {v15, v12, v2}, Lu3/g;->e(ILjava/lang/String;)V

    goto :goto_5

    :cond_3
    invoke-virtual {v8, v14}, Ll4/l;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "/data/local/stryker/release/usr"

    invoke-virtual {v8, v3}, Ll4/l;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_5

    const-string v4, "Previous chroot removed"

    goto :goto_3

    :cond_5
    const-string v4, "Previous chroot could not be removed"

    :goto_3
    if-eqz v3, :cond_6

    const/4 v8, 0x2

    goto :goto_4

    :cond_6
    move v8, v12

    :goto_4
    invoke-virtual {v15, v8, v4}, Lu3/g;->e(ILjava/lang/String;)V

    if-nez v3, :cond_7

    :goto_5
    const-string v2, "The previous chroot is still mounted \u2014 refusing to install over it. Reboot the device and try again."

    .line 12
    invoke-virtual {v1, v10, v2}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, v5, v11}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    const-string v2, "The previous Linux system is still mounted and could not be detached \u2014 reboot the device and run the install again"

    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->e(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 14
    :cond_7
    iget-object v3, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll4/l;->J()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Stryker/release"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ll4/l;->s(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll4/l;->J()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Download/stryker.apk"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ll4/l;->s(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll4/l;->J()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Stryker"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ll4/l;->m(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll4/l;->J()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Stryker/hs"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ll4/l;->m(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll4/l;->J()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Stryker/captured"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ll4/l;->m(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll4/l;->J()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Stryker/exploits"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ll4/l;->m(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll4/l;->J()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Stryker/wordlists"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ll4/l;->m(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll4/l;->J()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Stryker/reports"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ll4/l;->m(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll4/l;->J()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Stryker/rs"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ll4/l;->m(Ljava/lang/String;)V

    sget-object v3, Lo2/g;->c:Lo2/g;

    .line 15
    invoke-virtual {v1, v5, v3}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    sget-object v9, Ln2/e;->c:Ln2/e;

    const-string v4, "Storage layout ready"

    invoke-virtual {v1, v9, v4}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->b:Landroid/content/Context;

    .line 16
    invoke-static {v4}, Li5/a;->N(Landroid/content/Context;)Lf4/g;

    move-result-object v4

    const-string v5, ""

    const-wide/16 v14, 0x0

    if-eqz v4, :cond_8

    iget-object v8, v4, Lf4/g;->a:Lf4/e;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lf4/e;->a()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v4, v4, Lf4/g;->a:Lf4/e;

    goto :goto_6

    :cond_8
    new-instance v4, Lf4/e;

    const-string v8, "https://github.com/zalexdev/strykerapp/releases/download/chroot-main/chroot64-debian.tar.gz"

    invoke-direct {v4, v8, v5, v14, v15}, Lf4/e;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_6
    sget-object v8, Ln2/a;->c:Ln2/a;

    .line 17
    invoke-virtual {v1, v8, v6}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    sget-object v12, Ln2/e;->f:Ln2/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v13, "GET "

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v4, Lf4/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    move-object v2, v12

    iget-wide v12, v4, Lf4/e;->c:J

    cmp-long v12, v12, v14

    sget-object v13, Ln2/e;->a:Ln2/e;

    if-lez v12, :cond_9

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "Debian rootfs archive \u00b7 "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v14, v4, Lf4/e;->c:J

    invoke-static {v14, v15}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->f(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v13, v12}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    .line 18
    :cond_9
    new-instance v12, Lo2/c;

    const/4 v14, 0x5

    invoke-direct {v12, v1, v14}, Lo2/c;-><init>(Lcom/zalexdev/stryker/appintro/slides/Slide3;I)V

    invoke-virtual {v1, v12}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j(Ljava/lang/Runnable;)V

    new-instance v12, Lv/z;

    iget-object v14, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->b:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v0, 0x7f1304c4

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v14, v15}, Lv/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v14, 0x2

    .line 19
    invoke-virtual {v12, v14}, Lv/z;->e(I)V

    .line 20
    iget-object v14, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->b:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v12, Lv/z;->e:Ljava/lang/CharSequence;

    .line 22
    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v14, 0x7f1301a5

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v12, Lv/z;->f:Ljava/lang/CharSequence;

    iget-object v0, v12, Lv/z;->s:Landroid/app/Notification;

    const v14, 0x7f08009b

    .line 24
    iput v14, v0, Landroid/app/Notification;->icon:I

    const/16 v0, 0x8

    .line 25
    invoke-virtual {v12, v0}, Lv/z;->e(I)V

    const/16 v0, 0x64

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 26
    invoke-virtual {v12, v0, v14, v15}, Lv/z;->f(IIZ)V

    iput-object v12, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->v:Lv/z;

    iget-object v14, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->w:Landroid/app/NotificationManager;

    invoke-virtual {v12}, Lv/z;->a()Landroid/app/Notification;

    move-result-object v12

    const/16 v15, 0x22

    invoke-virtual {v14, v15, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v12, Ljava/io/File;

    const-string v14, "/data/data/com.zalexdev.stryker/files/chroot64-debian.tar.gz"

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v13

    move-object/from16 v26, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->x:J

    const/4 v13, -0x1

    filled-new-array {v13}, [I

    move-result-object v13

    const/4 v14, 0x1

    new-array v0, v14, [J

    const/4 v14, 0x0

    const-wide/16 v18, 0x0

    aput-wide v18, v0, v14

    iget-object v14, v4, Lf4/e;->a:Ljava/lang/String;

    iget-object v15, v4, Lf4/e;->b:Ljava/lang/String;

    move-object/from16 v27, v5

    move-object/from16 v19, v6

    iget-wide v5, v4, Lf4/e;->c:J

    move-object/from16 v28, v2

    new-instance v2, Lo2/d;

    invoke-direct {v2, v1, v0, v13}, Lo2/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v20, v14

    move-object/from16 v21, v12

    move-object/from16 v22, v15

    move-wide/from16 v23, v5

    move-object/from16 v25, v2

    invoke-static/range {v20 .. v25}, Lf4/j;->d(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLf4/h;)Lf4/i;

    move-result-object v0

    iget-boolean v2, v0, Lf4/i;->a:Z

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Download: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lf4/i;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, v8, v11}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->w:Landroid/app/NotificationManager;

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v0, "Download failed \u2014 check internet connection"

    :goto_7
    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->e(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 28
    :cond_a
    iget-object v0, v4, Lf4/e;->b:Ljava/lang/String;

    sget-object v2, Ln2/e;->d:Ln2/e;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_8

    :cond_b
    const-string v0, "SHA-256 verified"

    invoke-virtual {v1, v9, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    :goto_8
    const-string v0, "No checksum in manifest \u2014 integrity not verified"

    invoke-virtual {v1, v2, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    .line 29
    :goto_9
    invoke-virtual {v1, v8, v3}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    const-string v0, "Download complete"

    invoke-virtual {v1, v9, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    new-instance v0, Lo2/c;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4}, Lo2/c;-><init>(Lcom/zalexdev/stryker/appintro/slides/Slide3;I)V

    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j(Ljava/lang/Runnable;)V

    sget-object v0, Ln2/a;->d:Ln2/a;

    move-object/from16 v4, v19

    invoke-virtual {v1, v0, v4}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    const-string v5, "Extracting archive into /data/local/stryker"

    invoke-virtual {v1, v7, v5}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    const-string v5, "Full Debian rootfs \u2014 extraction can take several minutes"

    move-object/from16 v6, v17

    invoke-virtual {v1, v6, v5}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    new-instance v5, Lo2/c;

    const/4 v6, 0x2

    invoke-direct {v5, v1, v6}, Lo2/c;-><init>(Lcom/zalexdev/stryker/appintro/slides/Slide3;I)V

    invoke-virtual {v1, v5}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j(Ljava/lang/Runnable;)V

    .line 30
    iget-object v5, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->v:Lv/z;

    iget-object v6, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f1302e4

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {v6}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Lv/z;->f:Ljava/lang/CharSequence;

    .line 32
    iget-object v5, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->v:Lv/z;

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/16 v10, 0x64

    invoke-virtual {v5, v10, v6, v8}, Lv/z;->f(IIZ)V

    iget-object v5, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->w:Landroid/app/NotificationManager;

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->v:Lv/z;

    invoke-virtual {v8}, Lv/z;->a()Landroid/app/Notification;

    move-result-object v8

    const/16 v10, 0x22

    invoke-virtual {v5, v10, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->y:Ljava/lang/String;

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    .line 33
    invoke-virtual {v8}, Ll4/l;->a()Z

    move-result v10

    const-string v12, "/data/data/com.zalexdev.stryker/files/busybox tar"

    if-eqz v10, :cond_d

    goto :goto_a

    .line 34
    :cond_d
    iget-object v10, v8, Ll4/l;->c:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-static {v10, v13}, Ll4/l;->v(Landroid/content/Context;Z)Z

    invoke-virtual {v8}, Ll4/l;->a()Z

    move-result v10

    if-eqz v10, :cond_e

    goto :goto_a

    :cond_e
    const-string v10, "command -v tar 2>/dev/null"

    invoke-virtual {v8, v10}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_f

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :cond_10
    move-object v12, v5

    :goto_a
    if-nez v12, :cond_13

    .line 35
    iget-object v2, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    .line 36
    iget-boolean v3, v2, Ll4/l;->i:Z

    if-nez v3, :cond_12

    .line 37
    invoke-virtual {v2}, Ll4/l;->h()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_b

    :cond_11
    const-string v2, "no usable tar \u2014 busybox could not run and the system provides none"

    goto :goto_c

    :cond_12
    :goto_b
    const-string v2, "no root access \u2014 su did not return a root shell"

    .line 38
    :goto_c
    iput-object v2, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->y:Ljava/lang/String;

    goto/16 :goto_15

    :cond_13
    const-string v8, " -xzf /data/data/com.zalexdev.stryker/files/chroot64-debian.tar.gz -C /data/local/stryker/"

    invoke-virtual {v12, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v10, v28

    invoke-virtual {v1, v10, v8}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    const-string v13, " -xzf /data/data/com.zalexdev.stryker/files/chroot64-debian.tar.gz -C /data/local/stryker/ 2>&1; echo __STRYKER_TAR_RC__$?"

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v34, 0x0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {v12}, Lu3/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Executing command: "

    .line 40
    invoke-static {v14, v12}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 41
    iget-object v15, v8, Ll4/l;->f:Lu3/g;

    const/4 v5, 0x1

    invoke-virtual {v15, v5, v14, v13}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ll4/l;->w()Ljava/lang/Process;

    move-result-object v29

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Ll4/l;->o0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "exit\nexit\n"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    const/16 v33, 0x0

    move-object/from16 v28, v8

    move-object/from16 v32, v13

    invoke-virtual/range {v28 .. v35}, Ll4/l;->a0(Ljava/lang/Process;Ljava/lang/String;ZLjava/lang/String;ZJ)Ljava/util/ArrayList;

    move-result-object v5

    .line 42
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v12, 0x0

    :catch_1
    :cond_14
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string v14, "__STRYKER_TAR_RC__"

    if-eqz v13, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_14

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    :try_start_1
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x12

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :cond_15
    if-eqz v12, :cond_17

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_17

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    const-string v13, "/data/local/stryker/release/usr/bin/"

    invoke-virtual {v8, v13}, Ll4/l;->d(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_16

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    const-string v13, "/data/local/stryker/release/bin/"

    invoke-virtual {v8, v13}, Ll4/l;->d(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    :cond_16
    const/4 v6, 0x1

    :cond_17
    if-nez v6, :cond_1f

    if-nez v12, :cond_18

    const-string v8, "the extractor was killed before it finished"

    :goto_e
    iput-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->y:Ljava/lang/String;

    goto :goto_f

    :cond_18
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "extractor exited with code "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :cond_19
    :goto_f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v12, 0x1

    sub-int/2addr v8, v12

    :goto_10
    if-ltz v8, :cond_1e

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-nez v12, :cond_1a

    goto :goto_12

    :cond_1a
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1d

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1b

    goto :goto_12

    :cond_1b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->y:Ljava/lang/String;

    if-nez v8, :cond_1c

    move-object/from16 v8, v27

    goto :goto_11

    :cond_1c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->y:Ljava/lang/String;

    const-string v14, " \u2014 "

    .line 43
    invoke-static {v8, v13, v14}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_11
    invoke-static {v5, v8, v12}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    iput-object v5, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->y:Ljava/lang/String;

    goto :goto_13

    :cond_1d
    :goto_12
    add-int/lit8 v8, v8, -0x1

    goto :goto_10

    :cond_1e
    :goto_13
    iget-object v5, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->y:Ljava/lang/String;

    if-nez v5, :cond_1f

    const-string v5, "the extractor reported nothing"

    iput-object v5, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->y:Ljava/lang/String;

    :cond_1f
    if-eqz v6, :cond_20

    iget-object v5, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    const-string v8, "/data/local/stryker/release/bin/bash"

    invoke-virtual {v5, v8}, Ll4/l;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    const-string v5, "bash not found in the rootfs \u2014 chroot commands will fail"

    invoke-virtual {v1, v2, v5}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    :cond_20
    if-eqz v6, :cond_23

    .line 45
    invoke-virtual {v1, v0, v3}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    const-string v0, "Archive extracted"

    invoke-virtual {v1, v9, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->w:Landroid/app/NotificationManager;

    const/16 v5, 0x22

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    move-object/from16 v5, v26

    invoke-virtual {v0, v5}, Ll4/l;->s(Ljava/lang/String;)V

    sget-object v0, Ln2/a;->e:Ln2/a;

    invoke-virtual {v1, v0, v4}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    const-string v5, "Mounting chroot via bootroot"

    invoke-virtual {v1, v7, v5}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    const-string v6, "/data/data/com.zalexdev.stryker/files/bootroot"

    .line 46
    invoke-virtual {v5, v6}, Ll4/l;->r(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v5}, Ll4/l;->Q()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_21

    :try_start_2
    invoke-static {v5}, Li5/a;->F(Ll4/l;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :catchall_0
    :cond_21
    invoke-virtual {v1, v0, v3}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    const-string v0, "Chroot mounted"

    invoke-virtual {v1, v9, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    sget-object v0, Ln2/a;->f:Ln2/a;

    invoke-virtual {v1, v0, v4}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    const-string v5, "Refreshing the package index"

    invoke-virtual {v1, v7, v5}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    invoke-static {}, Li5/a;->J()Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "; "

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apt-get -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold -o APT::Sandbox::User=root -o Acquire::Retries=3 update"

    invoke-virtual {v1, v10, v6}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; apt-get -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold -o APT::Sandbox::User=root -o Acquire::Retries=3 update"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v3}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    const-string v0, "Package index ready"

    invoke-virtual {v1, v9, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    sget-object v0, Ln2/a;->g:Ln2/a;

    invoke-virtual {v1, v0, v4}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    const-string v5, "Deploying built-in exploits"

    invoke-virtual {v1, v7, v5}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    invoke-static {v5}, Li5/a;->F(Ll4/l;)Z

    move-result v5

    if-eqz v5, :cond_22

    const-string v2, "Stryker payload unpacked \u2014 /CORE, /exploits"

    invoke-virtual {v1, v9, v2}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    goto :goto_14

    :cond_22
    const-string v5, "Stryker payload did not verify \u2014 /CORE tools may be missing"

    invoke-virtual {v1, v2, v5}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    :goto_14
    iget-object v2, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    const-string v5, "/sdcard/Stryker/exploits/"

    invoke-virtual {v2, v5}, Ll4/l;->s(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "cp -R /data/data/com.zalexdev.stryker/files/checker.py /data/local/stryker/release/exploits/checker.py"

    .line 49
    invoke-virtual {v2, v5}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 50
    iget-object v2, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "cp -R /data/local/stryker/release/exploits/ /sdcard/Stryker/exploits"

    .line 51
    invoke-virtual {v2, v5}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 52
    iget-object v2, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    const-string v5, "/data/data/com.zalexdev.stryker/files"

    invoke-virtual {v2, v5}, Ll4/l;->i(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    const-string v0, "Exploits deployed to /sdcard/Stryker/exploits"

    invoke-virtual {v1, v9, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    sget-object v0, Ln2/a;->h:Ln2/a;

    invoke-virtual {v1, v0, v4}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    const-string v2, "echo update > /data/local/stryker/release/6.0"

    invoke-virtual {v1, v10, v2}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    invoke-virtual {v4, v2}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->c:Ll4/l;

    const-string v4, "/sdcard/Stryker/exploits/checker.py"

    invoke-virtual {v2, v4}, Ll4/l;->s(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    const-string v0, "Version marker written"

    invoke-virtual {v1, v9, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    sget-object v0, Ln2/a;->i:Ln2/a;

    invoke-virtual {v1, v0, v3}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    sget-object v7, Lo2/i;->b:Lo2/i;

    const-string v6, "Installation complete \u2014 moving on..."

    const-string v5, "Stryker chroot"

    .line 53
    new-instance v0, Lj2/b;

    const/4 v8, 0x3

    move-object v3, v0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lj2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j(Ljava/lang/Runnable;)V

    const-string v0, "All stages passed"

    .line 54
    invoke-virtual {v1, v9, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    new-instance v0, Lo2/c;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo2/c;-><init>(Lcom/zalexdev/stryker/appintro/slides/Slide3;I)V

    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j(Ljava/lang/Runnable;)V

    goto :goto_17

    :cond_23
    :goto_15
    invoke-virtual {v1, v0, v11}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->i(Ln2/a;Lo2/g;)V

    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->w:Landroid/app/NotificationManager;

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to extract \u2014 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->y:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v2, v1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->y:Ljava/lang/String;

    goto :goto_16

    :cond_24
    const-string v2, "unknown error"

    :goto_16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :goto_17
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
