.class public Lf/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/w2;
.implements Landroidx/cardview/widget/d;
.implements Landroidx/core/view/h;
.implements Lh0/w;
.implements Lu2/g;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 7

    iput p1, p0, Lf/q0;->a:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_9

    const/16 v0, 0x9

    if-eq p1, v0, :cond_8

    const/16 v0, 0xd

    if-eq p1, v0, :cond_5

    const/16 v0, 0x16

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lf/q0;->b:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 3
    invoke-static {p1}, Ld0/e;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    goto :goto_3

    :cond_1
    :try_start_0
    const-class v0, Landroid/os/Handler;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/Looper;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/os/Handler$Callback;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x0

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object p1, v0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Error;

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :goto_2
    const-string v1, "HandlerCompat"

    const-string v2, "Unable to invoke Handler(Looper, Callback, boolean) constructor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :goto_3
    iput-object p1, p0, Lf/q0;->b:Ljava/lang/Object;

    return-void

    .line 4
    :cond_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf/q0;->b:Ljava/lang/Object;

    return-void

    .line 5
    :cond_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_6

    new-instance p1, Landroidx/core/view/h2;

    invoke-direct {p1}, Landroidx/core/view/h2;-><init>()V

    :goto_4
    iput-object p1, p0, Lf/q0;->b:Ljava/lang/Object;

    goto :goto_5

    :cond_6
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_7

    new-instance p1, Landroidx/core/view/g2;

    invoke-direct {p1}, Landroidx/core/view/g2;-><init>()V

    goto :goto_4

    :cond_7
    new-instance p1, Landroidx/core/view/f2;

    invoke-direct {p1}, Landroidx/core/view/f2;-><init>()V

    goto :goto_4

    :goto_5
    return-void

    .line 6
    :cond_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lf/q0;->b:Ljava/lang/Object;

    return-void

    .line 7
    :cond_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lf/q0;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1d

    iput v0, p0, Lf/q0;->a:I

    new-instance v0, Ll4/l;

    invoke-direct {v0, p1}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    iput v0, p0, Lf/q0;->a:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    new-instance v0, Lj0/f;

    invoke-direct {v0, p1, p2, p3}, Lj0/f;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    :goto_0
    iput-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v0, Lv1/t;

    const/4 v1, 0x5

    invoke-direct {v0, p1, p2, p3, v1}, Lv1/t;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/view/ContentInfo;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Lf/q0;->a:I

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {p1}, Landroidx/core/view/d;->f(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object p1

    iput-object p1, p0, Lf/q0;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lf/q0;->a:I

    if-eqz p1, :cond_0

    new-instance v0, Lr0/i;

    invoke-direct {v0, p1}, Lr0/i;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "textView cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lf/q0;->a:I

    iput-object p1, p0, Lf/q0;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x13

    iput v0, p0, Lf/q0;->a:I

    iput-object p1, p0, Lf/q0;->b:Ljava/lang/Object;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ly/o;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lf/q0;->a:I

    iput-object p1, p0, Lf/q0;->b:Ljava/lang/Object;

    return-void
.end method

.method public static B([Ljava/lang/Object;ILandroidx/fragment/app/x0;)Ljava/lang/Object;
    .locals 10

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x190

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x2bc

    .line 9
    .line 10
    :goto_0
    and-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    move p1, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move p1, v2

    .line 19
    :goto_1
    array-length v3, p0

    .line 20
    const/4 v4, 0x0

    .line 21
    const v5, 0x7fffffff

    .line 22
    .line 23
    .line 24
    move v6, v2

    .line 25
    :goto_2
    if-ge v6, v3, :cond_5

    .line 26
    .line 27
    aget-object v7, p0, v6

    .line 28
    .line 29
    iget v8, p2, Landroidx/fragment/app/x0;->a:I

    .line 30
    .line 31
    packed-switch v8, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    move-object v9, v7

    .line 35
    check-cast v9, Ly/h;

    .line 36
    .line 37
    iget v9, v9, Ly/h;->b:I

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :pswitch_0
    move-object v9, v7

    .line 41
    check-cast v9, Le0/k;

    .line 42
    .line 43
    iget v9, v9, Le0/k;->c:I

    .line 44
    .line 45
    :goto_3
    sub-int/2addr v9, v0

    .line 46
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    mul-int/lit8 v9, v9, 0x2

    .line 51
    .line 52
    packed-switch v8, :pswitch_data_1

    .line 53
    .line 54
    .line 55
    move-object v8, v7

    .line 56
    check-cast v8, Ly/h;

    .line 57
    .line 58
    iget-boolean v8, v8, Ly/h;->c:Z

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :pswitch_1
    move-object v8, v7

    .line 62
    check-cast v8, Le0/k;

    .line 63
    .line 64
    iget-boolean v8, v8, Le0/k;->d:Z

    .line 65
    .line 66
    :goto_4
    if-ne v8, p1, :cond_2

    .line 67
    .line 68
    move v8, v2

    .line 69
    goto :goto_5

    .line 70
    :cond_2
    move v8, v1

    .line 71
    :goto_5
    add-int/2addr v9, v8

    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    if-le v5, v9, :cond_4

    .line 75
    .line 76
    :cond_3
    move-object v4, v7

    .line 77
    move v5, v9

    .line 78
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    return-object v4

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static D(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/f;
    .locals 0

    .line 1
    check-cast p0, Landroidx/cardview/widget/a;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/cardview/widget/a;->a:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    check-cast p0, Landroidx/cardview/widget/f;

    .line 6
    .line 7
    return-object p0
.end method


# virtual methods
.method public A(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    invoke-static {p1}, Lv1/f;->B(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return-object p4

    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lv1/f;->o(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p4

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw p2

    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p4
.end method

.method public C(I[Le0/k;)Le0/k;
    .locals 2

    .line 1
    new-instance v0, Landroidx/fragment/app/x0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/fragment/app/x0;-><init>(I)V

    invoke-static {p2, p1, v0}, Lf/q0;->B([Ljava/lang/Object;ILandroidx/fragment/app/x0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le0/k;

    return-object p1
.end method

.method public final E()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll4/l;

    .line 4
    .line 5
    const-string v1, "getenforce 2>/dev/null"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const-string v2, "Enforcing"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0
.end method

.method public final F()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->f:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    .line 19
    .line 20
    new-instance v1, Landroidx/activity/b;

    .line 21
    .line 22
    const/16 v2, 0x14

    .line 23
    .line 24
    invoke-direct {v1, p0, v2}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final G(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll4/l;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "[ -e "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "\'"

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v4, "\'\\\'\'"

    .line 20
    .line 21
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " ] && echo 1 || echo 0"

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    const-string v1, "1"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    const/4 p1, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const/4 p1, 0x0

    .line 80
    :goto_0
    return p1
.end method

.method public final H()Le3/b;
    .locals 14

    .line 1
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll4/l;

    .line 4
    .line 5
    invoke-virtual {v0}, Ll4/l;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Le3/b;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v3, ""

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    sget-object v11, Le3/a;->b:Le3/a;

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    invoke-direct/range {v1 .. v11}, Le3/b;-><init>(ZLjava/lang/String;ZLjava/lang/String;ZZZZZLe3/a;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Ll4/l;

    .line 33
    .line 34
    const-string v1, "uname -r"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const-string v2, ""

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_1

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    move-object v5, v0

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move-object v5, v2

    .line 77
    :goto_0
    if-nez v5, :cond_3

    .line 78
    .line 79
    goto/16 :goto_f

    .line 80
    .line 81
    :cond_3
    const-string v0, "[^0-9]"

    .line 82
    .line 83
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    .line 88
    .line 89
    const/4 v3, 0x2

    .line 90
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .line 92
    .line 93
    array-length v4, v0

    .line 94
    const/4 v6, 0x0

    .line 95
    move v7, v6

    .line 96
    :goto_1
    if-ge v7, v4, :cond_6

    .line 97
    .line 98
    aget-object v8, v0, v7

    .line 99
    .line 100
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-eqz v9, :cond_4

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    :catch_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-lt v8, v3, :cond_5

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_6
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-ge v0, v3, :cond_7

    .line 133
    .line 134
    goto/16 :goto_f

    .line 135
    .line 136
    :cond_7
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Ljava/lang/Integer;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    const/4 v3, 0x1

    .line 147
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Ljava/lang/Integer;

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    const/4 v4, 0x3

    .line 158
    if-eq v0, v4, :cond_8

    .line 159
    .line 160
    if-le v0, v4, :cond_15

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_8
    const/16 v0, 0x13

    .line 164
    .line 165
    if-lt v1, v0, :cond_15

    .line 166
    .line 167
    :goto_4
    const-string v0, "/sys/kernel/config"

    .line 168
    .line 169
    invoke-virtual {p0, v0}, Lf/q0;->G(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    const-string v1, "/config/usb_gadget"

    .line 174
    .line 175
    if-nez v0, :cond_a

    .line 176
    .line 177
    invoke-virtual {p0, v1}, Lf/q0;->G(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_9

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_9
    move v0, v6

    .line 185
    goto :goto_6

    .line 186
    :cond_a
    :goto_5
    move v0, v3

    .line 187
    :goto_6
    invoke-virtual {p0, v1}, Lf/q0;->G(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-nez v0, :cond_b

    .line 192
    .line 193
    new-instance v0, Le3/b;

    .line 194
    .line 195
    const/4 v4, 0x1

    .line 196
    const/4 v6, 0x0

    .line 197
    const/4 v7, 0x0

    .line 198
    const/4 v8, 0x0

    .line 199
    const/4 v9, 0x0

    .line 200
    const/4 v10, 0x0

    .line 201
    const/4 v11, 0x0

    .line 202
    invoke-virtual {p0}, Lf/q0;->E()Z

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    sget-object v13, Le3/a;->d:Le3/a;

    .line 207
    .line 208
    move-object v3, v0

    .line 209
    invoke-direct/range {v3 .. v13}, Le3/b;-><init>(ZLjava/lang/String;ZLjava/lang/String;ZZZZZLe3/a;)V

    .line 210
    .line 211
    .line 212
    return-object v0

    .line 213
    :cond_b
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v0, Ll4/l;

    .line 216
    .line 217
    const-string v4, "ls -1 /sys/class/udc 2>/dev/null"

    .line 218
    .line 219
    invoke-virtual {v0, v4}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_e

    .line 232
    .line 233
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    check-cast v4, Ljava/lang/String;

    .line 238
    .line 239
    if-nez v4, :cond_d

    .line 240
    .line 241
    move-object v4, v2

    .line 242
    goto :goto_7

    .line 243
    :cond_d
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    :goto_7
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    if-nez v7, :cond_c

    .line 252
    .line 253
    const-string v7, "ls:"

    .line 254
    .line 255
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    if-nez v7, :cond_c

    .line 260
    .line 261
    move-object v7, v4

    .line 262
    goto :goto_8

    .line 263
    :cond_e
    const/4 v0, 0x0

    .line 264
    move-object v7, v0

    .line 265
    :goto_8
    if-nez v7, :cond_f

    .line 266
    .line 267
    new-instance v0, Le3/b;

    .line 268
    .line 269
    const/4 v4, 0x1

    .line 270
    const/4 v7, 0x0

    .line 271
    const/4 v8, 0x0

    .line 272
    const/4 v9, 0x0

    .line 273
    const/4 v10, 0x0

    .line 274
    const/4 v11, 0x0

    .line 275
    invoke-virtual {p0}, Lf/q0;->E()Z

    .line 276
    .line 277
    .line 278
    move-result v12

    .line 279
    sget-object v13, Le3/a;->e:Le3/a;

    .line 280
    .line 281
    move-object v3, v0

    .line 282
    move v6, v1

    .line 283
    invoke-direct/range {v3 .. v13}, Le3/b;-><init>(ZLjava/lang/String;ZLjava/lang/String;ZZZZZLe3/a;)V

    .line 284
    .line 285
    .line 286
    return-object v0

    .line 287
    :cond_f
    const-string v0, "/dev/hidg0"

    .line 288
    .line 289
    invoke-virtual {p0, v0}, Lf/q0;->G(Ljava/lang/String;)Z

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    const-string v0, "/dev/hidg1"

    .line 294
    .line 295
    invoke-virtual {p0, v0}, Lf/q0;->G(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v9

    .line 299
    const-string v0, "/sys/class/scsi_host"

    .line 300
    .line 301
    invoke-virtual {p0, v0}, Lf/q0;->G(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-nez v0, :cond_11

    .line 306
    .line 307
    const-string v0, "/sys/module/g_mass_storage"

    .line 308
    .line 309
    invoke-virtual {p0, v0}, Lf/q0;->G(Ljava/lang/String;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_10

    .line 314
    .line 315
    goto :goto_9

    .line 316
    :cond_10
    move v10, v6

    .line 317
    goto :goto_a

    .line 318
    :cond_11
    :goto_9
    move v10, v3

    .line 319
    :goto_a
    const-string v0, "/sys/module/usb_f_rndis"

    .line 320
    .line 321
    invoke-virtual {p0, v0}, Lf/q0;->G(Ljava/lang/String;)Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-nez v0, :cond_13

    .line 326
    .line 327
    const-string v0, "/sys/module/usb_f_gsi"

    .line 328
    .line 329
    invoke-virtual {p0, v0}, Lf/q0;->G(Ljava/lang/String;)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_12

    .line 334
    .line 335
    goto :goto_b

    .line 336
    :cond_12
    move v11, v6

    .line 337
    goto :goto_c

    .line 338
    :cond_13
    :goto_b
    move v11, v3

    .line 339
    :goto_c
    invoke-virtual {p0}, Lf/q0;->E()Z

    .line 340
    .line 341
    .line 342
    move-result v12

    .line 343
    if-nez v8, :cond_14

    .line 344
    .line 345
    sget-object v0, Le3/a;->f:Le3/a;

    .line 346
    .line 347
    :goto_d
    move-object v13, v0

    .line 348
    goto :goto_e

    .line 349
    :cond_14
    sget-object v0, Le3/a;->a:Le3/a;

    .line 350
    .line 351
    goto :goto_d

    .line 352
    :goto_e
    new-instance v0, Le3/b;

    .line 353
    .line 354
    const/4 v4, 0x1

    .line 355
    move-object v3, v0

    .line 356
    move v6, v1

    .line 357
    invoke-direct/range {v3 .. v13}, Le3/b;-><init>(ZLjava/lang/String;ZLjava/lang/String;ZZZZZLe3/a;)V

    .line 358
    .line 359
    .line 360
    return-object v0

    .line 361
    :cond_15
    :goto_f
    new-instance v0, Le3/b;

    .line 362
    .line 363
    const/4 v4, 0x1

    .line 364
    const/4 v6, 0x0

    .line 365
    const/4 v7, 0x0

    .line 366
    const/4 v8, 0x0

    .line 367
    const/4 v9, 0x0

    .line 368
    const/4 v10, 0x0

    .line 369
    const/4 v11, 0x0

    .line 370
    invoke-virtual {p0}, Lf/q0;->E()Z

    .line 371
    .line 372
    .line 373
    move-result v12

    .line 374
    sget-object v13, Le3/a;->c:Le3/a;

    .line 375
    .line 376
    move-object v3, v0

    .line 377
    invoke-direct/range {v3 .. v13}, Le3/b;-><init>(ZLjava/lang/String;ZLjava/lang/String;ZZZZZLe3/a;)V

    .line 378
    .line 379
    .line 380
    return-object v0
.end method

.method public final I()J
    .locals 4

    .line 1
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final J(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final a(Landroidx/cardview/widget/c;)F
    .locals 0

    .line 1
    invoke-static {p1}, Lf/q0;->D(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Landroidx/cardview/widget/f;->h:F

    .line 6
    .line 7
    return p1
.end method

.method public final b()Landroid/content/ClipData;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    invoke-static {v0}, Landroidx/core/view/d;->c(Landroid/view/ContentInfo;)Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroidx/appcompat/view/menu/o;Landroid/view/MenuItem;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lf/q0;->b:Ljava/lang/Object;

    check-cast p2, Landroidx/appcompat/view/menu/i;

    iget-object p2, p2, Landroidx/appcompat/view/menu/i;->g:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Landroidx/cardview/widget/c;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    invoke-static {p1}, Lf/q0;->D(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Landroidx/cardview/widget/f;->k:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object p1
.end method

.method public final e(Landroidx/appcompat/view/menu/o;Landroidx/appcompat/view/menu/q;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/i;

    iget-object v0, v0, Landroidx/appcompat/view/menu/i;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/i;

    iget-object v0, v0, Landroidx/appcompat/view/menu/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lf/q0;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/appcompat/view/menu/i;

    iget-object v4, v4, Landroidx/appcompat/view/menu/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/h;

    iget-object v4, v4, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/view/menu/o;

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/i;

    iget-object v0, v0, Landroidx/appcompat/view/menu/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/i;

    iget-object v0, v0, Landroidx/appcompat/view/menu/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/h;

    :cond_3
    move-object v4, v1

    new-instance v0, Landroidx/appcompat/view/menu/g;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/view/menu/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    iget-object p2, p0, Lf/q0;->b:Ljava/lang/Object;

    check-cast p2, Landroidx/appcompat/view/menu/i;

    iget-object p2, p2, Landroidx/appcompat/view/menu/i;->g:Landroid/os/Handler;

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public final f(Landroidx/cardview/widget/c;F)V
    .locals 2

    .line 1
    invoke-static {p1}, Lf/q0;->D(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v1, p2, v1

    .line 7
    .line 8
    if-ltz v1, :cond_1

    .line 9
    .line 10
    const/high16 v1, 0x3f000000    # 0.5f

    .line 11
    .line 12
    add-float/2addr p2, v1

    .line 13
    float-to-int p2, p2

    .line 14
    int-to-float p2, p2

    .line 15
    iget v1, v0, Landroidx/cardview/widget/f;->f:F

    .line 16
    .line 17
    cmpl-float v1, v1, p2

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput p2, v0, Landroidx/cardview/widget/f;->f:F

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    iput-boolean p2, v0, Landroidx/cardview/widget/f;->l:Z

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0, p1}, Lf/q0;->h(Landroidx/cardview/widget/c;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "Invalid radius "

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p2, ". Must be >= 0"

    .line 50
    .line 51
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public final g(Landroidx/cardview/widget/c;)F
    .locals 0

    .line 1
    invoke-static {p1}, Lf/q0;->D(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Landroidx/cardview/widget/f;->j:F

    .line 6
    .line 7
    return p1
.end method

.method public final h(Landroidx/cardview/widget/c;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lf/q0;->D(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/f;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Landroidx/cardview/widget/f;->getPadding(Landroid/graphics/Rect;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lf/q0;->k(Landroidx/cardview/widget/c;)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    float-to-double v1, v1

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    double-to-int v1, v1

    .line 23
    invoke-virtual {p0, p1}, Lf/q0;->j(Landroidx/cardview/widget/c;)F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    float-to-double v2, v2

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    double-to-int v2, v2

    .line 33
    check-cast p1, Landroidx/cardview/widget/a;

    .line 34
    .line 35
    invoke-virtual {p1, v1, v2}, Landroidx/cardview/widget/a;->a(II)V

    .line 36
    .line 37
    .line 38
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 39
    .line 40
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 41
    .line 42
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 43
    .line 44
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 45
    .line 46
    invoke-virtual {p1, v1, v2, v3, v0}, Landroidx/cardview/widget/a;->b(IIII)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final i(Landroidx/cardview/widget/c;)F
    .locals 0

    .line 1
    invoke-static {p1}, Lf/q0;->D(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Landroidx/cardview/widget/f;->f:F

    .line 6
    .line 7
    return p1
.end method

.method public final j(Landroidx/cardview/widget/c;)F
    .locals 6

    .line 1
    invoke-static {p1}, Lf/q0;->D(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Landroidx/cardview/widget/f;->h:F

    .line 6
    .line 7
    iget v1, p1, Landroidx/cardview/widget/f;->f:F

    .line 8
    .line 9
    iget v2, p1, Landroidx/cardview/widget/f;->a:I

    .line 10
    .line 11
    int-to-float v2, v2

    .line 12
    add-float/2addr v1, v2

    .line 13
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 14
    .line 15
    mul-float v4, v0, v3

    .line 16
    .line 17
    const/high16 v5, 0x40000000    # 2.0f

    .line 18
    .line 19
    div-float/2addr v4, v5

    .line 20
    add-float/2addr v4, v1

    .line 21
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    mul-float/2addr v0, v5

    .line 26
    iget p1, p1, Landroidx/cardview/widget/f;->h:F

    .line 27
    .line 28
    mul-float/2addr p1, v3

    .line 29
    add-float/2addr p1, v2

    .line 30
    mul-float/2addr p1, v5

    .line 31
    add-float/2addr p1, v0

    .line 32
    return p1
.end method

.method public final k(Landroidx/cardview/widget/c;)F
    .locals 5

    .line 1
    invoke-static {p1}, Lf/q0;->D(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Landroidx/cardview/widget/f;->h:F

    .line 6
    .line 7
    iget v1, p1, Landroidx/cardview/widget/f;->f:F

    .line 8
    .line 9
    iget v2, p1, Landroidx/cardview/widget/f;->a:I

    .line 10
    .line 11
    int-to-float v2, v2

    .line 12
    add-float/2addr v1, v2

    .line 13
    const/high16 v3, 0x40000000    # 2.0f

    .line 14
    .line 15
    div-float v4, v0, v3

    .line 16
    .line 17
    add-float/2addr v4, v1

    .line 18
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    mul-float/2addr v0, v3

    .line 23
    iget p1, p1, Landroidx/cardview/widget/f;->h:F

    .line 24
    .line 25
    add-float/2addr p1, v2

    .line 26
    mul-float/2addr p1, v3

    .line 27
    add-float/2addr p1, v0

    .line 28
    return p1
.end method

.method public final l(Landroidx/cardview/widget/a;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 7

    .line 1
    new-instance v6, Landroidx/cardview/widget/f;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v0, v6

    .line 8
    move-object v2, p3

    .line 9
    move v3, p4

    .line 10
    move v4, p5

    .line 11
    move v5, p6

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/cardview/widget/f;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p1, Landroidx/cardview/widget/a;->b:Landroidx/cardview/widget/CardView;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    iput-boolean p3, v6, Landroidx/cardview/widget/f;->o:Z

    .line 22
    .line 23
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 24
    .line 25
    .line 26
    iput-object v6, p1, Landroidx/cardview/widget/a;->a:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lf/q0;->h(Landroidx/cardview/widget/c;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final m()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    invoke-static {v0}, Landroidx/core/view/d;->b(Landroid/view/ContentInfo;)I

    move-result v0

    return v0
.end method

.method public final n(Landroidx/cardview/widget/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final o(Landroidx/cardview/widget/c;F)V
    .locals 1

    .line 1
    invoke-static {p1}, Lf/q0;->D(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Landroidx/cardview/widget/f;->h:F

    .line 6
    .line 7
    invoke-virtual {p1, p2, v0}, Landroidx/cardview/widget/f;->c(FF)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final p()Landroid/view/ContentInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    return-object v0
.end method

.method public final perform(Landroid/view/View;Lh0/o;)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lf/q0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->m(Landroid/view/View;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lf/q0;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p2, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->h(Landroid/view/View;)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    const/4 v0, 0x2

    .line 23
    if-eq p2, v0, :cond_0

    .line 24
    .line 25
    iget-object p2, p0, Lf/q0;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p2, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method public final q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    invoke-static {v0}, Landroidx/core/view/d;->o(Landroid/view/ContentInfo;)I

    move-result v0

    return v0
.end method

.method public final r(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final s(Landroidx/cardview/widget/c;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lf/q0;->D(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, Landroidx/cardview/widget/a;

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/cardview/widget/a;->b:Landroidx/cardview/widget/CardView;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput-boolean v1, v0, Landroidx/cardview/widget/f;->o:Z

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lf/q0;->h(Landroidx/cardview/widget/c;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/zalexdev/stryker/engine/RootlessService;

    .line 4
    .line 5
    sget v1, Lcom/zalexdev/stryker/engine/RootlessService;->a:I

    .line 6
    .line 7
    const-string v1, "Linux VM ready"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/engine/RootlessService;->c(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lf/q0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "ContentInfoCompat{"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lf/q0;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Landroid/view/ContentInfo;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "}"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public final u(Landroidx/cardview/widget/c;Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lf/q0;->D(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :cond_0
    iput-object p2, p1, Landroidx/cardview/widget/f;->k:Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p1, Landroidx/cardview/widget/f;->k:Landroid/content/res/ColorStateList;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    iget-object v0, p1, Landroidx/cardview/widget/f;->b:Landroid/graphics/Paint;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/zalexdev/stryker/engine/RootlessService;

    .line 4
    .line 5
    const-string v1, "VM failed: "

    .line 6
    .line 7
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget v1, Lcom/zalexdev/stryker/engine/RootlessService;->a:I

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/engine/RootlessService;->c(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final w(Landroidx/cardview/widget/c;F)V
    .locals 2

    .line 1
    invoke-static {p1}, Lf/q0;->D(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Landroidx/cardview/widget/f;->j:F

    .line 6
    .line 7
    invoke-virtual {v0, v1, p2}, Landroidx/cardview/widget/f;->c(FF)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lf/q0;->h(Landroidx/cardview/widget/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public x(Landroid/content/Context;Ly/g;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 9

    .line 1
    new-instance v0, Landroidx/fragment/app/x0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroidx/fragment/app/x0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p2, Ly/g;->a:[Ly/h;

    .line 8
    .line 9
    invoke-static {v2, p4, v0}, Lf/q0;->B([Ljava/lang/Object;ILandroidx/fragment/app/x0;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ly/h;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_0
    iget v8, v0, Ly/h;->f:I

    .line 20
    .line 21
    iget-object v0, v0, Ly/h;->a:Ljava/lang/String;

    .line 22
    .line 23
    sget-object v2, Lz/j;->a:Lf/q0;

    .line 24
    .line 25
    move-object v3, p1

    .line 26
    move-object v4, p3

    .line 27
    move v5, v8

    .line 28
    move-object v6, v0

    .line 29
    move v7, p4

    .line 30
    invoke-virtual/range {v2 .. v7}, Lf/q0;->A(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-static {p3, v8, v0, v2, p4}, Lz/j;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    sget-object p4, Lz/j;->b:Ln/f;

    .line 42
    .line 43
    invoke-virtual {p4, p3, p1}, Ln/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    const-string p3, "Could not retrieve font from family."

    .line 47
    .line 48
    const-string p4, "TypefaceCompatBaseImpl"

    .line 49
    .line 50
    const-wide/16 v2, 0x0

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    :goto_0
    move-wide p3, v2

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    :try_start_0
    const-class v0, Landroid/graphics/Typeface;

    .line 57
    .line 58
    const-string v4, "native_instance"

    .line 59
    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 74
    .line 75
    .line 76
    move-result-wide p3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    goto :goto_1

    .line 80
    :catch_1
    move-exception v0

    .line 81
    :goto_1
    invoke-static {p4, p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :goto_2
    cmp-long v0, p3, v2

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    .line 93
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-virtual {v0, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    :cond_3
    return-object p1
.end method

.method public y(Landroid/content/Context;[Le0/k;I)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    return-object v2

    .line 7
    :cond_0
    invoke-virtual {p0, p3, p2}, Lf/q0;->C(I[Le0/k;)Le0/k;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    iget-object p2, p2, Le0/k;->a:Landroid/net/Uri;

    .line 16
    .line 17
    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 18
    .line 19
    .line 20
    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lf/q0;->z(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {p2}, Lv1/f;->l(Ljava/io/Closeable;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    move-object v2, p2

    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-object p2, v2

    .line 35
    goto :goto_1

    .line 36
    :goto_0
    invoke-static {v2}, Lv1/f;->l(Ljava/io/Closeable;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :catch_1
    :goto_1
    invoke-static {p2}, Lv1/f;->l(Ljava/io/Closeable;)V

    .line 41
    .line 42
    .line 43
    return-object v2
.end method

.method public z(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    invoke-static {p1}, Lv1/f;->B(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lv1/f;->p(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw p2

    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object v0
.end method
