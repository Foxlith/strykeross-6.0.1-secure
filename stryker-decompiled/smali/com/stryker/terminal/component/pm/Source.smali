.class public Lcom/stryker/terminal/component/pm/Source;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/stryker/terminal/framework/database/annotation/Table;
.end annotation


# instance fields
.field public enabled:Z

.field private id:I
    .annotation runtime Lcom/stryker/terminal/framework/database/annotation/ID;
        autoIncrement = true
    .end annotation
.end field

.field public repo:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/component/pm/Source;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/stryker/terminal/component/pm/Source;->repo:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/stryker/terminal/component/pm/Source;->enabled:Z

    return-void
.end method
