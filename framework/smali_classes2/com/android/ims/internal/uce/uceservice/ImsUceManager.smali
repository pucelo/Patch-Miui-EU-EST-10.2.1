.class public Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
.super Ljava/lang/Object;
.source "ImsUceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;
    }
.end annotation


# static fields
.field public static final ACTION_UCE_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.internal.uce.UCE_SERVICE_DOWN"

.field public static final ACTION_UCE_SERVICE_UP:Ljava/lang/String; = "com.android.ims.internal.uce.UCE_SERVICE_UP"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUceManager"

.field private static final UCE_SERVICE:Ljava/lang/String; = "uce"

.field public static final UCE_SERVICE_STATUS_CLOSED:I = 0x2

.field public static final UCE_SERVICE_STATUS_FAILURE:I = 0x0

.field public static final UCE_SERVICE_STATUS_ON:I = 0x1

.field public static final UCE_SERVICE_STATUS_READY:I = 0x3

.field private static sUceManagerInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/internal/uce/uceservice/ImsUceManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

.field private mPhoneId:I

.field private mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;


# direct methods
.method static synthetic -get0(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)I
    .registers 2

    iget v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mPhoneId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/IUceService;)Lcom/android/ims/internal/uce/uceservice/IUceService;
    .registers 2

    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    new-instance v0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;-><init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;)V

    iput-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mPhoneId:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->createUceService(Z)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
    .registers 6

    sget-object v2, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2d

    monitor-exit v2

    return-object v1

    :cond_1d
    :try_start_1d
    new-instance v0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;-><init>(Landroid/content/Context;I)V

    sget-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_2d

    monitor-exit v2

    return-object v0

    :catchall_2d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getUceServiceName(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "uce"

    return-object v0
.end method


# virtual methods
.method public createUceService(Z)V
    .registers 7

    if-eqz p1, :cond_f

    iget v3, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mPhoneId:I

    invoke-direct {p0, v3}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->getUceServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    iget v3, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mPhoneId:I

    invoke-direct {p0, v3}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->getUceServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_21

    :try_start_1b
    iget-object v3, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_28

    :cond_21
    :goto_21
    invoke-static {v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-void

    :catch_28
    move-exception v2

    goto :goto_21
.end method

.method public getUceServiceInstance()Lcom/android/ims/internal/uce/uceservice/IUceService;
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-object v0
.end method
