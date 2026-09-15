.class public final Lr0/c;
.super Landroid/text/Editable$Factory;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static volatile b:Lr0/c;

.field public static c:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr0/c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 2

    .line 1
    sget-object v0, Lr0/c;->c:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroidx/emoji2/text/w;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Landroidx/emoji2/text/w;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
