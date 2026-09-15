.class public final synthetic Lcom/stryker/terminal/component/completion/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic a:Lj5/l;


# direct methods
.method public synthetic constructor <init>(Lj5/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/component/completion/a;->a:Lj5/l;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/component/completion/a;->a:Lj5/l;

    invoke-static {v0, p1}, Lcom/stryker/terminal/component/completion/FileCompletionProvider;->a(Lj5/l;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
