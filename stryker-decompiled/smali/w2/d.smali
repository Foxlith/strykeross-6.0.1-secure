.class public final synthetic Lw2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/geomac/GeoMac;

.field public final synthetic b:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/geomac/GeoMac;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/d;->a:Lcom/zalexdev/stryker/geomac/GeoMac;

    iput-object p2, p0, Lw2/d;->b:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    sget p1, Lcom/zalexdev/stryker/geomac/GeoMac;->r:I

    .line 2
    .line 3
    iget-object p1, p0, Lw2/d;->a:Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lw2/d;->b:Lcom/google/android/material/textfield/TextInputEditText;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    const-string p2, ""

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p2}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-nez p3, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/zalexdev/stryker/geomac/GeoMac;->e(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 p1, 0x1

    .line 41
    return p1
.end method
