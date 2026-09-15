.class public abstract Lv4/i;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "javax.servlet.LocalStrings"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lv4/i;->a:Ljava/util/ResourceBundle;

    return-void
.end method
