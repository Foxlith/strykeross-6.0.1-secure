.class public final synthetic Lb4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/nmap/NmapScanner;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/nmap/NmapScanner;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb4/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lb4/b;->b:Lcom/zalexdev/stryker/nmap/NmapScanner;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lb4/b;->a:I

    .line 2
    .line 3
    const/16 v1, 0x82

    .line 4
    .line 5
    iget-object v2, p0, Lb4/b;->b:Lcom/zalexdev/stryker/nmap/NmapScanner;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->x:Landroid/widget/ScrollView;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->u:Landroid/widget/ScrollView;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->u:Landroid/widget/ScrollView;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_2
    iget-object v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->x:Landroid/widget/ScrollView;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
