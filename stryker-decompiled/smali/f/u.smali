.class public abstract Lf/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf/o0;

.field public static final b:I

.field public static c:Ld0/h;

.field public static d:Ld0/h;

.field public static e:Ljava/lang/Boolean;

.field public static f:Z

.field public static final g:Ln/c;

.field public static final h:Ljava/lang/Object;

.field public static final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lf/o0;

    .line 2
    .line 3
    new-instance v1, Lf/p0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lf/p0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lf/o0;-><init>(Lf/p0;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lf/u;->a:Lf/o0;

    .line 13
    .line 14
    const/16 v0, -0x64

    .line 15
    .line 16
    sput v0, Lf/u;->b:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lf/u;->c:Ld0/h;

    .line 20
    .line 21
    sput-object v0, Lf/u;->d:Ld0/h;

    .line 22
    .line 23
    sput-object v0, Lf/u;->e:Ljava/lang/Boolean;

    .line 24
    .line 25
    sput-boolean v2, Lf/u;->f:Z

    .line 26
    .line 27
    new-instance v0, Ln/c;

    .line 28
    .line 29
    invoke-direct {v0, v2}, Ln/c;-><init>(I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lf/u;->g:Ln/c;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/Object;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lf/u;->h:Ljava/lang/Object;

    .line 40
    .line 41
    new-instance v0, Ljava/lang/Object;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lf/u;->i:Ljava/lang/Object;

    .line 47
    .line 48
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget-object v0, Lf/u;->e:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    sget v0, Landroidx/appcompat/app/AppLocalesMetadataHolderService;->a:I

    .line 6
    .line 7
    invoke-static {}, Lf/m0;->a()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    or-int/lit16 v0, v0, 0x80

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Landroid/content/ComponentName;

    .line 18
    .line 19
    const-class v3, Landroidx/appcompat/app/AppLocalesMetadataHolderService;

    .line 20
    .line 21
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    const-string v0, "autoStoreLocales"

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sput-object p0, Lf/u;->e:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    sput-object p0, Lf/u;->e:Ljava/lang/Boolean;

    .line 48
    .line 49
    :cond_0
    :goto_0
    sget-object p0, Lf/u;->e:Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0
.end method

.method public static f(Lf/u;)V
    .locals 3

    .line 1
    sget-object v0, Lf/u;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf/u;->g:Ln/c;

    invoke-virtual {v1}, Ln/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/u;

    if-eq v2, p0, :cond_1

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract g(I)Z
.end method

.method public abstract h(I)V
.end method

.method public abstract i(Landroid/view/View;)V
.end method

.method public abstract j(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract k(Ljava/lang/CharSequence;)V
.end method

.method public abstract l(Li/b;)Li/c;
.end method
