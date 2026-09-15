.class public final Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->showItemEditor(Lcom/stryker/terminal/ui/customize/ColorItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $edit:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$1;->$edit:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$1;->this$0:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stryker/terminal/backend/TerminalColors;->parse(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$1;->$edit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$1;->$edit:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$1;->this$0:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;

    invoke-virtual {v0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$color;->textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
