.class public abstract Landroidx/dynamicanimation/animation/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mPropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/j;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method public static createFloatPropertyCompat(Landroid/util/FloatProperty;)Landroidx/dynamicanimation/animation/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/FloatProperty<",
            "TT;>;)",
            "Landroidx/dynamicanimation/animation/j;"
        }
    .end annotation

    new-instance v0, Landroidx/dynamicanimation/animation/i;

    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidx/dynamicanimation/animation/i;-><init>(Ljava/lang/String;Landroid/util/FloatProperty;)V

    return-object v0
.end method


# virtual methods
.method public abstract getValue(Ljava/lang/Object;)F
.end method

.method public abstract setValue(Ljava/lang/Object;F)V
.end method
