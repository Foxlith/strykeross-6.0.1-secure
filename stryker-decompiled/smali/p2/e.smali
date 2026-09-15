.class public final synthetic Lp2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/e;->a:Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    sget-object p1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->E:[Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    iget-object p3, p0, Lp2/e;->a:Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 5
    .line 6
    if-ne p2, p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->j()V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method
