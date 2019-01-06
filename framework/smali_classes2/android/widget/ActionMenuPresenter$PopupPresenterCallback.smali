.class Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/widget/ActionMenuPresenter;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 6

    instance-of v1, p1, Lcom/android/internal/view/menu/SubMenuBuilder;

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    :cond_c
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter;->getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    :cond_17
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 6

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v3, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter;->getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v1

    :goto_1f
    return v1

    :cond_20
    move v1, v2

    goto :goto_1f
.end method
