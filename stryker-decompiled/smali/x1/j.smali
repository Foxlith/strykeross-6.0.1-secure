.class public final enum Lx1/j;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum a:Lx1/j;

.field public static final synthetic b:[Lx1/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lx1/j;

    .line 2
    .line 3
    const-string v1, "INSTANCE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lx1/j;->a:Lx1/j;

    .line 10
    .line 11
    filled-new-array {v0}, [Lx1/j;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lx1/j;->b:[Lx1/j;

    .line 16
    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx1/j;
    .locals 1

    .line 1
    const-class v0, Lx1/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx1/j;

    return-object p0
.end method

.method public static values()[Lx1/j;
    .locals 1

    .line 1
    sget-object v0, Lx1/j;->b:[Lx1/j;

    invoke-virtual {v0}, [Lx1/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx1/j;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DirectExecutor"

    return-object v0
.end method
