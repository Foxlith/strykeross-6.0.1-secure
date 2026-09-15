.class final Lcom/stryker/terminal/ui/pm/PackageManagerActivity$sortDistance$2;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->sortDistance(Ljava/util/List;Ljava/lang/String;Lj5/l;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lj5/p;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stryker/terminal/ui/pm/PackageManagerActivity$sortDistance$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$sortDistance$2;

    invoke-direct {v0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$sortDistance$2;-><init>()V

    sput-object v0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$sortDistance$2;->INSTANCE:Lcom/stryker/terminal/ui/pm/PackageManagerActivity$sortDistance$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lw4/c;Lw4/c;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw4/c;",
            "Lw4/c;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1
    iget-object p2, p2, Lw4/c;->b:Ljava/lang/Object;

    .line 2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 3
    iget-object p1, p1, Lw4/c;->b:Ljava/lang/Object;

    .line 4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Li5/a;->t(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, Lw4/c;

    check-cast p2, Lw4/c;

    invoke-virtual {p0, p1, p2}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$sortDistance$2;->invoke(Lw4/c;Lw4/c;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
