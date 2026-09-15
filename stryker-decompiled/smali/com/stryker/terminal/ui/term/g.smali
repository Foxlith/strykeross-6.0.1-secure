.class public final synthetic Lcom/stryker/terminal/ui/term/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;Ljava/util/List;Landroid/widget/ArrayAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/stryker/terminal/ui/term/g;->a:I

    iput-object p1, p0, Lcom/stryker/terminal/ui/term/g;->c:Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;

    iput-object p2, p0, Lcom/stryker/terminal/ui/term/g;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/stryker/terminal/ui/term/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;Ljava/util/List;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/stryker/terminal/ui/term/g;->a:I

    iput-object p1, p0, Lcom/stryker/terminal/ui/term/g;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/stryker/terminal/ui/term/g;->c:Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;

    iput-object p3, p0, Lcom/stryker/terminal/ui/term/g;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14

    .line 1
    move-object v0, p0

    iget v1, v0, Lcom/stryker/terminal/ui/term/g;->a:I

    iget-object v2, v0, Lcom/stryker/terminal/ui/term/g;->d:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    iget-object v3, v0, Lcom/stryker/terminal/ui/term/g;->b:Ljava/util/List;

    iget-object v4, v0, Lcom/stryker/terminal/ui/term/g;->c:Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;

    move-object v5, v2

    check-cast v5, Ljava/util/List;

    move-object v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-wide/from16 v9, p4

    invoke-static/range {v3 .. v10}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->g(Ljava/util/List;Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void

    :pswitch_0
    iget-object v6, v0, Lcom/stryker/terminal/ui/term/g;->c:Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;

    iget-object v7, v0, Lcom/stryker/terminal/ui/term/g;->b:Ljava/util/List;

    move-object v8, v2

    check-cast v8, Landroid/widget/ArrayAdapter;

    move-object v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-wide/from16 v12, p4

    invoke-static/range {v6 .. v13}, Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;->f(Lcom/stryker/terminal/ui/term/NeoTermRemoteInterface;Ljava/util/List;Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
