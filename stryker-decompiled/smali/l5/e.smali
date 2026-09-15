.class public abstract Ll5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll5/d;

.field public static final b:Ll5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ll5/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ll5/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll5/e;->a:Ll5/d;

    .line 7
    .line 8
    sget-object v0, Lf5/a;->a:Ljava/lang/Integer;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x22

    .line 17
    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ll5/c;

    .line 22
    .line 23
    invoke-direct {v0}, Ll5/c;-><init>()V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    new-instance v0, Lm5/a;

    .line 28
    .line 29
    invoke-direct {v0}, Ll5/e;-><init>()V

    .line 30
    .line 31
    .line 32
    :goto_1
    sput-object v0, Ll5/e;->b:Ll5/a;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
