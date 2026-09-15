.class public final Lc1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/g;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "query"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lc1/a;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc1/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ly0/t;)V
    .locals 0

    .line 1
    return-void
.end method
