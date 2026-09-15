.class public final Ll5/c;
.super Ll5/a;
.source "SourceFile"


# instance fields
.field public final c:Ll5/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ll5/e;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll5/b;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ll5/c;->c:Ll5/b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Random;
    .locals 2

    .line 1
    iget-object v0, p0, Ll5/c;->c:Ll5/b;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "implStorage.get()"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method
