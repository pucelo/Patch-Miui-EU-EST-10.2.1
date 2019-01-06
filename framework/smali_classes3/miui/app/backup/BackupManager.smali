.class public Lmiui/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/BackupManager$BackupRestoreListener;,
        Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;
    }
.end annotation


# static fields
.field public static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "MIUI BACKUP\n"

.field public static final BACKUP_FILE_VERSION:I = 0x2

.field public static DOMAIN_ATTACH:Ljava/lang/String; = null

.field public static DOMAIN_BAK:Ljava/lang/String; = null

.field public static DOMAIN_END:Ljava/lang/String; = null

.field public static DOMAIN_META:Ljava/lang/String; = null

.field public static final ERR_AUTHENTICATION_FAILED:I = 0x3

.field public static final ERR_BAKFILE_BROKEN:I = 0x6

.field public static final ERR_BINDER_DIED:I = 0x8

.field public static final ERR_IO_PERMISSION:I = 0x7

.field public static final ERR_NONE:I = 0x0

.field public static final ERR_NOT_ALLOW:I = 0x9

.field public static final ERR_NO_BACKUPAGENT:I = 0x2

.field public static final ERR_UNKNOWN:I = 0x1

.field public static final ERR_VERSION_TOO_OLD:I = 0x5

.field public static final ERR_VERSION_UNSUPPORTED:I = 0x4

.field public static final FEATURE_FULL_BACKUP:I = -0x1

.field public static final PROG_TYPE_NORMAL:I = 0x0

.field public static final PROG_TYPE_RECORD:I = 0x1

.field public static final SERVICE_NAME:Ljava/lang/String; = "MiuiBackup"

.field public static final STATE_BACKUP:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_RESTORE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Backup:BackupManager"

.field public static final TYPE_NORMAL_BACKUP_TIMEOUT_SCALE:I = 0x1

.field public static final TYPE_RECORD_BACKUP_TIMEOUT_SCALE:I = 0x6

.field private static mSystemAppWhiteSet:Ljava/util/HashSet;

.field private static sProgRecordAppSet:Ljava/util/HashSet;

.field private static sWRInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/app/backup/BackupManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackupRestoreLatch:Ljava/lang/Object;

.field private mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

.field private mContext:Landroid/content/Context;

.field private mICaller:Landroid/os/IBinder;

.field private mIsAcquired:Z

