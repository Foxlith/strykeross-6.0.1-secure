.class public final synthetic Lt2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lt2/j;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lt2/j;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    iget v0, p0, Lt2/j;->a:I

    .line 3
    .line 4
    iget-object v1, p0, Lt2/j;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v1, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;

    .line 10
    .line 11
    iget-object v0, v1, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->e:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v2, v1, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->c:Landroid/content/Context;

    .line 29
    .line 30
    const-string v3, "clipboard"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/content/ClipboardManager;

    .line 37
    .line 38
    const-string v3, "msf"

    .line 39
    .line 40
    invoke-static {v3, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v2, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v1, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->c:Landroid/content/Context;

    .line 48
    .line 49
    const v1, 0x7f13040a

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 57
    .line 58
    .line 59
    :goto_0
    const/4 p1, 0x1

    .line 60
    return p1

    .line 61
    :pswitch_0
    check-cast v1, Lt2/m;

    .line 62
    .line 63
    iget-object v0, v1, Lt2/m;->e:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Ll4/l;

    .line 66
    .line 67
    const-string v1, "Copy password to clipboard."

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return p1

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
