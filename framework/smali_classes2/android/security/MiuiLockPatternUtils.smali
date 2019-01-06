.class public Landroid/security/MiuiLockPatternUtils;
.super Lcom/android/internal/widget/LockPatternUtils;
.source "MiuiLockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;,
        Landroid/security/MiuiLockPatternUtils$PasswordFileObserver;
    }
.end annotation


# static fields
.field public static final FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

.field private static final MATCHED_BLUETOOTH_DEVICE_ADDRESS_TO_UNLOCK:Ljava/lang/String; = "bluetooth_address_to_unlock"

.field private static final MATCHED_BLUETOOTH_DEVICE_NAME_TO_UNLOCK:Ljava/lang/String; = "bluetooth_name_to_unlock"

.field private static final MATCHED_BLUETOOTH_KEY_TO_UNLOCK:Ljava/lang/String; = "bluetooth_key_to_unlock"

.field private static final MATCHED_BLUETOOTH_UNLOCK_STATUS:Ljava/lang/String; = "bluetooth_unlock_status"

.field public static final MIUI_LOCK_PATTERN_DATA_TYPE_AC:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MIUI_LOCK_PATTERN_DATA_TYPE_GALLERY:I = 0x2

.field public static final MIUI_LOCK_PATTERN_DATA_TYPE_PRIVACY_PASSWORD:I = 0x3

.field public static final MIUI_LOCK_PATTERN_DATA_TYPE_SMS:I = 0x1

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "MiuiLockPatternUtils"

.field private static mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mMultiUserMode:Z

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field private mType:I


