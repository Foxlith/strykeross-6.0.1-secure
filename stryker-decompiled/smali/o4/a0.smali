.class public final synthetic Lo4/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/wifi/Wifi;

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Landroid/widget/ProgressBar;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:[I

.field public final synthetic g:[I

.field public final synthetic h:Landroid/widget/TextView;

.field public final synthetic i:Landroid/widget/TextView;

.field public final synthetic j:Landroid/widget/TextView;

.field public final synthetic k:Landroid/widget/TextView;

.field public final synthetic l:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wifi/Wifi;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;[I[ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/a0;->a:Lcom/zalexdev/stryker/wifi/Wifi;

    iput-object p2, p0, Lo4/a0;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lo4/a0;->c:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lo4/a0;->d:Landroid/widget/TextView;

    iput-object p5, p0, Lo4/a0;->e:Landroid/view/View;

    iput-object p6, p0, Lo4/a0;->f:[I

    iput-object p7, p0, Lo4/a0;->g:[I

    iput-object p8, p0, Lo4/a0;->h:Landroid/widget/TextView;

    iput-object p9, p0, Lo4/a0;->i:Landroid/widget/TextView;

    iput-object p10, p0, Lo4/a0;->j:Landroid/widget/TextView;

    iput-object p11, p0, Lo4/a0;->k:Landroid/widget/TextView;

    iput-object p12, p0, Lo4/a0;->l:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo4/a0;->a:Lcom/zalexdev/stryker/wifi/Wifi;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lo4/a0;->b:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-static {v1, v2}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lo4/a0;->c:Landroid/widget/ProgressBar;

    .line 30
    .line 31
    invoke-static {v0, v1}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lo4/a0;->d:Landroid/widget/TextView;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lo4/a0;->e:Landroid/view/View;

    .line 41
    .line 42
    const/16 v3, 0x8

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v4, "Successful attacks: "

    .line 50
    .line 51
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v4, p0, Lo4/a0;->f:[I

    .line 55
    .line 56
    aget v4, v4, v1

    .line 57
    .line 58
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v4, "/"

    .line 62
    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v4, p0, Lo4/a0;->g:[I

    .line 67
    .line 68
    aget v1, v4, v1

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    const-string v0, "Close"

    .line 81
    .line 82
    iget-object v1, p0, Lo4/a0;->h:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lo4/a0;->i:Landroid/widget/TextView;

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lo4/a0;->j:Landroid/widget/TextView;

    .line 93
    .line 94
    const-string v1, ""

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    const-string v0, "Attack finished"

    .line 100
    .line 101
    iget-object v2, p0, Lo4/a0;->k:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lo4/a0;->l:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method
