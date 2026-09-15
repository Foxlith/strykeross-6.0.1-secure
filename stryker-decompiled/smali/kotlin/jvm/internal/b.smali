.class public abstract Lkotlin/jvm/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo5/b;
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;


# instance fields
.field private final isTopLevel:Z

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/Class;

.field protected final receiver:Ljava/lang/Object;

.field private transient reflected:Lo5/b;

.field private final signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/a;->a:Lkotlin/jvm/internal/a;

    sput-object v0, Lkotlin/jvm/internal/b;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/b;->receiver:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/jvm/internal/b;->owner:Ljava/lang/Class;

    iput-object p3, p0, Lkotlin/jvm/internal/b;->name:Ljava/lang/String;

    iput-object p4, p0, Lkotlin/jvm/internal/b;->signature:Ljava/lang/String;

    iput-boolean p5, p0, Lkotlin/jvm/internal/b;->isTopLevel:Z

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lo5/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lo5/b;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lo5/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lo5/b;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compute()Lo5/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/b;->reflected:Lo5/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->computeReflected()Lo5/b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/jvm/internal/b;->reflected:Lo5/b;

    :cond_0
    return-object v0
.end method

.method public abstract computeReflected()Lo5/b;
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lo5/b;

    move-result-object v0

    invoke-interface {v0}, Lo5/a;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/b;->receiver:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/b;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lo5/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/b;->owner:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v1, p0, Lkotlin/jvm/internal/b;->isTopLevel:Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    sget-object v1, Lkotlin/jvm/internal/p;->a:Lkotlin/jvm/internal/q;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v1, Lkotlin/jvm/internal/k;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lkotlin/jvm/internal/k;-><init>(Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    move-object v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/d;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lo5/b;

    move-result-object v0

    invoke-interface {v0}, Lo5/b;->getParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getReflected()Lo5/b;
.end method

.method public getReturnType()Lo5/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lo5/b;

    move-result-object v0

    invoke-interface {v0}, Lo5/b;->getReturnType()Lo5/f;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/b;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lo5/b;

    move-result-object v0

    invoke-interface {v0}, Lo5/b;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Lo5/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lo5/b;

    move-result-object v0

    invoke-interface {v0}, Lo5/b;->getVisibility()Lo5/g;

    move-result-object v0

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lo5/b;

    move-result-object v0

    invoke-interface {v0}, Lo5/b;->isAbstract()Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lo5/b;

    move-result-object v0

    invoke-interface {v0}, Lo5/b;->isFinal()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lo5/b;

    move-result-object v0

    invoke-interface {v0}, Lo5/b;->isOpen()Z

    move-result v0

    return v0
.end method
