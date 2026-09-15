.class public interface abstract Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/component/pm/NeoPackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParseStateListener"
.end annotation


# virtual methods
.method public abstract onCreatePackageInfo()Lcom/stryker/terminal/component/pm/NeoPackageInfo;
.end method

.method public abstract onEndParsePackage(Lcom/stryker/terminal/component/pm/NeoPackageInfo;)V
.end method

.method public abstract onEndState()V
.end method

.method public abstract onStartParsePackage(Ljava/lang/String;Lcom/stryker/terminal/component/pm/NeoPackageInfo;)V
.end method

.method public abstract onStartState()V
.end method
