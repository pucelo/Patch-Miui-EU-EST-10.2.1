.class Lcom/android/internal/policy/DecorView$5;
.super Ljava/lang/Object;
.source "DecorView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/DecorView;

.field final synthetic val$mode:Lcom/android/internal/view/FloatingActionMode;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/view/FloatingActionMode;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/policy/DecorView$5;->this$0:Lcom/android/internal/policy/DecorView;

    iput-object p2, p0, Lcom/android/internal/policy/DecorView$5;->val$mode:Lcom/android/internal/view/FloatingActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$5;->val$mode:Lcom/android/internal/view/FloatingActionMode;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode;->updateViewLocationInWindow()V

    const/4 v0, 0x1

    return v0
.end method
