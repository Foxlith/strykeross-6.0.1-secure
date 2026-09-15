.class public final Lcom/stryker/terminal/utils/RangedInt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final number:I

.field private final range:Ln5/c;


# direct methods
.method public constructor <init>(ILn5/c;)V
    .locals 1

    .line 1
    const-string v0, "range"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/stryker/terminal/utils/RangedInt;->number:I

    iput-object p2, p0, Lcom/stryker/terminal/utils/RangedInt;->range:Ln5/c;

    return-void
.end method


# virtual methods
.method public final dec()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/stryker/terminal/utils/RangedInt;->number:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/stryker/terminal/utils/RangedInt;->range:Ln5/c;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ln5/c;->a(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/stryker/terminal/utils/RangedInt;->range:Ln5/c;

    .line 31
    .line 32
    iget v0, v0, Ln5/a;->b:I

    .line 33
    .line 34
    :goto_1
    return v0
.end method

.method public final inc()I
    .locals 3

    iget v0, p0, Lcom/stryker/terminal/utils/RangedInt;->number:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/stryker/terminal/utils/RangedInt;->range:Ln5/c;

    invoke-virtual {v2, v1}, Ln5/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