.field private mPips:[Landroid/os/ParcelFileDescriptor;

.field private mService:Lmiui/app/backup/IBackupManager;

.field private mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static synthetic -get0(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;
    .registers 2

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;
    .registers 2

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic -get3(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/app/backup/BackupManager;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iput-object p1, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "miui_bak"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_BAK:Ljava/lang/String;

    const-string/jumbo v0, "miui_meta"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_META:Ljava/lang/String;

    const-string/jumbo v0, "miui_att"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    const-string/jumbo v0, "miui_end"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_END:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.weather2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    sget-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mICaller:Landroid/os/IBinder;

    iput-object p1, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    return-void
.end method

.method public static final getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;
    .registers 3

    sget-object v1, Lmiui/app/backup/BackupManager;->sWRInstance:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_18

    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_17

    new-instance v0, Lmiui/app/backup/BackupManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lmiui/app/backup/BackupManager;->sWRInstance:Ljava/lang/ref/WeakReference;

    :cond_17
    return-object v0

    :cond_18
    sget-object v1, Lmiui/app/backup/BackupManager;->sWRInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/BackupManager;

    goto :goto_5
.end method

.method public static isProgRecordApp(Ljava/lang/String;I)Z
    .registers 3

    sget-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x40

    :try_start_7
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_e} :catch_10

    move-result v2

    :goto_f
    return v2

    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public static isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1b

    sget-object v1, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1b
    const/4 v0, 0x1

    :cond_1c
    return v0
.end method


# virtual methods
.method public acquire(Lmiui/app/backup/IBackupServiceStateObserver;)Z
    .registers 5

    :try_start_0
    iget-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mICaller:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Lmiui/app/backup/IBackupManager;->acquire(Lmiui/app/backup/IBackupServiceStateObserver;Landroid/os/IBinder;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_11

    :cond_e
    :goto_e
    iget-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    return v1

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method public backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .registers 17

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/app/backup/BackupManager;->backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V

    return-void
.end method

.method public backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .registers 26

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v2, :cond_f

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "You must acquire first to use the backup or restore service"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    if-eqz v2, :cond_89

    :try_start_1b
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2a} :catch_8d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_11e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_2a} :catch_da
    .catchall {:try_start_1b .. :try_end_2a} :catchall_162

    :try_start_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    new-instance v12, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v5}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;-><init>(Lmiui/app/backup/BackupManager;Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;)V

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-interface/range {v2 .. v12}, Lmiui/app/backup/IBackupManager;->backupPackage(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_5c
    .catchall {:try_start_2a .. :try_end_5c} :catchall_8a

    :try_start_5c
    monitor-exit v16
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5d} :catch_8d
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_5d} :catch_11e
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_5d} :catch_da
    .catchall {:try_start_5c .. :try_end_5d} :catchall_162

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_89

    :try_start_63
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_76

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_76
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_89

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_89} :catch_cf

    :cond_89
    :goto_89
    return-void

    :catchall_8a
    move-exception v2

    :try_start_8b
    monitor-exit v16

    throw v2
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8d} :catch_8d
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_8d} :catch_11e
    .catch Ljava/lang/InterruptedException; {:try_start_8b .. :try_end_8d} :catch_da
    .catchall {:try_start_8b .. :try_end_8d} :catchall_162

    :catch_8d
    move-exception v14

    :try_start_8e
    const-string/jumbo v2, "Backup:BackupManager"

    const-string/jumbo v3, "create pipe failed"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catchall {:try_start_8e .. :try_end_97} :catchall_162

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_89

    :try_start_9d
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_b0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_b0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_89

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_c3} :catch_c4

    goto :goto_89

    :catch_c4
    move-exception v14

    const-string/jumbo v2, "Backup:BackupManager"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_89

    :catch_cf
    move-exception v14

    const-string/jumbo v2, "Backup:BackupManager"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_89

    :catch_da
    move-exception v15

    :try_start_db
    const-string/jumbo v2, "Backup:BackupManager"

    const-string/jumbo v3, "InterruptedException"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e4
    .catchall {:try_start_db .. :try_end_e4} :catchall_162

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_89

    :try_start_ea
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_fd

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_fd
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_89

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_110} :catch_112

    goto/16 :goto_89

    :catch_112
    move-exception v14

    const-string/jumbo v2, "Backup:BackupManager"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_89

    :catch_11e
    move-exception v13

    :try_start_11f
    const-string/jumbo v2, "Backup:BackupManager"

    const-string/jumbo v3, "Remove invoking failed"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_128
    .catchall {:try_start_11f .. :try_end_128} :catchall_162

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_89

    :try_start_12e
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_141

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_141
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_89

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_154} :catch_156

    goto/16 :goto_89

    :catch_156
    move-exception v14

    const-string/jumbo v2, "Backup:BackupManager"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_89

    :catchall_162
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_18f

    :try_start_169
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_17c

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_17c
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_18f

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_18f
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_18f} :catch_190

    :cond_18f
    :goto_18f
    throw v2

    :catch_190
    move-exception v14

    const-string/jumbo v3, "Backup:BackupManager"

    const-string/jumbo v4, "IOException"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18f
.end method

.method public delCacheBackup()Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->delCacheBackup()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getCurrentRunningPackage()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->getCurrentRunningPackage()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getCurrentWorkingFeature()I
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->getCurrentWorkingFeature()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    return v1
.end method

.method public getState()I
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->getState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    return v1
.end method

.method public isServiceIdle()Z
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v2}, Lmiui/app/backup/IBackupManager;->isServiceIdle()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    :goto_7
    return v1

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method

