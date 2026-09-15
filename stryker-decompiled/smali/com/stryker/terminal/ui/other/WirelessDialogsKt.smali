.class public final Lcom/stryker/terminal/ui/other/WirelessDialogsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$tintLow(I)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-static {p0}, Lcom/stryker/terminal/ui/other/WirelessDialogsKt;->tintLow(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private static final tintLow(I)Landroid/content/res/ColorStateList;
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, 0x33000000

    or-int/2addr p0, v0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    const-string v0, "valueOf((color and 0x00FFFFFF) or 0x33000000)"

    invoke-static {p0, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
