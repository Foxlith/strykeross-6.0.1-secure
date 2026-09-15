.class public final Lcom/stryker/terminal/component/userscript/UserScript;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final scriptFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "scriptFile"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/component/userscript/UserScript;->scriptFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final getScriptFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/userscript/UserScript;->scriptFile:Ljava/io/File;

    return-object v0
.end method
