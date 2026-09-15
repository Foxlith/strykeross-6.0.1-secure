.class Lcom/google/android/material/search/SearchBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/SearchBar;->setupTouchExplorationStateChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/search/SearchBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/search/SearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/search/SearchBar$1;->this$0:Lcom/google/android/material/search/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/search/SearchBar$1;->this$0:Lcom/google/android/material/search/SearchBar;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/material/search/SearchBar;->access$000(Lcom/google/android/material/search/SearchBar;)Landroid/view/accessibility/AccessibilityManager;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar$1;->this$0:Lcom/google/android/material/search/SearchBar;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/material/search/SearchBar;->access$100(Lcom/google/android/material/search/SearchBar;)Lh0/d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p1, v0}, Lh0/c;->a(Landroid/view/accessibility/AccessibilityManager;Lh0/d;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/search/SearchBar$1;->this$0:Lcom/google/android/material/search/SearchBar;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/material/search/SearchBar;->access$000(Lcom/google/android/material/search/SearchBar;)Landroid/view/accessibility/AccessibilityManager;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar$1;->this$0:Lcom/google/android/material/search/SearchBar;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/material/search/SearchBar;->access$100(Lcom/google/android/material/search/SearchBar;)Lh0/d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p1, v0}, Lh0/c;->b(Landroid/view/accessibility/AccessibilityManager;Lh0/d;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
