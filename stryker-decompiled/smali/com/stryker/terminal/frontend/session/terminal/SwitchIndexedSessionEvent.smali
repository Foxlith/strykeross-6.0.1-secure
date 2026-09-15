.class public final Lcom/stryker/terminal/frontend/session/terminal/SwitchIndexedSessionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final index:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/stryker/terminal/frontend/session/terminal/SwitchIndexedSessionEvent;->index:I

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/frontend/session/terminal/SwitchIndexedSessionEvent;->index:I

    return v0
.end method
