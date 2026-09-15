.class final Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecordingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/k0;"
    }
.end annotation


# instance fields
.field private final files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;


# direct methods
.method private constructor <init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;->this$0:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;->files:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;-><init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;)V

    return-void
.end method

.method public static synthetic a(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;Ljava/io/File;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;->lambda$onBindViewHolder$0(Ljava/io/File;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;Ljava/io/File;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;->lambda$onBindViewHolder$1(Ljava/io/File;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;Ljava/io/File;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;->lambda$onBindViewHolder$2(Ljava/io/File;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Ljava/io/File;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;->this$0:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;

    invoke-static {p2, p1}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->access$400(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;Ljava/io/File;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Ljava/io/File;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;->this$0:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;

    invoke-static {p2, p1}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->access$300(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;Ljava/io/File;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Ljava/io/File;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;->this$0:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;

    invoke-static {p2, p1}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->access$200(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;

    invoke-virtual {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;->onBindViewHolder(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;->meta:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->access$100(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;->play:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/zalexdev/stryker/wpair/u;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/zalexdev/stryker/wpair/u;-><init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;Ljava/io/File;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;->share:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/zalexdev/stryker/wpair/u;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, Lcom/zalexdev/stryker/wpair/u;-><init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;Ljava/io/File;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;->delete:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Lcom/zalexdev/stryker/wpair/u;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, v1}, Lcom/zalexdev/stryker/wpair/u;-><init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;Ljava/io/File;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d007f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;

    invoke-direct {p2, p0, p1}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;-><init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public set(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    return-void
.end method
