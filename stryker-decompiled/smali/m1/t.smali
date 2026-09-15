.class public interface abstract Lm1/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lm1/s;

.field public static final b:Lm1/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm1/s;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm1/t;->a:Lm1/s;

    .line 7
    .line 8
    new-instance v0, Lm1/r;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lm1/t;->b:Lm1/r;

    .line 14
    .line 15
    return-void
.end method
