.class public Lcom/android/internal/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuHelper;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_9
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    if-nez p2, :cond_6

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_9

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    :cond_9
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    :cond_12
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0x52

    if-eq p2, v3, :cond_9

    const/4 v3, 0x4

    if-ne p2, v3, :cond_5e

    :cond_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_5e

    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v4

    :cond_2d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_5e

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_5e

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v4

    :cond_5e
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, p2, p3, v5}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    return v3
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .registers 9

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x109007c

    invoke-direct {v4, v5, v6}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/android/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_64

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :goto_37
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v4, 0x3eb

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz p1, :cond_57

    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_57
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v4, p0, Lcom/android/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_64
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_37
.end method