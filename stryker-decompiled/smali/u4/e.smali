.class public final Lu4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lu4/e;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu4/e;

    const-string v1, "<undefined>"

    invoke-direct {v0, v1}, Lu4/e;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lu4/e;->b:Lu4/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "rawValue"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu4/e;->a:Ljava/lang/Object;

    return-void
.end method
