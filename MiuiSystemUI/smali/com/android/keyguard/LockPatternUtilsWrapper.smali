.class public Lcom/android/keyguard/LockPatternUtilsWrapper;
.super Ljava/lang/Object;
.source "LockPatternUtilsWrapper.java"


# static fields
.field private static sUserId:I


# instance fields
.field private final mUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static synthetic -com_android_keyguard_LockPatternUtilsWrapper-mthref-0(Lcom/android/keyguard/OnCheckForUsersCallback;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/keyguard/OnCheckForUsersCallback;->onEarlyMatched()V

    return-void
.end method

.method static synthetic -com_android_keyguard_LockPatternUtilsWrapper-mthref-1(Lcom/android/keyguard/OnCheckForUsersCallback;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/keyguard/OnCheckForUsersCallback;->onEarlyMatched()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public static getCurrentUser()I
    .locals 1

    sget v0, Lcom/android/keyguard/LockPatternUtilsWrapper;->sUserId:I

    return v0
.end method

.method private getCurrentUserId()I
    .locals 1

    sget v0, Lcom/android/keyguard/LockPatternUtilsWrapper;->sUserId:I

    return v0
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/keyguard/KeyguardRequestThrottledException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-class v1, Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/android/keyguard/KeyguardRequestThrottledException;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardRequestThrottledException;-><init>(I)V

    throw v1
.end method

.method public checkPassword(Ljava/lang/String;ILcom/android/keyguard/OnCheckForUsersCallback;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/keyguard/KeyguardRequestThrottledException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/keyguard/-$Lambda$eeU1eBkslsvsESE5i_Dri0qGUlg;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p3}, Lcom/android/keyguard/-$Lambda$eeU1eBkslsvsESE5i_Dri0qGUlg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-class v1, Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/android/keyguard/KeyguardRequestThrottledException;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardRequestThrottledException;-><init>(I)V

    throw v1
.end method

.method public checkPattern(Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/keyguard/KeyguardRequestThrottledException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;I)Z
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-class v1, Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/android/keyguard/KeyguardRequestThrottledException;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardRequestThrottledException;-><init>(I)V

    throw v1
.end method

.method public checkPattern(Ljava/util/List;ILcom/android/keyguard/OnCheckForUsersCallback;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I",
            "Lcom/android/keyguard/OnCheckForUsersCallback;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/keyguard/KeyguardRequestThrottledException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/keyguard/-$Lambda$eeU1eBkslsvsESE5i_Dri0qGUlg;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p3}, Lcom/android/keyguard/-$Lambda$eeU1eBkslsvsESE5i_Dri0qGUlg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-class v1, Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/android/keyguard/KeyguardRequestThrottledException;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardRequestThrottledException;-><init>(I)V

    throw v1
.end method

.method public getActivePasswordQuality()I
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getActivePasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public getActivePasswordQuality(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public isOwnerInfoEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method
