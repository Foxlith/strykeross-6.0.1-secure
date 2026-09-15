.class public final Landroidx/activity/e;
.super Landroidx/activity/result/g;
.source "SourceFile"


# instance fields
.field public final synthetic i:Landroidx/activity/h;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/e;->i:Landroidx/activity/h;

    invoke-direct {p0}, Landroidx/activity/result/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(ILd/a;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/activity/e;->i:Landroidx/activity/h;

    .line 2
    .line 3
    invoke-virtual {p2, v0, p3}, Ld/a;->b(Landroidx/activity/h;Ljava/lang/Object;)Landroidx/fragment/app/n;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance p2, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    new-instance p3, Lb/d;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-direct {p3, p0, p1, v1, v0}, Lb/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p2, v0, p3}, Ld/a;->a(Landroidx/activity/h;Ljava/lang/Object;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p3}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    if-nez p3, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    const-string p3, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 56
    .line 57
    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p2, p3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    move-object v7, v1

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 p3, 0x0

    .line 73
    move-object v7, p3

    .line 74
    :goto_0
    const-string p3, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    if-eqz p3, :cond_4

    .line 85
    .line 86
    const-string p3, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 87
    .line 88
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    if-nez p2, :cond_3

    .line 93
    .line 94
    const/4 p2, 0x0

    .line 95
    new-array p2, p2, [Ljava/lang/String;

    .line 96
    .line 97
    :cond_3
    invoke-static {v0, p2, p1}, Lv/g;->f(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const-string p3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    if-eqz p3, :cond_5

    .line 112
    .line 113
    const-string p3, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    .line 114
    .line 115
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    check-cast p2, Landroidx/activity/result/i;

    .line 120
    .line 121
    :try_start_0
    iget-object v1, p2, Landroidx/activity/result/i;->a:Landroid/content/IntentSender;

    .line 122
    .line 123
    iget-object v3, p2, Landroidx/activity/result/i;->b:Landroid/content/Intent;

    .line 124
    .line 125
    iget v4, p2, Landroidx/activity/result/i;->c:I

    .line 126
    .line 127
    iget v5, p2, Landroidx/activity/result/i;->d:I

    .line 128
    .line 129
    const/4 v6, 0x0

    .line 130
    sget p2, Lv/g;->b:I

    .line 131
    .line 132
    move v2, p1

    .line 133
    invoke-static/range {v0 .. v7}, Lv/a;->c(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catch_0
    move-exception p2

    .line 138
    new-instance p3, Landroid/os/Handler;

    .line 139
    .line 140
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 145
    .line 146
    .line 147
    new-instance v0, Lb/d;

    .line 148
    .line 149
    const/4 v1, 0x2

    .line 150
    invoke-direct {v0, p0, p1, p2, v1}, Lb/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_5
    sget p3, Lv/g;->b:I

    .line 158
    .line 159
    invoke-static {v0, p2, p1, v7}, Lv/a;->b(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 160
    .line 161
    .line 162
    :goto_1
    return-void
.end method
