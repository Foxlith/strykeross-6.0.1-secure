.class public final synthetic Lcom/stryker/terminal/ui/other/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/stryker/terminal/ui/other/InterfacesDialog;

.field public final synthetic b:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic c:Lcom/stryker/terminal/ui/other/SuUtils$Iface;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/stryker/terminal/ui/other/InterfacesDialog;Lcom/google/android/material/button/MaterialButton;Lcom/stryker/terminal/ui/other/SuUtils$Iface;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/h;->a:Lcom/stryker/terminal/ui/other/InterfacesDialog;

    iput-object p2, p0, Lcom/stryker/terminal/ui/other/h;->b:Lcom/google/android/material/button/MaterialButton;

    iput-object p3, p0, Lcom/stryker/terminal/ui/other/h;->c:Lcom/stryker/terminal/ui/other/SuUtils$Iface;

    iput-boolean p4, p0, Lcom/stryker/terminal/ui/other/h;->d:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/ui/other/h;->c:Lcom/stryker/terminal/ui/other/SuUtils$Iface;

    iget-boolean v1, p0, Lcom/stryker/terminal/ui/other/h;->d:Z

    iget-object v2, p0, Lcom/stryker/terminal/ui/other/h;->a:Lcom/stryker/terminal/ui/other/InterfacesDialog;

    iget-object v3, p0, Lcom/stryker/terminal/ui/other/h;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v2, v3, v0, v1, p1}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->e(Lcom/stryker/terminal/ui/other/InterfacesDialog;Lcom/google/android/material/button/MaterialButton;Lcom/stryker/terminal/ui/other/SuUtils$Iface;ZLandroid/view/View;)V

    return-void
.end method
