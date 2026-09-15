.class public final Landroidx/dynamicanimation/animation/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Ln/k;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lf/q0;

.field public d:Landroidx/dynamicanimation/animation/c;

.field public e:J

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/dynamicanimation/animation/d;->g:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ln/k;

    invoke-direct {v0}, Ln/k;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/d;->a:Ln/k;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/d;->b:Ljava/util/ArrayList;

    new-instance v0, Lf/q0;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lf/q0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/d;->c:Lf/q0;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/d;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/d;->f:Z

    return-void
.end method
