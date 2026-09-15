.class public final Lw0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Landroidx/preference/SeekBarPreference;


# direct methods
.method public constructor <init>(Landroidx/preference/SeekBarPreference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/s;->a:Landroidx/preference/SeekBarPreference;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    :cond_0
    iget-object p1, p0, Lw0/s;->a:Landroidx/preference/SeekBarPreference;

    iget-boolean v0, p1, Landroidx/preference/SeekBarPreference;->s:Z

    if-nez v0, :cond_2

    const/16 v0, 0x15

    if-eq p2, v0, :cond_1

    const/16 v0, 0x16

    if-ne p2, v0, :cond_2

    :cond_1
    return p3

    :cond_2
    const/16 v0, 0x17

    if-eq p2, v0, :cond_4

    const/16 v0, 0x42

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "SeekBarPreference"

    const-string p2, "SeekBar view is null and hence cannot be adjusted."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return p3
.end method
