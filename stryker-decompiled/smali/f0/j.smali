.class public abstract Lf0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf0/i;

.field public static final b:Lf0/i;

.field public static final c:Lf0/i;

.field public static final d:Lf0/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lf0/i;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf0/i;-><init>(Lf0/f;Z)V

    sput-object v0, Lf0/j;->a:Lf0/i;

    new-instance v0, Lf0/i;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lf0/i;-><init>(Lf0/f;Z)V

    sput-object v0, Lf0/j;->b:Lf0/i;

    new-instance v0, Lf0/i;

    sget-object v1, Lf0/f;->a:Lf0/f;

    invoke-direct {v0, v1, v2}, Lf0/i;-><init>(Lf0/f;Z)V

    sput-object v0, Lf0/j;->c:Lf0/i;

    new-instance v0, Lf0/i;

    invoke-direct {v0, v1, v3}, Lf0/i;-><init>(Lf0/f;Z)V

    sput-object v0, Lf0/j;->d:Lf0/i;

    return-void
.end method
