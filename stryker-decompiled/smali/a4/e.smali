.class public final La4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:La4/g;

.field public final h:La4/c;

.field public final i:I

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La4/g;La4/c;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La4/e;->k:Ljava/util/ArrayList;

    iput-object p1, p0, La4/e;->a:Ljava/lang/String;

    iput-object p2, p0, La4/e;->b:Ljava/lang/String;

    iput-object p3, p0, La4/e;->c:Ljava/lang/String;

    iput-object p4, p0, La4/e;->d:Ljava/lang/String;

    iput-object p5, p0, La4/e;->e:Ljava/lang/String;

    iput-object p6, p0, La4/e;->f:Ljava/lang/String;

    iput-object p7, p0, La4/e;->g:La4/g;

    iput-object p8, p0, La4/e;->h:La4/c;

    iput p9, p0, La4/e;->i:I

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p7, La4/g;->a:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, La4/e;->j:Ljava/util/ArrayList;

    return-void
.end method