# direct methods
.method static synthetic -get0()[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;
    .registers 1

    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x1e

    const/16 v1, 0x3c

    const/16 v2, 0x12c

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroid/security/MiuiLockPatternUtils;->FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    new-instance v1, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string/jumbo v2, "access_control"

    const-string/jumbo v3, "access_control.key"

    invoke-direct {v1, v2, v3}, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string/jumbo v2, "sms"

    const-string/jumbo v3, "sms_private.key"

    invoke-direct {v1, v2, v3}, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string/jumbo v2, "gallery"

    const-string/jumbo v3, "gallery_private.key"

    invoke-direct {v1, v2, v3}, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string/jumbo v2, "privacy_password_setting"

    const-string/jumbo v3, "privacy_password_setting.key"

    invoke-direct {v1, v2, v3}, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 15

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    sget-object v3, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    aget-object v0, v3, p2

    iget-object v3, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    if-nez v3, :cond_67

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "/system/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFile:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    iget-object v6, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    iget-object v7, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_80

    move v3, v4

    :goto_56
    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v2, 0x388

    new-instance v3, Landroid/security/MiuiLockPatternUtils$PasswordFileObserver;

    invoke-direct {v3, v1, v2}, Landroid/security/MiuiLockPatternUtils$PasswordFileObserver;-><init>(Ljava/lang/String;I)V

    iput-object v3, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mPasswordObserver:Landroid/os/FileObserver;

    iget-object v3, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mPasswordObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->startWatching()V

    :cond_67
    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_82

    :goto_70
    iput-boolean v4, p0, Landroid/security/MiuiLockPatternUtils;->mMultiUserMode:Z

    iget-object v3, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "security"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/security/SecurityManager;

    iput-object v3, p0, Landroid/security/MiuiLockPatternUtils;->mSecurityManager:Lmiui/security/SecurityManager;

    return-void

    :cond_80
    move v3, v5

    goto :goto_56

    :cond_82
    move v4, v5

    goto :goto_70
.end method

.method private checkAccessKeyguardStoragePermission()Z
    .registers 8

    const/4 v2, 0x0

    const-string/jumbo v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    iget-object v3, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_18

    const/4 v2, 0x1

    :cond_18
    return v2
.end method

.method public static checkPrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 13

    const/4 v9, 0x0

    if-nez p0, :cond_c

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "pattern is null"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_c
    const/4 v2, 0x0

    :try_start_d
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "r"

    invoke-direct {v3, p1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_35
    .catchall {:try_start_d .. :try_end_19} :catchall_58

    :try_start_19
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v4, v6, [B

    array-length v6, v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2c} :catch_64
    .catchall {:try_start_19 .. :try_end_2c} :catchall_61

    move-result v6

    if-eqz v3, :cond_32

    :try_start_2f
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    :cond_32
    :goto_32
    return v6

    :catch_33
    move-exception v0

    goto :goto_32

    :catch_35
    move-exception v1

    :goto_36
    :try_start_36
    const-string/jumbo v6, "MiuiLockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkPrivacyPasswordPattern error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_58

    if-eqz v2, :cond_55

    :try_start_52
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    :cond_55
    :goto_55
    return v9

    :catch_56
    move-exception v0

    goto :goto_55

    :catchall_58
    move-exception v6

    :goto_59
    if-eqz v2, :cond_5e

    :try_start_5b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    :cond_5e
    :goto_5e
    throw v6

    :catch_5f
    move-exception v0

    goto :goto_5e

    :catchall_61
    move-exception v6

    move-object v2, v3

    goto :goto_59

    :catch_64
    move-exception v1

    move-object v2, v3

    goto :goto_36
.end method

.method private getFileNameAsUser(I)Ljava/lang/String;
    .registers 7

    sget-object v1, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v2, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v1, v1, v2

    iget-object v0, v1, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    if-eqz p1, :cond_1f

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    sget-object v3, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v4, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFile:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_1f
    return-object v0
.end method

.method private getLockSettingsService()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_11

    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_11
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getTimeoutInMsByFailedAttempts(I)I
    .registers 5

    add-int/lit8 v1, p1, -0x5

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Landroid/security/MiuiLockPatternUtils;->FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Landroid/security/MiuiLockPatternUtils;->FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method public static savePrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    if-nez p0, :cond_b

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "pattern is null"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_b
    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_d
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v2

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "rw"

    invoke-direct {v4, p1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_52
    .catchall {:try_start_d .. :try_end_1d} :catchall_44

    if-eqz v2, :cond_22

    :try_start_1f
    array-length v6, v2

    if-nez v6, :cond_2d

    :cond_22
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_33
    .catchall {:try_start_1f .. :try_end_27} :catchall_4f

    :goto_27
    if-eqz v4, :cond_2c

    :try_start_29
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_4b

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    :try_start_2d
    array-length v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7, v6}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_33
    .catchall {:try_start_2d .. :try_end_32} :catchall_4f

    goto :goto_27

    :catch_33
    move-exception v1

    move-object v3, v4

    :goto_35
    :try_start_35
    const-string/jumbo v6, "MiuiLockPatternUtils"

    const-string/jumbo v7, "savePrivacyPasswordPattern error"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v6

    :goto_45
    if-eqz v3, :cond_4a

    :try_start_47
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4d

    :cond_4a
    :goto_4a
    throw v6

    :catch_4b
    move-exception v0

    goto :goto_2c

    :catch_4d
    move-exception v0

    goto :goto_4a

    :catchall_4f
    move-exception v6

    move-object v3, v4

    goto :goto_45

    :catch_52
    move-exception v1

    goto :goto_35
.end method

.method private setLong(Ljava/lang/String;JI)V
    .registers 9

    :try_start_0
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->getLockSettingsService()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    const-string/jumbo v1, "MiuiLockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method


# virtual methods
.method public checkMiuiLockPattern(Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_15

    sget-object v6, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v7, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-static {p1, v6, v8}, Landroid/security/PrivacyLockPatternUtils;->checkPrivacyPasswordPattern(Ljava/util/List;Ljava/lang/String;I)Z

    move-result v6

    return v6

    :cond_15
    :try_start_15
    sget-object v6, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v7, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v6, v6, v7

    iget-object v0, v6, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "r"

    invoke-direct {v4, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v5, v6, [B

    array-length v6, v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    if-gtz v2, :cond_38

    return v9

    :cond_38
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_3f} :catch_43
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3f} :catch_41

    move-result v6

    return v6

    :catch_41
    move-exception v3

    return v9

    :catch_43
    move-exception v1

    return v9
.end method

.method public checkMiuiLockPatternAsUser(Ljava/util/List;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_1a

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_15

    sget-object v2, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v3, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-static {p1, v2, p2}, Landroid/security/PrivacyLockPatternUtils;->checkPrivacyPasswordPattern(Ljava/util/List;Ljava/lang/String;I)Z

    move-result v2

    return v2

    :cond_15
    invoke-virtual {p0, p1}, Landroid/security/MiuiLockPatternUtils;->checkMiuiLockPattern(Ljava/util/List;)Z

    move-result v2

    return v2

    :cond_1a
    invoke-direct {p0, p2}, Landroid/security/MiuiLockPatternUtils;->getFileNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/security/MiuiLockPatternUtils;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v2, v0}, Lmiui/security/SecurityManager;->readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method public clearLockoutAttemptDeadline()V
    .registers 5

    const-string/jumbo v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    return-void
.end method

.method public getBluetoothAddressToUnlock()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "bluetooth_address_to_unlock"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBluetoothKeyToUnlock()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "bluetooth_key_to_unlock"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBluetoothNameToUnlock()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "bluetooth_name_to_unlock"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBluetoothUnlockEnabled()Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "bluetooth_unlock_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_17

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16

    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getCurrentOrCallingUserId()I
    .registers 2

    iget-boolean v0, p0, Landroid/security/MiuiLockPatternUtils;->mMultiUserMode:Z

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0

    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method public getKeyguardLockoutAttemptDeadline(I)J
    .registers 10

    const-wide/16 v6, 0x0

    const-string/jumbo v4, "lockscreen.lockoutattemptdeadline"

    invoke-virtual {p0, v4, v6, v7}, Landroid/security/MiuiLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_12

    return-wide v6

    :cond_12
    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-lez v4, :cond_2f

    const-string/jumbo v4, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v6, v2

    invoke-virtual {p0, v4, v6, v7}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    return-wide v4

    :cond_2f
    return-wide v0
.end method

.method public getLockPasswordLength(I)J
    .registers 10

    const-wide/16 v6, 0x4

    :try_start_2
    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string/jumbo v2, "lockscreen.password_length"

    const-wide/16 v4, 0x4

    invoke-interface {v1, v2, v4, v5, p1}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result-wide v2

    return-wide v2

    :catch_10
    move-exception v0

    const-string/jumbo v1, "MiuiLockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLockPasswordLength error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v6
.end method

.method protected getLong(Ljava/lang/String;J)J
    .registers 8

    :try_start_0
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->getLockSettingsService()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-wide v2

    return-wide v2

    :catch_d
    move-exception v0

    return-wide p2
.end method

.method public getOwnerInfo()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_screen_owner_info"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reportSuccessfulPasswordAttempt()V
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/MiuiLockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    return-void
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .registers 6

    const-string/jumbo v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    return-void
.end method

.method public saveMiuiLockPattern(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_13

    sget-object v5, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v6, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-static {p1, v5, v7}, Landroid/security/PrivacyLockPatternUtils;->savePrivacyPasswordPattern(Ljava/util/List;Ljava/lang/String;I)V

    :goto_12
    return-void

    :cond_13
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v2

    sget-object v5, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v6, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v5, v5, v6

    iget-object v0, v5, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    :try_start_1f
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "rw"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_4e

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    :goto_2e
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_31} :catch_32
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_31} :catch_54

    goto :goto_12

    :catch_32
    move-exception v1

    const-string/jumbo v5, "MiuiLockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to save lock pattern to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_4e
    :try_start_4e
    array-length v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6, v5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_53} :catch_32
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_53} :catch_54

    goto :goto_2e

    :catch_54
    move-exception v3

    const-string/jumbo v5, "MiuiLockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to save lock pattern to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public saveMiuiLockPatternAsUser(Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)V"
        }
    .end annotation

    if-nez p2, :cond_18

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_14

    sget-object v3, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v4, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-static {p1, v3, p2}, Landroid/security/PrivacyLockPatternUtils;->savePrivacyPasswordPattern(Ljava/util/List;Ljava/lang/String;I)V

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0, p1}, Landroid/security/MiuiLockPatternUtils;->saveMiuiLockPattern(Ljava/util/List;)V

    goto :goto_13

    :cond_18
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v2

    invoke-direct {p0, p2}, Landroid/security/MiuiLockPatternUtils;->getFileNameAsUser(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_3b

    :try_start_22
    iget-object v3, p0, Landroid/security/MiuiLockPatternUtils;->mSecurityManager:Lmiui/security/SecurityManager;

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Lmiui/security/SecurityManager;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_22 .. :try_end_2f} :catch_30

    goto :goto_13

    :catch_30
    move-exception v0

    const-string/jumbo v3, "MiuiLockPatternUtils"

    const-string/jumbo v4, "save pattern as user failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_3b
    :try_start_3b
    iget-object v3, p0, Landroid/security/MiuiLockPatternUtils;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v1, v4}, Lmiui/security/SecurityManager;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3b .. :try_end_43} :catch_30

    goto :goto_13
