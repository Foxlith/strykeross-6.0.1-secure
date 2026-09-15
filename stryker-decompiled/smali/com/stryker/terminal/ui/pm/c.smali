.class public final synthetic Lcom/stryker/terminal/ui/pm/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/ui/pm/c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/ui/pm/c;->a:Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->m(Ljava/util/List;Landroid/content/DialogInterface;IZ)V

    return-void
.end method
