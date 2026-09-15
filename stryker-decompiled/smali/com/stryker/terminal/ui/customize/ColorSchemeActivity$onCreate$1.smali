.class public final Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$onCreate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/ui/customize/ColorItemAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$onCreate$1;->this$0:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelClicked(Lcom/stryker/terminal/ui/customize/ColorItem;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$onCreate$1;->this$0:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;

    invoke-static {v0, p1}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->access$showItemEditor(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;Lcom/stryker/terminal/ui/customize/ColorItem;)V

    return-void
.end method
