.class public final synthetic Lo4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll4/l;


# direct methods
.method public synthetic constructor <init>(Ll4/l;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lo4/e;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lo4/e;->b:Ll4/l;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lo4/e;->a:I

    iget-object v1, p0, Lo4/e;->b:Ll4/l;

    invoke-virtual {v1}, Ll4/l;->t0()V

    return-void
.end method
