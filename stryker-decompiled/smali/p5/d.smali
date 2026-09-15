.class public final Lp5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp5/g;
.implements Lp5/c;


# static fields
.field public static final a:Lp5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lp5/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp5/d;->a:Lp5/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)Lp5/g;
    .locals 0

    .line 1
    sget-object p1, Lp5/d;->a:Lp5/d;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    sget-object v0, Lx4/n;->a:Lx4/n;

    return-object v0
.end method
