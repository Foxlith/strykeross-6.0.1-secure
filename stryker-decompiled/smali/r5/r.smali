.class public abstract Lr5/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu3/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu3/g;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Lu3/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/r;->a:Lu3/g;

    return-void
.end method
