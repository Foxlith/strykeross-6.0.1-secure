.class public final synthetic Li2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Li2/a;->a:I

    .line 5
    .line 6
    iput p1, p0, Li2/a;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget v0, p0, Li2/a;->a:I

    iget v1, p0, Li2/a;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, p1, p2}, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->d(ILandroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_0
    invoke-static {v1, p1, p2}, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;->e(ILandroid/widget/CompoundButton;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
