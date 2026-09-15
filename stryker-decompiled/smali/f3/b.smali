.class public final Lf3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/util/Set;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Z

.field public final m:Z

.field public final n:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;ILjava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lf3/b;->a:J

    iput-object p3, p0, Lf3/b;->b:Ljava/lang/String;

    iput p4, p0, Lf3/b;->c:I

    invoke-static {p5}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lf3/b;->d:Ljava/util/Set;

    iput-object p6, p0, Lf3/b;->e:Ljava/lang/String;

    iput-object p7, p0, Lf3/b;->f:Ljava/lang/String;

    iput-object p8, p0, Lf3/b;->g:Ljava/lang/String;

    iput-object p9, p0, Lf3/b;->h:Ljava/lang/String;

    iput-object p10, p0, Lf3/b;->i:Ljava/lang/String;

    iput-object p11, p0, Lf3/b;->j:Ljava/lang/String;

    iput-object p12, p0, Lf3/b;->k:Ljava/lang/String;

    iput-boolean p13, p0, Lf3/b;->l:Z

    iput-boolean p14, p0, Lf3/b;->m:Z

    iput-object p15, p0, Lf3/b;->n:Ljava/lang/String;

    return-void
.end method
