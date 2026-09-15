.class public final Ld3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld3/d;->c:Ljava/lang/Object;

    iput-object p1, p0, Ld3/d;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ld3/d;->c(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lh3/a;Ljava/lang/String;ILe3/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Ld3/d;->c:Ljava/lang/Object;

    iput p3, p0, Ld3/d;->a:I

    iput-object p4, p0, Ld3/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lh3/c;[ILe0/j;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/d;->d:Ljava/lang/Object;

    iput-object p2, p0, Ld3/d;->b:Ljava/lang/Object;

    iput-object p3, p0, Ld3/d;->c:Ljava/lang/Object;

    iput p4, p0, Ld3/d;->a:I

    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/16 v0, 0x10

    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld3/d;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lk3/a;

    if-eqz v1, :cond_0

    :try_start_0
    check-cast v0, Lk3/a;

    invoke-virtual {v0}, Lk3/a;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Ld3/d;->d:Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ld3/d;->a:I

    iget-object v1, p0, Ld3/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld3/d;->c(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_2

    return-void

    :cond_2
    check-cast v0, Ljava/lang/String;

    const-string v2, "hk:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld3/d;->b(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ld3/c;

    invoke-direct {v2, p0, v0, v1}, Ld3/c;-><init>(Ld3/d;II)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    const-string v1, "mod:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld3/d;->b(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Ld3/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ld3/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Ld3/c;-><init>(Ld3/d;II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_1
    return-void
.end method
