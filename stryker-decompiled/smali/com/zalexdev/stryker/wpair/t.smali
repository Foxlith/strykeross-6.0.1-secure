.class public final synthetic Lcom/zalexdev/stryker/wpair/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/t;->a:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/t;->a:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;

    invoke-static {v0, p1}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->d(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;Landroid/media/MediaPlayer;)V

    return-void
.end method
