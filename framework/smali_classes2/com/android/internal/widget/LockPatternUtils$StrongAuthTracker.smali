.class public Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrongAuthTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;,
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;
    }
.end annotation


# static fields
.field private static final ALLOWING_FINGERPRINT:I = 0x4

.field public static final SOME_AUTH_REQUIRED_AFTER_USER_REQUEST:I = 0x4

.field public static final STRONG_AUTH_NOT_REQUIRED:I = 0x0

.field public static final STRONG_AUTH_REQUIRED_AFTER_BOOT:I = 0x1

.field public static final STRONG_AUTH_REQUIRED_AFTER_DPM_LOCK_NOW:I = 0x2

.field public static final STRONG_AUTH_REQUIRED_AFTER_LOCKOUT:I = 0x8

.field public static final STRONG_AUTH_REQUIRED_AFTER_TIMEOUT:I = 0x10


# instance fields
.field private final mDefaultStrongAuthFlags:I

.field private final mHandler:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

.field private final mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

.field protected final mStub:Landroid/app/trust/IStrongAuthTracker$Stub;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mHandler:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;-><init>(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;-><init>(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mHandler:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultStrongAuthFlags:I

    return-void
.end method

.method public static getDefaultFlags(Landroid/content/Context;)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method


# virtual methods
.method public getStrongAuthForUser(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultStrongAuthFlags:I

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method protected handleStrongAuthRequiredChanged(II)V
    .registers 5

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    if-eq p1, v0, :cond_12

    iget v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultStrongAuthFlags:I

    if-ne p1, v1, :cond_13

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    :goto_f
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->onStrongAuthRequiredChanged(I)V

    :cond_12
    return-void

    :cond_13
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_f
.end method

.method public isFingerprintAllowedForUser(I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public isTrustAllowedForUser(I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public onStrongAuthRequiredChanged(I)V
    .registers 2

    return-void
.end method
