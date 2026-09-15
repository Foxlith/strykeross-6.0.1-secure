.class public final synthetic Lt2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lt2/m;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lt2/m;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/k;->a:Lt2/m;

    iput p2, p0, Lt2/k;->b:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lt2/k;->a:Lt2/m;

    .line 2
    .line 3
    iget v0, p0, Lt2/k;->b:I

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lt2/m;->c(I)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1
.end method
