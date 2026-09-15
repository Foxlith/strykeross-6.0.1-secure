.class public final Lr0/a;
.super Ld/d;
.source "SourceFile"


# instance fields
.field public final e:Landroid/widget/EditText;

.field public final f:Lr0/k;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 5

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ld/d;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lr0/a;->e:Landroid/widget/EditText;

    .line 7
    .line 8
    new-instance v0, Lr0/k;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lr0/k;-><init>(Landroid/widget/EditText;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lr0/a;->f:Lr0/k;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lr0/c;->b:Lr0/c;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lr0/c;->a:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lr0/c;->b:Lr0/c;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Lr0/c;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/text/Editable$Factory;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    .line 33
    .line 34
    :try_start_1
    const-string v2, "android.text.DynamicLayout$ChangeWatcher"

    .line 35
    .line 36
    const-class v3, Lr0/c;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    sput-object v2, Lr0/c;->c:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    :catchall_0
    :try_start_2
    sput-object v1, Lr0/c;->b:Lr0/c;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit v0

    .line 55
    goto :goto_2

    .line 56
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    throw p1

    .line 58
    :cond_1
    :goto_2
    sget-object v0, Lr0/c;->b:Lr0/c;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final e(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1

    .line 1
    instance-of v0, p1, Lr0/g;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    new-instance v0, Lr0/g;

    invoke-direct {v0, p1}, Lr0/g;-><init>(Landroid/text/method/KeyListener;)V

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr0/a;->f:Lr0/k;

    .line 2
    .line 3
    iget-boolean v0, v0, Lr0/k;->d:Z

    .line 4
    .line 5
    return v0
.end method

.method public final m(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 1
    instance-of v0, p1, Lr0/d;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lr0/d;

    iget-object v1, p0, Lr0/a;->e:Landroid/widget/EditText;

    invoke-direct {v0, v1, p1, p2}, Lr0/d;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    return-object v0
.end method

.method public final r(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lr0/a;->f:Lr0/k;

    .line 2
    .line 3
    iget-boolean v1, v0, Lr0/k;->d:Z

    .line 4
    .line 5
    if-eq v1, p1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lr0/k;->c:Lr0/j;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroidx/emoji2/text/l;->a()Landroidx/emoji2/text/l;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v0, Lr0/k;->c:Lr0/j;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string v3, "initCallback cannot be null"

    .line 21
    .line 22
    invoke-static {v2, v3}, Lv1/f;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, v1, Landroidx/emoji2/text/l;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 32
    .line 33
    .line 34
    :try_start_0
    iget-object v1, v1, Landroidx/emoji2/text/l;->b:Ln/c;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ln/c;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_0
    :goto_0
    iput-boolean p1, v0, Lr0/k;->d:Z

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    invoke-static {}, Landroidx/emoji2/text/l;->a()Landroidx/emoji2/text/l;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroidx/emoji2/text/l;->b()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iget-object v0, v0, Lr0/k;->a:Landroid/widget/EditText;

    .line 69
    .line 70
    invoke-static {v0, p1}, Lr0/k;->a(Landroid/widget/EditText;I)V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method
