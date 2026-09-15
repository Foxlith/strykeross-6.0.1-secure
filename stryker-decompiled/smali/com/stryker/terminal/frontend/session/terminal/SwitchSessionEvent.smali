.class public final Lcom/stryker/terminal/frontend/session/terminal/SwitchSessionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final toNext:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/stryker/terminal/frontend/session/terminal/SwitchSessionEvent;->toNext:Z

    return-void
.end method


# virtual methods
.method public final getToNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/session/terminal/SwitchSessionEvent;->toNext:Z

    return v0
.end method
