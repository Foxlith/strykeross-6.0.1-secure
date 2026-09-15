.class public final synthetic Lcom/stryker/terminal/ui/customize/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;Landroid/widget/EditText;Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/d;->a:Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    iput-object p2, p0, Lcom/stryker/terminal/ui/customize/d;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/stryker/terminal/ui/customize/d;->c:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;

    iput-boolean p4, p0, Lcom/stryker/terminal/ui/customize/d;->d:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/d;->a:Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    iget-object v1, p0, Lcom/stryker/terminal/ui/customize/d;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/stryker/terminal/ui/customize/d;->c:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;

    iget-boolean v3, p0, Lcom/stryker/terminal/ui/customize/d;->d:Z

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->j(Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;Landroid/widget/EditText;Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;ZLandroid/content/DialogInterface;I)V

    return-void
.end method
