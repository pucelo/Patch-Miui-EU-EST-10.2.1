.class public Lcom/android/keyguard/KeyguardCompatibilityHelperForP;
.super Ljava/lang/Object;
.source "KeyguardCompatibilityHelperForP.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static restoreShowTouchesState(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static sanitizePassword(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 5

    :try_start_0
    const-class v2, Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v3, "sanitizePassword"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KeyguardCompatibilityHelperForP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sanitizePassword "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static saveShowTouchesState(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    return-void
.end method
