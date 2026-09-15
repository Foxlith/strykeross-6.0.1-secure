.class public final Lf3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLjava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lf3/c;->a:Z

    iput-boolean p2, p0, Lf3/c;->b:Z

    iput-object p3, p0, Lf3/c;->c:Ljava/lang/String;

    if-nez p4, :cond_0

    const-class p1, Lf3/a;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-static {p4}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    :goto_1
    iput-object p1, p0, Lf3/c;->d:Ljava/util/Set;

    iput-object p5, p0, Lf3/c;->e:Ljava/lang/String;

    return-void
.end method
