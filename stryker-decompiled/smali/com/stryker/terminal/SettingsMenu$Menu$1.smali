.class Lcom/stryker/terminal/SettingsMenu$Menu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenu$Menu;->showMenuOptionsList(Lcom/stryker/terminal/MainActivity;[Lcom/stryker/terminal/SettingsMenu$Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/SettingsMenu$Menu;

.field final synthetic val$list:[Lcom/stryker/terminal/SettingsMenu$Menu;

.field final synthetic val$p:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenu$Menu;[Lcom/stryker/terminal/SettingsMenu$Menu;Lcom/stryker/terminal/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenu$Menu$1;->this$0:Lcom/stryker/terminal/SettingsMenu$Menu;

    iput-object p2, p0, Lcom/stryker/terminal/SettingsMenu$Menu$1;->val$list:[Lcom/stryker/terminal/SettingsMenu$Menu;

    iput-object p3, p0, Lcom/stryker/terminal/SettingsMenu$Menu$1;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenu$Menu$1;->val$list:[Lcom/stryker/terminal/SettingsMenu$Menu;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/stryker/terminal/SettingsMenu$Menu;->enabledOrHidden()Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne v2, p2, :cond_0

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenu$Menu$1;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {v3, p1}, Lcom/stryker/terminal/SettingsMenu$Menu;->run(Lcom/stryker/terminal/MainActivity;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
