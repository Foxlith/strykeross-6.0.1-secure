.class public final synthetic Lo4/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/wifi/Wifi;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lo4/v;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lo4/v;->b:Lcom/zalexdev/stryker/wifi/Wifi;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 44

    move-object/from16 v0, p0

    iget v1, v0, Lo4/v;->a:I

    const v3, 0x7f0a04ec

    const v4, 0x7f0a0602

    const v5, 0x7f0a0656

    const-string v6, "Starting monitor mode...\n"

    const v7, 0x7f0a05f7

    const v8, 0x7f0d011f

    const v10, 0x7f0a02e3

    const v11, 0x7f0a071e

    const v12, 0x7f0a071c

    const v13, 0x7f0a0497

    const/4 v14, -0x2

    const/4 v15, -0x1

    const/4 v2, 0x0

    iget-object v9, v0, Lo4/v;->b:Lcom/zalexdev/stryker/wifi/Wifi;

    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    .line 1
    invoke-virtual {v9}, Lcom/zalexdev/stryker/wifi/Wifi;->g()V

    return-void

    .line 2
    :pswitch_0
    iget-object v1, v9, Lcom/zalexdev/stryker/wifi/Wifi;->w:Lcom/zalexdev/stryker/MainActivity;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lj2/a;

    const/16 v3, 0x9

    invoke-direct {v2, v1, v3}, Lj2/a;-><init>(Lcom/zalexdev/stryker/MainActivity;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 4
    :pswitch_1
    sget v1, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    .line 5
    invoke-virtual {v9}, Lcom/zalexdev/stryker/wifi/Wifi;->g()V

    return-void

    .line 6
    :pswitch_2
    sget v1, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v1, Landroid/app/Dialog;

    iget-object v3, v9, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v15, v14}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v1, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    const v7, 0x7f0a0561

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "Deauthenticating"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/card/MaterialCardView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    new-instance v7, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v7}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lj2/b;

    const/16 v21, 0xb

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    invoke-direct/range {v16 .. v21}, Lj2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    new-instance v3, Lr3/f;

    const/16 v22, 0x2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    invoke-direct/range {v16 .. v22}, Lr3/f;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;Ljava/lang/Object;Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void

    .line 8
    :pswitch_3
    iget-object v1, v9, Lcom/zalexdev/stryker/wifi/Wifi;->F:Lo4/u;

    if-eqz v1, :cond_5

    .line 9
    iget-object v1, v1, Lo4/u;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance v6, Landroid/app/Dialog;

    iget-object v7, v9, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0d011e

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    if-eqz v7, :cond_3

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v15, v14}, Landroid/view/Window;->setLayout(II)V

    :cond_3
    invoke-virtual {v6, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    const v7, 0x7f0a071b

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v32, v7

    check-cast v32, Landroid/widget/TextView;

    const v7, 0x7f0a0719

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a071a

    invoke-virtual {v6, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v34, v8

    check-cast v34, Landroid/widget/TextView;

    const v8, 0x7f0a070e

    invoke-virtual {v6, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v40, v11

    check-cast v40, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v28, v5

    check-cast v28, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v36, v4

    check-cast v36, Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const v5, 0x7f0a070b

    invoke-virtual {v6, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v10, "Skip this network"

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f0a0715

    invoke-virtual {v6, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v38, v10

    check-cast v38, Landroid/widget/ImageView;

    const v10, 0x7f0a00a0

    invoke-virtual {v6, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v39, v10

    check-cast v39, Landroid/widget/ProgressBar;

    new-instance v10, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v10}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v6, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v41

    const/4 v10, 0x1

    new-array v11, v10, [Ll4/c;

    const/4 v13, 0x0

    aput-object v13, v11, v2

    new-array v10, v10, [Ljava/util/Timer;

    new-instance v13, Ljava/util/Timer;

    invoke-direct {v13}, Ljava/util/Timer;-><init>()V

    aput-object v13, v10, v2

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Progress: 0/"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v13, Lcom/nambimobile/widgets/efab/a;

    const/16 v14, 0x14

    invoke-direct {v13, v11, v14}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v13, v9, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    const-string v14, "hide"

    invoke-virtual {v13, v14}, Ll4/l;->x(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "XX:XX:XX:XX:XX:XX"

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    filled-new-array {v2}, [I

    move-result-object v35

    new-instance v2, Lr3/f;

    const/16 v22, 0x1

    move-object/from16 v16, v2

    move-object/from16 v17, v9

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v11

    move-object/from16 v21, v10

    invoke-direct/range {v16 .. v22}, Lr3/f;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;Ljava/lang/Object;Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v31, v2

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/Thread;

    new-instance v13, Lo4/w;

    move-object/from16 v23, v13

    move-object/from16 v24, v9

    move-object/from16 v25, v1

    move-object/from16 v26, v4

    move-object/from16 v27, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move-object/from16 v33, v7

    move-object/from16 v37, v3

    move-object/from16 v42, v8

    move-object/from16 v43, v5

    invoke-direct/range {v23 .. v43}, Lo4/w;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;[Ljava/util/Timer;Landroid/widget/TextView;[Ll4/c;Landroid/widget/TextView;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;[ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-direct {v2, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, v9, Lcom/zalexdev/stryker/wifi/Wifi;->I:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    :cond_5
    :goto_0
    return-void

    .line 10
    :pswitch_4
    sget v1, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v1, Landroid/app/Dialog;

    iget-object v13, v9, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    invoke-direct {v1, v13}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    if-eqz v8, :cond_6

    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v13, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v13}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v15, v14}, Landroid/view/Window;->setLayout(II)V

    :cond_6
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v1, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v23, v4

    check-cast v23, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v9, Lcom/zalexdev/stryker/wifi/Wifi;->D:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v9, Lcom/zalexdev/stryker/wifi/Wifi;->z:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v9, Lcom/zalexdev/stryker/wifi/Wifi;->A:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v9, Lcom/zalexdev/stryker/wifi/Wifi;->y:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const v3, 0x7f0a0497

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v4}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v9, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    invoke-virtual {v10}, Ll4/l;->H()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/hs"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v9, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    invoke-virtual {v12}, Ll4/l;->H()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/captured"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    new-array v12, v12, [Z

    aput-boolean v2, v12, v2

    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v13, 0x0

    iput-object v13, v9, Lcom/zalexdev/stryker/wifi/Wifi;->B:Ll4/c;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v13, Lo4/x;

    move-object/from16 v16, v13

    move-object/from16 v17, v9

    move-object/from16 v18, v8

    move-object/from16 v19, v4

    move-object/from16 v20, v2

    move-object/from16 v22, v5

    move-object/from16 v25, v12

    invoke-direct/range {v16 .. v25}, Lo4/x;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicReference;[ILandroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;[Z)V

    invoke-direct {v6, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    new-instance v6, Lo4/y;

    move-object/from16 v16, v6

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move-object/from16 v22, v11

    move-object/from16 v23, v2

    move-object/from16 v24, v10

    move-object/from16 v25, v5

    invoke-direct/range {v16 .. v25}, Lo4/y;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/material/button/MaterialButton;Landroid/app/Dialog;Landroid/view/View;Landroid/widget/TextView;[ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void

    .line 12
    :pswitch_5
    iget-object v1, v9, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lo4/z;

    const/4 v3, 0x1

    invoke-direct {v2, v9, v3}, Lo4/z;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void

    .line 13
    :pswitch_6
    sget v1, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    .line 14
    invoke-virtual {v9}, Lcom/zalexdev/stryker/wifi/Wifi;->g()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
