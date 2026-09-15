.class public final Ls3/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ls3/m;->a:Ljava/lang/String;

    iput-object v0, p0, Ls3/m;->b:Ljava/lang/String;

    iput-object v0, p0, Ls3/m;->c:Ljava/lang/String;

    iput-object v0, p0, Ls3/m;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls3/m;->g:Ljava/util/ArrayList;

    return-void
.end method
