.class public final Lm4/d;
.super Lm4/g;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/vnc/VNCFragment;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lm4/d;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lm4/d;->b:Lcom/zalexdev/stryker/vnc/VNCFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    iget v0, p0, Lm4/d;->a:I

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    iget-object v2, p0, Lm4/d;->b:Lcom/zalexdev/stryker/vnc/VNCFragment;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    const-string p1, "vnc_last_port"

    .line 20
    .line 21
    invoke-virtual {v0, p1, v1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    iget-object v0, v2, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_1
    const-string p1, "vnc_last_resolution"

    .line 35
    .line 36
    invoke-virtual {v0, p1, v1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
