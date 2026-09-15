.class public final synthetic Lcom/stryker/terminal/ui/other/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf/q;


# direct methods
.method public synthetic constructor <init>(Lf/q;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/stryker/terminal/ui/other/k;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/stryker/terminal/ui/other/k;->b:Lf/q;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/stryker/terminal/ui/other/k;->a:I

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/k;->b:Lf/q;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lcom/stryker/terminal/ui/other/SetupActivity;

    invoke-static {v1, p1, p2}, Lcom/stryker/terminal/ui/other/SetupActivity;->i(Lcom/stryker/terminal/ui/other/SetupActivity;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    check-cast v1, Lcom/stryker/terminal/ui/other/SettingsActivity;

    invoke-static {v1, p1, p2}, Lcom/stryker/terminal/ui/other/SettingsActivity;->g(Lcom/stryker/terminal/ui/other/SettingsActivity;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
