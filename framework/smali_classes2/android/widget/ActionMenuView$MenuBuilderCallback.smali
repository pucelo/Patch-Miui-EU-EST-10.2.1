.class Landroid/widget/ActionMenuView$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuView;


# direct methods
.method private constructor <init>(Landroid/widget/ActionMenuView;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$MenuBuilderCallback;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Landroid/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/widget/ActionMenuView;

    invoke-static {v0}, Landroid/widget/ActionMenuView;->-get1(Landroid/widget/ActionMenuView;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/widget/ActionMenuView;

    invoke-static {v0}, Landroid/widget/ActionMenuView;->-get1(Landroid/widget/ActionMenuView;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ActionMenuView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/widget/ActionMenuView;

    invoke-static {v0}, Landroid/widget/ActionMenuView;->-get0(Landroid/widget/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/widget/ActionMenuView;

    invoke-static {v0}, Landroid/widget/ActionMenuView;->-get0(Landroid/widget/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V

    :cond_11
    return-void
.end method
