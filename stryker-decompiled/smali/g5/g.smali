.class public final Lg5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp5/g;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lg5/h;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    sget-object v0, Lg5/h;->a:Lg5/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lg5/g;->a:Ljava/io/File;

    .line 7
    .line 8
    iput-object v0, p0, Lg5/g;->b:Lg5/h;

    .line 9
    .line 10
    const p1, 0x7fffffff

    .line 11
    .line 12
    .line 13
    iput p1, p0, Lg5/g;->c:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lg5/e;

    invoke-direct {v0, p0}, Lg5/e;-><init>(Lg5/g;)V

    return-object v0
.end method
