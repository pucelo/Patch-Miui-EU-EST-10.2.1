.class public final Lcom/android/keyguard/LockPatternChecker;
.super Ljava/lang/Object;
.source "LockPatternChecker.java"


# static fields
.field private static final CURRENT_DEVICE:Ljava/lang/String;

.field private static final IS_NEED_COMPUTE_ATTEMPT_TIMES_DEVICE:Z

.field private static TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/keyguard/LockPatternChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/LockPatternUtilsWrapper;I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/keyguard/LockPatternChecker;->isPasswordEnable(Lcom/android/keyguard/LockPatternUtilsWrapper;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/LockPatternUtilsWrapper;I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/keyguard/LockPatternChecker;->isPatternPasswordEnable(Lcom/android/keyguard/LockPatternUtilsWrapper;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(ILcom/android/internal/widget/LockPatternUtils;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/keyguard/LockPatternChecker;->shouldCheck(ILcom/android/internal/widget/LockPatternUtils;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/LockPatternChecker;->computeRetryTimeout(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/content/Context;IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/LockPatternChecker;->computeAttemptTimes(Landroid/content/Context;IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "miui_keyguard_password"

    sput-object v0, Lcom/android/keyguard/LockPatternChecker;->TAG:Ljava/lang/String;

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/android/keyguard/LockPatternChecker;->CURRENT_DEVICE:Ljava/lang/String;

    const-string/jumbo v0, "libra"

    sget-object v1, Lcom/android/keyguard/LockPatternChecker;->CURRENT_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "aqua"

    sget-object v1, Lcom/android/keyguard/LockPatternChecker;->CURRENT_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "kenzo"

    sget-object v1, Lcom/android/keyguard/LockPatternChecker;->CURRENT_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "kate"

    sget-object v1, Lcom/android/keyguard/LockPatternChecker;->CURRENT_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/keyguard/LockPatternChecker;->IS_NEED_COMPUTE_ATTEMPT_TIMES_DEVICE:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPasswordForUsers(Lcom/android/keyguard/LockPatternUtilsWrapper;Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;Landroid/content/Context;Lcom/android/keyguard/OnCheckForUsersCallback;)Landroid/os/AsyncTask;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/LockPatternUtilsWrapper;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/OnCheckForUsersCallback;",
            ")",
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation

    invoke-static {}, Lcom/android/keyguard/BoostFrameworkHelper;->setBoostCPUAndDDR()V

    new-instance v0, Lcom/android/keyguard/LockPatternChecker$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/LockPatternChecker$2;-><init>(Lcom/android/keyguard/LockPatternUtilsWrapper;Ljava/lang/String;Lcom/android/keyguard/OnCheckForUsersCallback;Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public static checkPatternForUsers(Lcom/android/keyguard/LockPatternUtilsWrapper;Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;Landroid/content/Context;Lcom/android/keyguard/OnCheckForUsersCallback;)Landroid/os/AsyncTask;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/LockPatternUtilsWrapper;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/OnCheckForUsersCallback;",
            ")",
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation

    invoke-static {}, Lcom/android/keyguard/BoostFrameworkHelper;->setBoostCPUAndDDR()V

    new-instance v0, Lcom/android/keyguard/LockPatternChecker$1;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/LockPatternChecker$1;-><init>(Ljava/util/List;Lcom/android/keyguard/LockPatternUtilsWrapper;Lcom/android/keyguard/OnCheckForUsersCallback;Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method private static computeAttemptTimes(Landroid/content/Context;IZ)V
    .locals 4

    sget-boolean v1, Lcom/android/keyguard/LockPatternChecker;->IS_NEED_COMPUTE_ATTEMPT_TIMES_DEVICE:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MiuiSettings$Secure;->UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String;

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MiuiSettings$Secure;->UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method private static computeRetryTimeout(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)I
    .locals 8

    const/16 v6, 0x8c

    const/16 v5, 0x1e

    const/4 v4, 0x0

    sget-boolean v2, Lcom/android/keyguard/LockPatternChecker;->IS_NEED_COMPUTE_ATTEMPT_TIMES_DEVICE:Z

    if-nez v2, :cond_0

    return v4

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MiuiSettings$Secure;->UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String;

    invoke-static {v2, v3, v4, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    const/16 v1, 0x7530

    :cond_1
    :goto_0
    if-lez v1, :cond_2

    const/16 v2, 0x8

    invoke-static {p1, v2, p2}, Lcom/android/internal/widget/LockPatternUtilsCompat;->requireStrongAuth(Lcom/android/internal/widget/LockPatternUtils;II)V

    :cond_2
    return v1

    :cond_3
    const/16 v2, 0xa

    if-lt v0, v2, :cond_4

    if-ge v0, v5, :cond_4

    const/16 v1, 0x7530

    goto :goto_0

    :cond_4
    if-lt v0, v5, :cond_5

    if-ge v0, v6, :cond_5

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-int/lit8 v4, v0, -0x1e

    int-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x40dd4c0000000000L    # 30000.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_0

    :cond_5
    if-lt v0, v6, :cond_1

    const v1, 0x5265c00

    goto :goto_0
.end method

.method private static isPasswordEnable(Lcom/android/keyguard/LockPatternUtilsWrapper;I)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getActivePasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x50000

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sget-object v3, Lcom/android/keyguard/LockPatternChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "check password enable for userId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_3

    const-string/jumbo v2, "   enable"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x30000

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "   disable"

    goto :goto_1
.end method

.method private static isPatternPasswordEnable(Lcom/android/keyguard/LockPatternUtilsWrapper;I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getActivePasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v2, Lcom/android/keyguard/LockPatternChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "check pattern password enable for userId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string/jumbo v1, "   enable"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "   disable"

    goto :goto_1
.end method

.method private static shouldCheck(ILcom/android/internal/widget/LockPatternUtils;)Z
    .locals 6

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/keyguard/LockPatternChecker;->IS_NEED_COMPUTE_ATTEMPT_TIMES_DEVICE:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
