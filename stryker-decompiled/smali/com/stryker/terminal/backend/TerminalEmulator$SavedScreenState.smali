.class final Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/backend/TerminalEmulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedScreenState"
.end annotation


# instance fields
.field mSavedBackColor:I

.field mSavedCursorCol:I

.field mSavedCursorRow:I

.field mSavedDecFlags:I

.field mSavedEffect:I

.field mSavedForeColor:I

.field mUseLineDrawingG0:Z

.field mUseLineDrawingG1:Z

.field mUseLineDrawingUsesG0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stryker/terminal/backend/TerminalEmulator$SavedScreenState;->mUseLineDrawingUsesG0:Z

    return-void
.end method
