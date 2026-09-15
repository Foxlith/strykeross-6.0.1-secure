.class public final Landroidx/core/view/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz/f;

.field public final b:Lz/f;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Landroidx/core/view/z1;->g(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lz/f;->c(Landroid/graphics/Insets;)Lz/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/t1;->a:Lz/f;

    .line 2
    invoke-static {p1}, Landroidx/core/view/z1;->u(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Lz/f;->c(Landroid/graphics/Insets;)Lz/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/t1;->b:Lz/f;

    return-void
.end method

.method public constructor <init>(Lz/f;Lz/f;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/t1;->a:Lz/f;

    iput-object p2, p0, Landroidx/core/view/t1;->b:Lz/f;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bounds{lower="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/core/view/t1;->a:Lz/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " upper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/view/t1;->b:Lz/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
