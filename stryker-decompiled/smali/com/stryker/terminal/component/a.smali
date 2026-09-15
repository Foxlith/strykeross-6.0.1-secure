.class public final synthetic Lcom/stryker/terminal/component/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/stryker/terminal/component/a;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/stryker/terminal/component/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lcom/stryker/terminal/component/font/FontComponent;->a(Ljava/io/File;)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-static {p1}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->a(Ljava/io/File;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
