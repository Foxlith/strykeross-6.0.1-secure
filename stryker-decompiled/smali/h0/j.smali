.class public Lh0/j;
.super Lh0/i;
.source "SourceFile"


# virtual methods
.method public final findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/i;->a:Lh0/l;

    invoke-virtual {v0, p1}, Lh0/l;->b(I)Lh0/h;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lh0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method
