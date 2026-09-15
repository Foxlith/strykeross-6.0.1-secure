.class public final Lcom/stryker/terminal/frontend/session/terminal/TitleChangedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TitleChangedEvent;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TitleChangedEvent;->title:Ljava/lang/String;

    return-object v0
.end method
