.class public final Lcom/stryker/terminal/ui/pm/PackageManagerActivity$onCreate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/ui/pm/PackageAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/ui/pm/PackageManagerActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$onCreate$1;->this$0:Lcom/stryker/terminal/ui/pm/PackageManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Lcom/stryker/terminal/ui/pm/PackageModel;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$onCreate$1;->onModelClicked$lambda$0(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Lcom/stryker/terminal/ui/pm/PackageModel;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final onModelClicked$lambda$0(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Lcom/stryker/terminal/ui/pm/PackageModel;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$model"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/pm/PackageModel;->getPackageInfo()Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->access$installPackage(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Ljava/lang/String;)Lw4/h;

    return-void
.end method


# virtual methods
.method public onModelClicked(Lcom/stryker/terminal/ui/pm/PackageModel;)V
    .locals 5

    const-string v0, "model"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$onCreate$1;->this$0:Lcom/stryker/terminal/ui/pm/PackageManagerActivity;

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/pm/PackageModel;->getPackageInfo()Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$onCreate$1;->this$0:Lcom/stryker/terminal/ui/pm/PackageManagerActivity;

    invoke-virtual {p1, v1}, Lcom/stryker/terminal/ui/pm/PackageModel;->getPackageDetails(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$string;->install:I

    iget-object v2, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$onCreate$1;->this$0:Lcom/stryker/terminal/ui/pm/PackageManagerActivity;

    new-instance v3, Lcom/stryker/terminal/ui/customize/a;

    const/4 v4, 0x4

    invoke-direct {v3, v2, p1, v4}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const v0, 0x1040009

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    return-void
.end method
