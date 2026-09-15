.class public final Lw0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:Landroidx/preference/SeekBarPreference;


# direct methods
.method public constructor <init>(Landroidx/preference/SeekBarPreference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/r;->a:Landroidx/preference/SeekBarPreference;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lw0/r;->a:Landroidx/preference/SeekBarPreference;

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    iget-boolean p3, p2, Landroidx/preference/SeekBarPreference;->t:Z

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    iget-boolean p3, p2, Landroidx/preference/SeekBarPreference;->r:Z

    .line 10
    .line 11
    if-nez p3, :cond_1

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/preference/SeekBarPreference;->l(Landroid/widget/SeekBar;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget p1, p2, Landroidx/preference/SeekBarPreference;->n:I

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lw0/r;->a:Landroidx/preference/SeekBarPreference;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/preference/SeekBarPreference;->r:Z

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    iget-object v1, p0, Lw0/r;->a:Landroidx/preference/SeekBarPreference;

    iput-boolean v0, v1, Landroidx/preference/SeekBarPreference;->r:Z

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget v2, v1, Landroidx/preference/SeekBarPreference;->n:I

    add-int/2addr v0, v2

    iget v2, v1, Landroidx/preference/SeekBarPreference;->m:I

    if-eq v0, v2, :cond_0

    invoke-virtual {v1, p1}, Landroidx/preference/SeekBarPreference;->l(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
