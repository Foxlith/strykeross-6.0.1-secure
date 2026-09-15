.class public final Ls3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public final k:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ls3/p;->a:Ljava/lang/String;

    iput-object v0, p0, Ls3/p;->b:Ljava/lang/String;

    iput-object v0, p0, Ls3/p;->c:Ljava/lang/String;

    iput-object v0, p0, Ls3/p;->d:Ljava/lang/String;

    iput-object v0, p0, Ls3/p;->e:Ljava/lang/String;

    iput-object v0, p0, Ls3/p;->f:Ljava/lang/String;

    iput-object v0, p0, Ls3/p;->g:Ljava/lang/String;

    iput-object v0, p0, Ls3/p;->h:Ljava/lang/String;

    iput-object v0, p0, Ls3/p;->i:Ljava/lang/String;

    iput-object v0, p0, Ls3/p;->j:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls3/p;->k:Ljava/util/ArrayList;

    return-void
.end method
