.class public abstract Lr5/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "kotlinx.coroutines.main.delay"

    .line 2
    .line 3
    sget v1, Lt5/j;->a:I

    .line 4
    .line 5
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :goto_1
    sget-object v0, Lr5/i;->f:Lr5/i;

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    sget-object v0, Lr5/n;->a:Lkotlinx/coroutines/scheduling/c;

    .line 24
    .line 25
    sget-object v0, Lt5/h;->a:Lr5/t;

    .line 26
    .line 27
    move-object v1, v0

    .line 28
    check-cast v1, Ls5/a;

    .line 29
    .line 30
    iget-object v1, v1, Ls5/a;->e:Ls5/a;

    .line 31
    .line 32
    instance-of v1, v0, Lr5/k;

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    sget-object v0, Lr5/i;->f:Lr5/i;

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    check-cast v0, Lr5/k;

    .line 40
    .line 41
    :goto_2
    return-void
.end method
