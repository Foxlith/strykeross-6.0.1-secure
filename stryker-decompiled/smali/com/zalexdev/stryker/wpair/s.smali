.class public final synthetic Lcom/zalexdev/stryker/wpair/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/s;->a:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/s;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/s;->a:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/s;->b:Ljava/io/File;

    invoke-static {v0, v1, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->i(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;Ljava/io/File;Landroid/content/DialogInterface;I)V

    return-void
.end method
