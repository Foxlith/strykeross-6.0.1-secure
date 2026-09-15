.class public final Le0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 1
    new-instance v0, Le0/l;

    iget-object v1, p0, Le0/m;->a:Ljava/lang/String;

    iget v2, p0, Le0/m;->b:I

    invoke-direct {v0, p1, v1, v2}, Le0/l;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-object v0
.end method
