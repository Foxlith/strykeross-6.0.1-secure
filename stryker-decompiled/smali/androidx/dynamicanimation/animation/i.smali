.class public final Landroidx/dynamicanimation/animation/i;
.super Landroidx/dynamicanimation/animation/j;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/util/FloatProperty;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/FloatProperty;)V
    .locals 0

    iput-object p2, p0, Landroidx/dynamicanimation/animation/i;->a:Landroid/util/FloatProperty;

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/j;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/i;->a:Landroid/util/FloatProperty;

    invoke-virtual {v0, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/i;->a:Landroid/util/FloatProperty;

    invoke-virtual {v0, p1, p2}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    return-void
.end method
