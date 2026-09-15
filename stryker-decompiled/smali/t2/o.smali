.class public final synthetic Lt2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lt2/m;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lt2/m;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt2/o;->c:Lt2/m;

    .line 3
    iput p2, p0, Lt2/o;->d:I

    .line 4
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lt2/o;->c:Lt2/m;

    .line 2
    iget-object v1, v0, Lt2/m;->e:Ljava/lang/Object;

    .line 3
    check-cast v1, Ll4/l;

    .line 4
    iget v2, p0, Lt2/o;->d:I

    .line 5
    iget-object v3, v0, Lt2/m;->b:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object v3

    .line 8
    check-cast v3, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v4

    .line 11
    const/4 v5, 0x4

    .line 12
    if-ge v4, v5, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v4, 0x2

    .line 15
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Ljava/lang/String;

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/String;

    .line 22
    invoke-virtual {v1, v4, v3}, Ll4/l;->k(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-string v3, "Conectando con credenciales guardadas..."

    .line 24
    invoke-virtual {v1, v3}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 25
    return-void
.end method