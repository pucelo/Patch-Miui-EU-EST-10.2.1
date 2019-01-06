.class public Lcom/android/internal/view/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "ActionMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final NO_ICON:I


# instance fields
.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mGroup:I

.field private mHasIconTint:Z

.field private mHasIconTintMode:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .registers 10

    const/4 v2, 0x0

    const/16 v1, 0x1000

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconResId:I

    iput-object v2, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTint:Z

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mId:I

    iput p2, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mGroup:I

    iput p4, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mCategoryOrder:I

    iput p5, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mOrdering:I

    iput-object p6, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method private applyIconTint()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    if-eqz v0, :cond_2a

    :cond_c
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTint:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1f
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2a
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .registers 2

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    iget-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericModifiers()I
    .registers 2

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    return v0
.end method

.method public getNumericShortcut()C
    .registers 2

    iget-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .registers 2

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mOrdering:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    goto :goto_6
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTooltipText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public invoke()Z
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v2

    :cond_e
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isChecked()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isEnabled()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isVisible()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 4

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    return-object p0

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 4

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x3

    if-eqz p1, :cond_b

    const/4 v0, 0x2

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    return-object p0

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 4

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x11

    if-eqz p1, :cond_c

    const/16 v0, 0x10

    :goto_8
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    return-object p0

    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setExclusiveCheckable(Z)Lcom/android/internal/view/menu/ActionMenuItem;
    .registers 4

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_b

    const/4 v0, 0x4

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    return-object p0

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconResId:I

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItem;->applyIconTint()V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconResId:I

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItem;->applyIconTint()V

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .registers 3

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTint:Z

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItem;->applyIconTint()V

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .registers 3

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItem;->applyIconTint()V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 2

    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 4

    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .registers 6

    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 2

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setShowAsAction(I)V

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTooltipText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 4

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, 0x8

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    return-object p0

    :cond_b
    const/16 v0, 0x8

    goto :goto_7
.end method