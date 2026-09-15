.class public final synthetic Lcom/stryker/terminal/ui/other/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/stryker/terminal/ui/other/SetupActivity;

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/stryker/terminal/ui/other/SetupActivity;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/m;->a:Lcom/stryker/terminal/ui/other/SetupActivity;

    iput-object p2, p0, Lcom/stryker/terminal/ui/other/m;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/stryker/terminal/ui/other/m;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/ui/other/m;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/m;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/stryker/terminal/ui/other/m;->a:Lcom/stryker/terminal/ui/other/SetupActivity;

    invoke-static {v2, v0, v1, p1, p2}, Lcom/stryker/terminal/ui/other/SetupActivity;->j(Lcom/stryker/terminal/ui/other/SetupActivity;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
