.class public Lcom/android/internal/widget/LockPatternUtilsCompat;
.super Ljava/lang/Object;
.source "LockPatternUtilsCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceOwnerInfo(Lcom/android/internal/widget/LockPatternUtils;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDeviceOwnerInfoEnabled(Lcom/android/internal/widget/LockPatternUtils;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public static isSeparateProfileChallengeEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    return-void
.end method

.method public static reportPasswordLockout(Lcom/android/internal/widget/LockPatternUtils;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->reportPasswordLockout(II)V

    return-void
.end method

.method public static requireStrongAuth(Lcom/android/internal/widget/LockPatternUtils;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    return-void
.end method

.method public static userPresent(Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    return-void
.end method
