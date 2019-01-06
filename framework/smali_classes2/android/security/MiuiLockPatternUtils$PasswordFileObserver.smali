.class Landroid/security/MiuiLockPatternUtils$PasswordFileObserver;
.super Landroid/os/FileObserver;
.source "MiuiLockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/MiuiLockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordFileObserver"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 13

    invoke-static {}, Landroid/security/MiuiLockPatternUtils;->-get0()[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    move-result-object v3

    array-length v2, v3

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v2, :cond_58

    invoke-static {}, Landroid/security/MiuiLockPatternUtils;->-get0()[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    move-result-object v3

    aget-object v0, v3, v1

    iget-object v3, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFile:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_53

    const-string/jumbo v3, "MiuiLockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "password file changed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    iget-object v5, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_56

    const/4 v3, 0x1

    :goto_50
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_56
    const/4 v3, 0x0

    goto :goto_50

    :cond_58
    return-void
.end method
