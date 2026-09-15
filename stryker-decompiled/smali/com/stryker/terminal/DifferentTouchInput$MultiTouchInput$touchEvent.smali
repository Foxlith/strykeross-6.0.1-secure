.class Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "touchEvent"
.end annotation


# instance fields
.field public down:Z

.field public pressure:I

.field public size:I

.field final synthetic this$0:Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;

.field public x:I

.field public y:I


# direct methods
.method private constructor <init>(Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->this$0:Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    iput p1, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->x:I

    iput p1, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->y:I

    iput p1, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    iput p1, p0, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;->size:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;Lcom/stryker/terminal/DifferentTouchInput$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput$touchEvent;-><init>(Lcom/stryker/terminal/DifferentTouchInput$MultiTouchInput;)V

    return-void
.end method
