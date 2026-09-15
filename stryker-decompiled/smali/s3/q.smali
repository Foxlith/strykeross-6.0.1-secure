.class public final Ls3/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public volatile b:Z

.field public volatile c:Z

.field public volatile d:Ljava/lang/String;

.field public volatile e:Ljava/lang/String;

.field public volatile f:Ljava/lang/String;

.field public volatile g:Ljava/lang/String;

.field public volatile h:Ljava/lang/String;

.field public volatile i:Ljava/lang/String;

.field public volatile j:Ljava/lang/String;

.field public volatile k:Ljava/lang/String;

.field public volatile l:D

.field public volatile m:I

.field public volatile n:I

.field public volatile o:Ls3/m;

.field public volatile p:Ls3/k;

.field public volatile q:Ls3/p;

.field public volatile r:Ls3/o;

.field public volatile s:Ls3/l;

.field public final t:Ljava/util/Set;

.field public final u:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ls3/q;->d:Ljava/lang/String;

    iput-object v0, p0, Ls3/q;->e:Ljava/lang/String;

    iput-object v0, p0, Ls3/q;->f:Ljava/lang/String;

    iput-object v0, p0, Ls3/q;->g:Ljava/lang/String;

    iput-object v0, p0, Ls3/q;->h:Ljava/lang/String;

    iput-object v0, p0, Ls3/q;->i:Ljava/lang/String;

    iput-object v0, p0, Ls3/q;->j:Ljava/lang/String;

    iput-object v0, p0, Ls3/q;->k:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Ls3/q;->m:I

    iput v0, p0, Ls3/q;->n:I

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ls3/q;->t:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls3/q;->u:Ljava/util/List;

    iput-object p1, p0, Ls3/q;->a:Ljava/lang/String;

    return-void
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2d

    const/16 v2, 0x3a

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-ne v1, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v6, v5, 0x2

    invoke-virtual {v1, p0, v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v5, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x11

    if-eq v1, v3, :cond_4

    return-object v0

    :cond_4
    move v1, v4

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    rem-int/lit8 v5, v1, 0x3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    move v5, v4

    :goto_2
    if-eqz v5, :cond_6

    if-eq v3, v2, :cond_6

    return-object v0

    :cond_6
    if-nez v5, :cond_9

    const/16 v5, 0x30

    if-lt v3, v5, :cond_7

    const/16 v5, 0x39

    if-le v3, v5, :cond_9

    :cond_7
    const/16 v5, 0x41

    if-lt v3, v5, :cond_8

    const/16 v5, 0x46

    if-le v3, v5, :cond_9

    :cond_8
    return-object v0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "FF:FF:FF:FF:FF:FF"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    return-object p0

    :cond_c
    :goto_3
    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, ""

    iget-object v1, p0, Ls3/q;->u:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Ls3/q;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls3/n;

    iget v4, v3, Ls3/n;->a:I

    if-ne v4, p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "unknown"

    iget-object v0, v3, Ls3/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p2, v3, Ls3/n;->b:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    iget-object v2, p0, Ls3/q;->u:Ljava/util/List;

    new-instance v3, Ls3/n;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p2, "unknown"

    :cond_3
    invoke-direct {v3, p1, p2, v0}, Ls3/n;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/q;->t:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ls3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ls3/q;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls3/q;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Ls3/q;->d:Ljava/lang/String;

    iput-object p2, p0, Ls3/q;->e:Ljava/lang/String;

    return-void
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ls3/q;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls3/q;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Ls3/q;->u:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ls3/q;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls3/n;

    iget v2, v2, Ls3/n;->a:I

    if-ne v2, p1, :cond_0

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
