.class Lcom/getkeepsafe/taptargetview/TapTargetView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$EndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/taptargetview/TapTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;


# direct methods
.method public constructor <init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 0

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$7;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$7;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->access$100(Lcom/getkeepsafe/taptargetview/TapTargetView;Z)V

    return-void
.end method
