.class public Lcom/android/server/InputMethodManagerServiceInjector;
.super Ljava/lang/Object;
.source "InputMethodManagerServiceInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableSystemIMEsIfThereIsNoEnabledIME(Ljava/util/ArrayList;Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;",
            ")V"
        }
    .end annotation

    sget-boolean v6, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v6, :cond_6

    if-nez p0, :cond_7

    :cond_6
    return-void

    :cond_7
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_f
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_46

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v6

    if-eqz v6, :cond_22

    move-object v5, v2

    :cond_22
    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_28

    return-void

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_46
    if-eqz v5, :cond_50

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    :cond_50
    return-void
.end method

.method public static shouldResetIME(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 5

    const/4 v0, 0x1

    return v0
.end method
