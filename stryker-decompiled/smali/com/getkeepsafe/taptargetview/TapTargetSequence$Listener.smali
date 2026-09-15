.class public interface abstract Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/taptargetview/TapTargetSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onSequenceCanceled(Lcom/getkeepsafe/taptargetview/TapTarget;)V
.end method

.method public abstract onSequenceFinish()V
.end method

.method public abstract onSequenceStep(Lcom/getkeepsafe/taptargetview/TapTarget;Z)V
.end method
