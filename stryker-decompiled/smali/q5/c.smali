.class public final Lq5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp5/g;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:I

.field public final d:Lj5/p;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILq5/g;)V
    .locals 1

    .line 1
    const-string v0, "input"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq5/c;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lq5/c;->b:I

    iput p3, p0, Lq5/c;->c:I

    iput-object p4, p0, Lq5/c;->d:Lj5/p;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lq5/b;

    invoke-direct {v0, p0}, Lq5/b;-><init>(Lq5/c;)V

    return-object v0
.end method