.method public release(Lmiui/app/backup/IBackupServiceStateObserver;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Lmiui/app/backup/IBackupManager;->release(Lmiui/app/backup/IBackupServiceStateObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    :goto_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .registers 16

    const/4 v10, 0x0

    iget-boolean v5, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v5, :cond_e

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "You must acquire first to use the backup or restore service"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_e
    iput-object p4, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    const/4 v3, 0x0

    :try_start_11
    iget-object v6, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    monitor-enter v6
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_96
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_74
    .catchall {:try_start_11 .. :try_end_14} :catchall_b8

    :try_start_14
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v4, v3, v5

    new-instance v5, Lmiui/app/backup/BackupManager$1;

    invoke-direct {v5, p0, v4, p1}, Lmiui/app/backup/BackupManager$1;-><init>(Lmiui/app/backup/BackupManager;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v5}, Lmiui/app/backup/BackupManager$1;->start()V

    iget-object v5, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    const/4 v7, 0x0

    aget-object v7, v3, v7

    new-instance v8, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;-><init>(Lmiui/app/backup/BackupManager;Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;)V

    invoke-interface {v5, v7, p2, p3, v8}, Lmiui/app/backup/IBackupManager;->restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    iget-object v5, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_44

    :try_start_36
    monitor-exit v6
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_37} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_37} :catch_96
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_37} :catch_74
    .catchall {:try_start_36 .. :try_end_37} :catchall_b8

    if-eqz v3, :cond_43

    aget-object v5, v3, v10

    if-eqz v5, :cond_43

    const/4 v5, 0x0

    :try_start_3e
    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_69

    :cond_43
    :goto_43
    return-void

    :catchall_44
    move-exception v5

    :try_start_45
    monitor-exit v6

    throw v5
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_47} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_47} :catch_96
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_47} :catch_74
    .catchall {:try_start_45 .. :try_end_47} :catchall_b8

    :catch_47
    move-exception v0

    :try_start_48
    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_b8

    if-eqz v3, :cond_43

    aget-object v5, v3, v10

    if-eqz v5, :cond_43

    const/4 v5, 0x0

    :try_start_58
    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5d} :catch_5e

    goto :goto_43

    :catch_5e
    move-exception v1

    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    :catch_69
    move-exception v1

    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    :catch_74
    move-exception v1

    :try_start_75
    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7e
    .catchall {:try_start_75 .. :try_end_7e} :catchall_b8

    if-eqz v3, :cond_43

    aget-object v5, v3, v10

    if-eqz v5, :cond_43

    const/4 v5, 0x0

    :try_start_85
    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8a} :catch_8b

    goto :goto_43

    :catch_8b
    move-exception v1

    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    :catch_96
    move-exception v2

    :try_start_97
    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "InterruptedException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a0
    .catchall {:try_start_97 .. :try_end_a0} :catchall_b8

    if-eqz v3, :cond_43

    aget-object v5, v3, v10

    if-eqz v5, :cond_43

    const/4 v5, 0x0

    :try_start_a7
    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_ac} :catch_ad

    goto :goto_43

    :catch_ad
    move-exception v1

    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    :catchall_b8
    move-exception v5

    if-eqz v3, :cond_c5

    aget-object v6, v3, v10

    if-eqz v6, :cond_c5

    const/4 v6, 0x0

    :try_start_c0
    aget-object v6, v3, v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c5} :catch_c6

    :cond_c5
    :goto_c5
    throw v5

    :catch_c6
    move-exception v1

    const-string/jumbo v6, "Backup:BackupManager"

    const-string/jumbo v7, "IOException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c5
.end method

.method public setCustomProgress(III)V
    .registers 7

    :try_start_0
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v2}, Lmiui/app/backup/IBackupManager;->getCurrentRunningPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v2, p1, p2, p3}, Lmiui/app/backup/IBackupManager;->setCustomProgress(III)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_17
.end method

.method public setIsNeedBeKilled(Z)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lmiui/app/backup/IBackupManager;->setIsNeedBeKilled(Ljava/lang/String;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method setWorkingError(I)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Lmiui/app/backup/IBackupManager;->errorOccur(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method