.end method

.method public savedMiuiLockPatternExists()Z
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExistsAsUser(I)Z

    move-result v0

    return v0
.end method

.method public savedMiuiLockPatternExistsAsUser(I)Z
    .registers 4

    if-nez p1, :cond_f

    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v1, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method savedPatternExists()Z
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->getLockSettingsService()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    :catch_d
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public setBluetoothAddressToUnlock(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "bluetooth_address_to_unlock"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothKeyToUnlock(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "bluetooth_key_to_unlock"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothNameToUnlock(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "bluetooth_name_to_unlock"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothUnlockEnabled(Z)V
    .registers 5

    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "bluetooth_unlock_status"

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    :goto_12
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_12

    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKeyguardLockoutAttemptDeadline(I)J
    .registers 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v4

    int-to-long v4, v4

    add-long v0, v2, v4

    const-string/jumbo v2, "lockscreen.lockoutattemptdeadline"

    invoke-virtual {p0, v2, v0, v1}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    return-wide v0
.end method

.method public setKeyguardPasswordQuality(I)V
    .registers 8

    const-string/jumbo v0, "miui.permission.USE_INTERNAL_GENERAL_API"

    iget-object v2, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1e

    const-string/jumbo v2, "lockscreen.password_type"

    int-to-long v4, p1

    invoke-virtual {p0, v2, v4, v5}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    return-void

    :cond_1e
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Need miui.permission.USE_INTERNAL_GENERAL_API permission to access"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected setLong(Ljava/lang/String;J)V
    .registers 6

    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    return-void
.end method
