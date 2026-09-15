.class public final synthetic Lb3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lb3/g;

.field public final synthetic b:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/app/Dialog;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lb3/g;Lcom/google/android/material/textfield/TextInputEditText;Ljava/lang/String;Landroid/app/Dialog;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/d;->a:Lb3/g;

    iput-object p2, p0, Lb3/d;->b:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p3, p0, Lb3/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lb3/d;->d:Landroid/app/Dialog;

    iput-object p5, p0, Lb3/d;->e:Ljava/lang/String;

    iput p6, p0, Lb3/d;->f:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lb3/d;->a:Lb3/g;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb3/d;->b:Lcom/google/android/material/textfield/TextInputEditText;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lb3/d;->d:Landroid/app/Dialog;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lb3/d;->c:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Lb3/d;->e:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lb3/g;->a(Ljava/lang/String;)Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v0}, Lb3/g;->a(Ljava/lang/String;)Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget-object v1, p1, Lb3/g;->a:Ljava/util/ArrayList;

    .line 57
    .line 58
    iget v3, p0, Lb3/d;->f:I

    .line 59
    .line 60
    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p1, Lb3/g;->e:Ljava/lang/Runnable;

    .line 67
    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 74
    .line 75
    .line 76
    return-void
.end method
