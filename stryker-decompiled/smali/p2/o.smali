.class public final synthetic Lp2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/c;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp2/o;->a:Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    sget v0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->i:I

    .line 2
    .line 3
    iget-object v0, p0, Lp2/o;->a:Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->reload()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
