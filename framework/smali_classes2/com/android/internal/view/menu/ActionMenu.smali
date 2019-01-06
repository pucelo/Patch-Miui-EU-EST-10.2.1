.class public Lcom/android/internal/view/menu/ActionMenu;
.super Ljava/lang/Object;
.source "ActionMenu.java"

# interfaces
.implements Landroid/view/Menu;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsQwerty:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/ActionMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method private findItemIndex(I)I
    .registers 6

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_16

    return v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_19
    const/4 v3, -0x1

    return v3
.end method

.method private findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;
    .registers 15

    const v11, 0x1100f

    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenu;->mIsQwerty:Z

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v5

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v3, :cond_3f

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuItem;

    if-eqz v6, :cond_30

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuItem;->getAlphabeticShortcut()C

    move-result v7

    :goto_1e
    if-eqz v6, :cond_35

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuItem;->getAlphabeticModifiers()I

    move-result v8

    :goto_24
    and-int v9, v5, v11

    and-int v10, v8, v11

    if-ne v9, v10, :cond_3a

    const/4 v1, 0x1

    :goto_2b
    if-ne p1, v7, :cond_3c

    if-eqz v1, :cond_3c

    return-object v2

    :cond_30
    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuItem;->getNumericShortcut()C

    move-result v7

    goto :goto_1e

    :cond_35
    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuItem;->getNumericModifiers()I

    move-result v8

    goto :goto_24

    :cond_3a
    const/4 v1, 0x0

    goto :goto_2b

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_3f
    const/4 v9, 0x0

    return-object v9
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/ActionMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 12

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 22

    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v10, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_67

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    :goto_17
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_1e

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->removeGroup(I)V

    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v3, :cond_6e

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    new-instance v9, Landroid/content/Intent;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_69

    move-object/from16 v10, p6

    :goto_2f
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz p8, :cond_64

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_64

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_67
    const/4 v3, 0x0

    goto :goto_17

    :cond_69
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2f

    :cond_6e
    return v3
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6

    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 6

    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .registers 5

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1a

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    return v3

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1a
    const/4 v3, 0x0

    return v3
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public performIdentifierAction(II)Z
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v0

    if-gez v0, :cond_8

    return v1

    :cond_8
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->invoke()Z

    move-result v1

    return v1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuItem;->invoke()Z

    move-result v1

    return v1
.end method

.method public removeGroup(I)V
    .registers 6

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1e

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1b

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method public removeItem(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 9

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_1e

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_1b

    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    invoke-virtual {v1, p3}, Lcom/android/internal/view/menu/ActionMenuItem;->setExclusiveCheckable(Z)Lcom/android/internal/view/menu/ActionMenuItem;

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 8

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_1b

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_18

    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1b
    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 8

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_1b

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_18

    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1b
    return-void
.end method

.method public setQwertyMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenu;->mIsQwerty:Z

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
