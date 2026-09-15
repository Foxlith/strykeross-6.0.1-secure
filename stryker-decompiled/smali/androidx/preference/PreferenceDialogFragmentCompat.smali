.class public abstract Landroidx/preference/PreferenceDialogFragmentCompat;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/CharSequence;

.field public e:I

.field public f:Landroid/graphics/drawable/BitmapDrawable;

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Landroidx/preference/DialogPreference;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lw0/b;

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Landroid/view/View;)V
    .locals 2

    .line 1
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public abstract g(Z)V
.end method

.method public h(Lf/m;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iput p2, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->g:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Lw0/b;

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    check-cast v0, Lw0/b;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "key"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const-string v0, "PreferenceDialogFragment.title"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->a:Ljava/lang/CharSequence;

    .line 32
    .line 33
    const-string v0, "PreferenceDialogFragment.positiveText"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->b:Ljava/lang/CharSequence;

    .line 40
    .line 41
    const-string v0, "PreferenceDialogFragment.negativeText"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->c:Ljava/lang/CharSequence;

    .line 48
    .line 49
    const-string v0, "PreferenceDialogFragment.message"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->d:Ljava/lang/CharSequence;

    .line 56
    .line 57
    const-string v0, "PreferenceDialogFragment.layout"

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->e:I

    .line 65
    .line 66
    const-string v0, "PreferenceDialogFragment.icon"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/graphics/Bitmap;

    .line 73
    .line 74
    if-eqz p1, :cond_0

    .line 75
    .line 76
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->f:Landroid/graphics/drawable/BitmapDrawable;

    .line 86
    .line 87
    :cond_0
    return-void

    .line 88
    :cond_1
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    const/4 p1, 0x0

    .line 94
    throw p1

    .line 95
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 96
    .line 97
    const-string v0, "Target fragment must implement TargetFragment interface"

    .line 98
    .line 99
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, -0x2

    .line 6
    iput v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->g:I

    .line 7
    .line 8
    new-instance v0, Lf/m;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lf/m;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->a:Ljava/lang/CharSequence;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lf/m;->setTitle(Ljava/lang/CharSequence;)Lf/m;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->f:Landroid/graphics/drawable/BitmapDrawable;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lf/m;->setIcon(Landroid/graphics/drawable/Drawable;)Lf/m;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->b:Ljava/lang/CharSequence;

    .line 24
    .line 25
    invoke-virtual {v0, v1, p0}, Lf/m;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lf/m;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->c:Ljava/lang/CharSequence;

    .line 29
    .line 30
    invoke-virtual {v0, v1, p0}, Lf/m;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lf/m;

    .line 31
    .line 32
    .line 33
    iget v1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->e:I

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :goto_0
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceDialogFragmentCompat;->f(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lf/m;->setView(Landroid/view/View;)Lf/m;

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->d:Ljava/lang/CharSequence;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lf/m;->setMessage(Ljava/lang/CharSequence;)Lf/m;

    .line 59
    .line 60
    .line 61
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceDialogFragmentCompat;->h(Lf/m;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lf/m;->create()Lf/n;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    instance-of v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/4 v1, 0x5

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-object p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->g:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->g(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "PreferenceDialogFragment.title"

    iget-object v1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "PreferenceDialogFragment.positiveText"

    iget-object v1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "PreferenceDialogFragment.negativeText"

    iget-object v1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "PreferenceDialogFragment.message"

    iget-object v1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "PreferenceDialogFragment.layout"

    iget v1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->f:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    const-string v1, "PreferenceDialogFragment.icon"

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
