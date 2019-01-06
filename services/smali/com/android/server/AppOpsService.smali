.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$1;,
        Lcom/android/server/AppOpsService$Callback;,
        Lcom/android/server/AppOpsService$ChangeRec;,
        Lcom/android/server/AppOpsService$ClientRestrictionState;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;,
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$Shell;,
        Lcom/android/server/AppOpsService$UidState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AppOps"

.field static final WRITE_DELAY:J = 0x1b7740L

.field static final sOpInControl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpUserRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mServiceState:Lcom/android/server/AppOpsServiceState;

.field private final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/AppOpsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x271a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2714

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.INTERNET"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x271b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2716

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.RECEIVE_MMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.RECEIVE_MMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x271d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_CALENDAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x271f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ACCESS_XIAOMI_ACCOUNT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.USE_SIP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2713

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2711

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2712

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2720

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.NFC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2721

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "com.android.launcher.permission.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BODY_SENSORS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2718

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AUTO_START"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    iput-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    new-instance v0, Lcom/android/server/AppOpsServiceState;

    invoke-direct {v0}, Lcom/android/server/AppOpsServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;II",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;"
        }
    .end annotation

    if-nez p4, :cond_3

    return-object p0

    :cond_3
    if-nez p0, :cond_a

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_a
    const/4 v2, 0x0

    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v0, :cond_53

    invoke-virtual {p4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Callback;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_35

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    :goto_28
    if-nez v2, :cond_32

    new-instance v8, Lcom/android/server/AppOpsService$ChangeRec;

    invoke-direct {v8, p1, p2, p3}, Lcom/android/server/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_35
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v4, 0x0

    :goto_3a
    if-ge v4, v6, :cond_28

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$ChangeRec;

    iget v8, v5, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    if-ne v8, p1, :cond_50

    iget-object v8, v5, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    const/4 v2, 0x1

    goto :goto_28

    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :cond_53
    return-object p0
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .registers 8

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_1f

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Restriction;

    if-eqz v0, :cond_1f

    iget-object v2, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1f

    iget v2, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    return v2

    :cond_1f
    const/4 v2, 0x0

    return v2
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_22

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must by called by the system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    return-void
.end method

.method private collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    const/4 v9, -0x1

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    if-nez p2, :cond_28

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_e
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_4f

    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p1, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    move-wide v6, v4

    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_28
    const/4 v11, 0x0

    :goto_29
    array-length v1, p2

    if-ge v11, v1, :cond_4f

    aget v1, p2, v11

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_4c

    if-nez v12, :cond_3b

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_3b
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    move-wide v6, v4

    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    add-int/lit8 v11, v11, 0x1

    goto :goto_29

    :cond_4f
    return-object v12
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x0

    if-nez p2, :cond_2e

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_9
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v1

    if-ge v11, v1, :cond_5c

    invoke-virtual {p1, v11}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v9, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    iget-object v10, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_2e
    const/4 v11, 0x0

    :goto_2f
    array-length v1, p2

    if-ge v11, v1, :cond_5c

    aget v1, p2, v11

    invoke-virtual {p1, v1}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    if-eqz v0, :cond_59

    if-nez v12, :cond_43

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_43
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v9, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    iget-object v10, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_59
    add-int/lit8 v11, v11, 0x1

    goto :goto_2f

    :cond_5c
    return-object v12
.end method

.method static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .registers 2

    const-string/jumbo v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  set [--user <USER_ID>] <PACKAGE | UID> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  get [--user <USER_ID>] <PACKAGE | UID> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    <PACKAGE> an Android package name."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    <MODE>    one of allow, ignore, deny, or default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    <USER_ID> the user id under which the package is installed. If --user is not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "              specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3

    const-string/jumbo v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  none"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    return-object v1
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    if-nez v0, :cond_1a

    if-nez p3, :cond_c

    return-object v1

    :cond_c
    new-instance v0, Lcom/android/server/AppOpsService$Op;

    iget-object v1, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v1, v1, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1, p2, v0}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    :cond_1a
    if-eqz p3, :cond_1f

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    :cond_1f
    return-object v0
.end method

.method private getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .registers 16

    invoke-direct {p0, p1, p3}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v8

    if-nez v8, :cond_8

    const/4 v9, 0x0

    return-object v9

    :cond_8
    iget-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v9, :cond_17

    if-nez p3, :cond_10

    const/4 v9, 0x0

    return-object v9

    :cond_10
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    iput-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    :cond_17
    iget-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v9, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    if-nez v6, :cond_ce

    if-nez p3, :cond_25

    const/4 v9, 0x0

    return-object v9

    :cond_25
    const/4 v3, 0x0

    if-eqz p1, :cond_c4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v7, -0x1

    :try_start_2d
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const/high16 v11, 0x10000000

    invoke-interface {v9, p2, v11, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_8a

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_41} :catch_b1
    .catchall {:try_start_2d .. :try_end_41} :catchall_bc

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_88

    const/4 v3, 0x1

    :cond_46
    :goto_46
    if-eq v7, p1, :cond_c1

    :try_start_48
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "here"

    invoke-direct {v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string/jumbo v9, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Bad call: specified package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " under uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " but it is really "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_48 .. :try_end_83} :catchall_bc

    const/4 v9, 0x0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v9

    :cond_88
    const/4 v3, 0x0

    goto :goto_46

    :cond_8a
    :try_start_8a
    const-string/jumbo v9, "media"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_97

    const/16 v7, 0x3f5

    const/4 v3, 0x0

    goto :goto_46

    :cond_97
    const-string/jumbo v9, "audioserver"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a4

    const/16 v7, 0x411

    const/4 v3, 0x0

    goto :goto_46

    :cond_a4
    const-string/jumbo v9, "cameraserver"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_aa} :catch_b1
    .catchall {:try_start_8a .. :try_end_aa} :catchall_bc

    move-result v9

    if-eqz v9, :cond_46

    const/16 v7, 0x417

    const/4 v3, 0x0

    goto :goto_46

    :catch_b1
    move-exception v1

    :try_start_b2
    const-string/jumbo v9, "AppOps"

    const-string/jumbo v10, "Could not contact PackageManager"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bb
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_bc

    goto :goto_46

    :catchall_bc
    move-exception v9

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :cond_c1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_c4
    new-instance v6, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {v6, p2, v8, v3}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    iget-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v9, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ce
    return-object v6
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_f

    move-result-object v1

    :goto_9
    if-nez v1, :cond_e

    sget-object v2, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v2

    :cond_e
    return-object v1

    :catch_f
    move-exception v0

    goto :goto_9
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    .registers 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    if-nez v0, :cond_18

    if-nez p2, :cond_e

    return-object v2

    :cond_e
    new-instance v0, Lcom/android/server/AppOpsService$UidState;

    invoke-direct {v0, p1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_18
    return-object v0
.end method

.method private isOpRestrictedLocked(IILjava/lang/String;)Z
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x2710

    if-le p2, v5, :cond_7

    return v6

    :cond_7
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_3e

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$ClientRestrictionState;

    invoke-virtual {v3, p2, p3, v4}, Lcom/android/server/AppOpsService$ClientRestrictionState;->hasRestriction(ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result v5

    if-eqz v5, :cond_37

    monitor-enter p0

    const/4 v5, 0x1

    :try_start_2a
    invoke-direct {p0, p1, p3, v5}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    if-eqz v1, :cond_36

    iget-boolean v5, v1, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_38

    if-eqz v5, :cond_36

    monitor-exit p0

    return v6

    :cond_36
    monitor-exit p0

    :cond_37
    return v7

    :catchall_38
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_3e
    return v6
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 6

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Could not talk to package manager service"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I
    .registers 25

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x0

    monitor-enter p0

    const/4 v4, 0x1

    :try_start_6
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v16

    if-nez v16, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v8, 0x2

    const/4 v9, 0x0

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_128

    const/4 v4, 0x2

    monitor-exit p0

    return v4

    :cond_24
    const/4 v4, 0x1

    :try_start_25
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_128

    move-result v4

    if-eqz v4, :cond_40

    const/4 v4, 0x1

    monitor-exit p0

    return v4

    :cond_40
    :try_start_40
    iget v4, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_95

    const-string/jumbo v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Noting op not finished: uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v15, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    const/4 v4, 0x0

    iput v4, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v12

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_113

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_113

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-eqz v8, :cond_d2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v9, 0x0

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V
    :try_end_d0
    .catchall {:try_start_40 .. :try_end_d0} :catchall_128

    monitor-exit p0

    return v8

    :cond_d2
    move v13, v8

    :goto_d3
    monitor-exit p0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/server/AppOpsServiceState;->isAppPermissionControlOpen(II)Z

    move-result v4

    if-nez v4, :cond_12b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/server/AppOpsServiceState;->isCtsIgnore(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ef

    const/4 v13, 0x0

    :cond_ef
    :goto_ef
    const/4 v4, 0x4

    if-ne v13, v4, :cond_fe

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Lcom/android/server/AppOpsServiceState;->askOperationLocked(IILjava/lang/String;)I

    move-result v13

    :cond_fe
    if-eqz v13, :cond_150

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    :goto_106
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v14, 0x0

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    return v13

    :cond_113
    move/from16 v0, p1

    if-eq v12, v0, :cond_125

    const/4 v4, 0x1

    :try_start_118
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v12, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v17

    :goto_120
    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_124
    .catchall {:try_start_118 .. :try_end_124} :catchall_128

    goto :goto_d3

    :cond_125
    move-object/from16 v17, v15

    goto :goto_120

    :catchall_128
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_12b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AppOpsServiceState;->isMiuiAllowed(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ef

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AppOpsServiceState;->allowedToMode(IILjava/lang/String;)I

    move-result v13

    if-eqz v17, :cond_ef

    move-object/from16 v0, v17

    iput v13, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    goto :goto_ef

    :cond_150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v15, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v4, 0x0

    iput-wide v4, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move/from16 v0, p4

    iput v0, v15, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    move-object/from16 v0, p5

    iput-object v0, v15, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    goto :goto_106
.end method

.method private notifyWatchersOfChange(I)V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2e

    if-nez v2, :cond_d

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_2e

    monitor-exit p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_17
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v1, :cond_41

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_3c

    :try_start_24
    iget-object v8, v0, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface {v8, p1, v9, v10}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_31
    .catchall {:try_start_24 .. :try_end_2b} :catchall_3c

    :goto_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :catchall_2e
    move-exception v8

    monitor-exit p0

    throw v8

    :catch_31
    move-exception v4

    :try_start_32
    const-string/jumbo v8, "AppOps"

    const-string/jumbo v9, "Error dispatching op op change"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_3c

    goto :goto_2b

    :catchall_3c
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :cond_41
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method static onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I
    .registers 33

    if-nez p1, :cond_7

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v25

    return v25

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    :try_start_f
    const-string/jumbo v25, "set"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_29

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v20

    if-gez v20, :cond_13b

    return v20

    :cond_29
    const-string/jumbo v25, "get"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_43

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v20

    if-gez v20, :cond_1c2

    return v20

    :cond_43
    const-string/jumbo v25, "query-op"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5d

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lcom/android/server/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result v20

    if-gez v20, :cond_381

    return v20

    :cond_5d
    const-string/jumbo v25, "reset"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_88

    const/16 v17, 0x0

    const/16 v21, -0x2

    :goto_6e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_43a

    const-string/jumbo v25, "--user"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_416

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v21

    goto :goto_6e

    :cond_88
    const-string/jumbo v25, "write-settings"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string/jumbo v26, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v27

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v28

    const/16 v29, 0x0

    invoke-virtual/range {v25 .. v29}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_b4} :catch_1a1

    move-result-wide v22

    :try_start_b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_bc
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_4b1

    :try_start_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_db
    .catchall {:try_start_bc .. :try_end_db} :catchall_4ae

    :try_start_db
    monitor-exit v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AppOpsService;->writeState()V

    const-string/jumbo v25, "Current settings written."

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ef
    .catchall {:try_start_db .. :try_end_ef} :catchall_4b1

    :try_start_ef
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v25, 0x0

    return v25

    :cond_f5
    const-string/jumbo v25, "read-settings"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string/jumbo v26, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v27

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v28

    const/16 v29, 0x0

    invoke-virtual/range {v25 .. v29}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_121
    .catch Landroid/os/RemoteException; {:try_start_ef .. :try_end_121} :catch_1a1

    move-result-wide v22

    :try_start_122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AppOpsService;->readState()V

    const-string/jumbo v25, "Last settings read."

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_135
    .catchall {:try_start_122 .. :try_end_135} :catchall_4b6

    :try_start_135
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v25, 0x0

    return v25

    :cond_13b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_14c

    const-string/jumbo v25, "Error: Mode not specified."

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v25, -0x1

    return v25

    :cond_14c
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v12

    if-gez v12, :cond_157

    const/16 v25, -0x1

    return v25

    :cond_157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_185

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3, v12}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    :goto_182
    const/16 v25, 0x0

    return v25

    :cond_185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2, v12}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_1a0
    .catch Landroid/os/RemoteException; {:try_start_135 .. :try_end_1a0} :catch_1a1

    goto :goto_182

    :catch_1a1
    move-exception v5

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Remote exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v25, -0x1

    return v25

    :cond_1c2
    :try_start_1c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_220

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v25, v0

    const/16 v29, -0x1

    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_21d

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v29, v0

    const/16 v30, 0x0

    aput v29, v25, v30

    :goto_1fc
    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v16

    :goto_208
    if-eqz v16, :cond_210

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    if-gtz v25, :cond_25a

    :cond_210
    const-string/jumbo v25, "No operations."

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v25, 0x0

    return v25

    :cond_21d
    const/16 v25, 0x0

    goto :goto_1fc

    :cond_220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v25, v0

    const/16 v28, -0x1

    move/from16 v0, v25

    move/from16 v1, v28

    if-eq v0, v1, :cond_257

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v28, v0

    const/16 v29, 0x0

    aput v28, v25, v29

    :goto_24c
    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v16

    goto :goto_208

    :cond_257
    const/16 v25, 0x0

    goto :goto_24c

    :cond_25a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/4 v10, 0x0

    :goto_25f
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_37e

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual/range {v25 .. v25}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    const/4 v11, 0x0

    :goto_274
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_37a

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v25, ": "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v25

    packed-switch v25, :pswitch_data_4c0

    const-string/jumbo v25, "mode="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    :goto_2b7
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_2e2

    const-string/jumbo v25, "; time="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v26

    sub-long v26, v14, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo v25, " ago"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2e2
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_30d

    const-string/jumbo v25, "; rejectTime="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v26

    sub-long v26, v14, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo v25, " ago"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_30d
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_359

    const-string/jumbo v25, " (running)"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_323
    :goto_323
    invoke-virtual/range {v19 .. v19}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_274

    :pswitch_32a
    const-string/jumbo v25, "allow"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2b7

    :pswitch_335
    const-string/jumbo v25, "ignore"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2b7

    :pswitch_341
    const-string/jumbo v25, "deny"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2b7

    :pswitch_34d
    const-string/jumbo v25, "default"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2b7

    :cond_359
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v25

    if-eqz v25, :cond_323

    const-string/jumbo v25, "; duration="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_323

    :cond_37a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_25f

    :cond_37e
    const/16 v25, 0x0

    return v25

    :cond_381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    invoke-interface/range {v25 .. v26}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_3a5

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    if-gtz v25, :cond_3b2

    :cond_3a5
    const-string/jumbo v25, "No operations."

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v25, 0x0

    return v25

    :cond_3b2
    const/4 v10, 0x0

    :goto_3b3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_413

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/AppOpsManager$PackageOps;

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual/range {v25 .. v25}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    const/4 v11, 0x0

    :goto_3d1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_400

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_410

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->mode:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_410

    const/4 v9, 0x1

    :cond_400
    if-eqz v9, :cond_40d

    invoke-virtual/range {v18 .. v18}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_40d
    add-int/lit8 v10, v10, 0x1

    goto :goto_3b3

    :cond_410
    add-int/lit8 v11, v11, 0x1

    goto :goto_3d1

    :cond_413
    const/16 v25, 0x0

    return v25

    :cond_416
    if-nez v17, :cond_41c

    move-object/from16 v17, v4

    goto/16 :goto_6e

    :cond_41c
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Error: Unsupported argument: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v25, -0x1

    return v25

    :cond_43a
    const/16 v25, -0x2

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_446

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v21

    :cond_446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    const-string/jumbo v25, "Reset all modes for: "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_48a

    const-string/jumbo v25, "all users"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_471
    const-string/jumbo v25, ", "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v17, :cond_49c

    const-string/jumbo v25, "all packages"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_487
    const/16 v25, 0x0

    return v25

    :cond_48a
    const-string/jumbo v25, "user "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_471

    :cond_49c
    const-string/jumbo v25, "package "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4ad
    .catch Landroid/os/RemoteException; {:try_start_1c2 .. :try_end_4ad} :catch_1a1

    goto :goto_487

    :catchall_4ae
    move-exception v25

    :try_start_4af
    monitor-exit v26

    throw v25
    :try_end_4b1
    .catchall {:try_start_4af .. :try_end_4b1} :catchall_4b1

    :catchall_4b1
    move-exception v25

    :try_start_4b2
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v25

    :catchall_4b6
    move-exception v25

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v25

    :cond_4bb
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_4be
    .catch Landroid/os/RemoteException; {:try_start_4b2 .. :try_end_4be} :catch_1a1

    move-result v25

    return v25

    :pswitch_data_4c0
    .packed-switch 0x0
        :pswitch_32a
        :pswitch_335
        :pswitch_341
        :pswitch_34d
    .end packed-switch
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .registers 14

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->time:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_3f

    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_3f

    invoke-direct {p0, p2, p3, v7}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v3}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v3

    if-gtz v3, :cond_3f

    iget-object v2, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget-object v1, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3f

    iget-object v3, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    iput-object v6, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    :cond_34
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_3f
    return-void
.end method

.method private removeUidsForUserLocked(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_1b

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    return-void
.end method

.method private static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_6

    const-string/jumbo v0, "root"

    return-object v0

    :cond_6
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_e

    const-string/jumbo v0, "com.android.shell"

    return-object v0

    :cond_e
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_18

    if-nez p1, :cond_18

    const-string/jumbo v0, "android"

    return-object v0

    :cond_18
    return-object p1
.end method

.method private scheduleFastWriteLocked()V
    .registers 5

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_19

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    return-void
.end method

.method private scheduleWriteLocked()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method

.method private setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$ClientRestrictionState;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_35

    if-nez v2, :cond_16

    :try_start_c
    new-instance v2, Lcom/android/server/AppOpsService$ClientRestrictionState;

    invoke-direct {v2, p0, p3}, Lcom/android/server/AppOpsService$ClientRestrictionState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_32
    .catchall {:try_start_c .. :try_end_11} :catchall_35

    :try_start_11
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    invoke-virtual {v2, p1, p2, p5, p4}, Lcom/android/server/AppOpsService$ClientRestrictionState;->setRestriction(IZ[Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_35

    :cond_2b
    monitor-exit p0

    if-eqz v1, :cond_31

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    :cond_31
    return-void

    :catch_32
    move-exception v0

    monitor-exit p0

    return-void

    :catchall_35
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private verifyIncomingOp(I)V
    .registers 5

    if-ltz p1, :cond_7

    const/16 v0, 0x48

    if-ge p1, v0, :cond_7

    return-void

    :cond_7
    const/16 v0, 0x2710

    if-le p1, v0, :cond_10

    const/16 v0, 0x2729

    if-ge p1, v0, :cond_10

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .registers 11

    :try_start_0
    invoke-direct {p0, p4, p3}, Lcom/android/server/AppOpsService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_33

    move-result v2

    :goto_4
    if-nez p4, :cond_a

    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_a
    if-eqz v2, :cond_36

    const-string/jumbo v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Audio disabled for suspended package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :catch_33
    move-exception v0

    const/4 v2, 0x0

    goto :goto_4

    :cond_36
    monitor-enter p0

    :try_start_37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_45

    move-result v1

    if-eqz v1, :cond_3f

    monitor-exit p0

    return v1

    :cond_3f
    monitor-exit p0

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v3

    return v3

    :catchall_45
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public checkOperation(IILjava/lang/String;)I
    .registers 12

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    return v1

    :cond_f
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, v2}, Lcom/android/server/AppOpsServiceState;->isCtsIgnore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppOpsServiceState;->isAppPermissionControlOpen(II)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/AppOpsServiceState;->isMiuiAllowed(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_27
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move v1, p2

    move v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/AppOpsServiceState;->allowedToMode(IILjava/lang/String;)I

    move-result v0

    return v0

    :cond_36
    monitor-enter p0

    :try_start_37
    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_6f

    move-result v0

    if-eqz v0, :cond_3f

    monitor-exit p0

    return v1

    :cond_3f
    :try_start_3f
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v7

    if-eqz v7, :cond_5e

    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_5e

    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_5e

    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_5b
    .catchall {:try_start_3f .. :try_end_5b} :catchall_6f

    move-result v0

    monitor-exit p0

    return v0

    :cond_5e
    const/4 v0, 0x0

    :try_start_5f
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v6

    if-nez v6, :cond_6b

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_6f

    move-result v0

    monitor-exit p0

    return v0

    :cond_6b
    :try_start_6b
    iget v0, v6, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_6d
    .catchall {:try_start_6b .. :try_end_6d} :catchall_6f

    monitor-exit p0

    return v0

    :catchall_6f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkOperationInternal(IILjava/lang/String;)I
    .registers 7

    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    monitor-enter p0

    :try_start_7
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, p3, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_19

    move-result-object v0

    if-nez v0, :cond_15

    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :cond_15
    :try_start_15
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_19

    monitor-exit p0

    return v1

    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public checkPackage(ILjava/lang/String;)I
    .registers 4

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_5
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_11

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    const-string/jumbo v39, "AppOps"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v38

    if-nez v38, :cond_16

    return-void

    :cond_16
    if-eqz p3, :cond_97

    const/4 v9, 0x0

    :goto_19
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v9, v0, :cond_97

    aget-object v4, p3, v9

    const-string/jumbo v38, "-h"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_37

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_37
    const-string/jumbo v38, "-a"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_45

    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_45
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v38

    if-lez v38, :cond_79

    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v38

    const/16 v39, 0x2d

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_79

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Unknown option: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_79
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Unknown command: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_97
    monitor-enter p0

    :try_start_98
    const-string/jumbo v38, "Current AppOps Service state:"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/util/SparseArray;->size()I

    move-result v38

    if-lez v38, :cond_139

    const/4 v13, 0x1

    const-string/jumbo v38, "  Op mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/util/SparseArray;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v9, v0, :cond_139

    const-string/jumbo v38, "    Op "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v38

    invoke-static/range {v38 .. v38}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v38, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    const/4 v10, 0x0

    :goto_107
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v10, v0, :cond_136

    const-string/jumbo v38, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v38, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_107

    :cond_136
    add-int/lit8 v9, v9, 0x1

    goto :goto_bf

    :cond_139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/util/ArrayMap;->size()I

    move-result v38

    if-lez v38, :cond_1c9

    const/4 v13, 0x1

    const-string/jumbo v38, "  Package mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/util/ArrayMap;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v9, v0, :cond_1c9

    const-string/jumbo v38, "    Pkg "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v38, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    const/4 v10, 0x0

    :goto_197
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v10, v0, :cond_1c6

    const-string/jumbo v38, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v38, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_197

    :cond_1c6
    add-int/lit8 v9, v9, 0x1

    goto :goto_151

    :cond_1c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/util/ArrayMap;->size()I

    move-result v38

    if-lez v38, :cond_22c

    const/4 v13, 0x1

    const-string/jumbo v38, "  All mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_1e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/util/ArrayMap;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v9, v0, :cond_22c

    const-string/jumbo v38, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v38, " -> "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e1

    :cond_22c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/util/ArrayMap;->size()I

    move-result v38

    if-lez v38, :cond_323

    const/4 v13, 0x1

    const-string/jumbo v38, "  Clients:"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/util/ArrayMap;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v9, v0, :cond_323

    const-string/jumbo v38, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v38, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$ClientState;

    const-string/jumbo v38, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    if-eqz v38, :cond_31f

    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v38

    if-lez v38, :cond_31f

    const-string/jumbo v38, "      Started ops:"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_2b1
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v10, v0, :cond_31f

    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/AppOpsService$Op;

    const-string/jumbo v38, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v38, "uid="

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->uid:I

    move/from16 v38, v0

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v38, " pkg="

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v38, " op="

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2b1

    :cond_31f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_244

    :cond_323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/util/SparseArray;->size()I

    move-result v38

    if-lez v38, :cond_417

    const/16 v25, 0x0

    const/16 v16, 0x0

    :goto_333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/util/SparseArray;->size()I

    move-result v38

    move/from16 v0, v16

    move/from16 v1, v38

    if-ge v0, v1, :cond_417

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v38

    invoke-static/range {v38 .. v38}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/util/SparseArray;

    const/4 v9, 0x0

    :goto_366
    invoke-virtual/range {v32 .. v32}, Landroid/util/SparseArray;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v9, v0, :cond_413

    if-nez v25, :cond_37d

    const-string/jumbo v38, "  Audio Restrictions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v25, 0x1

    const/4 v13, 0x1

    :cond_37d
    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v35

    const-string/jumbo v38, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v38, " usage="

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v35 .. v35}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/AppOpsService$Restriction;

    const-string/jumbo v38, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    move/from16 v38, v0

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_40f

    const-string/jumbo v38, "      Exceptions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_3df
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/util/ArraySet;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v10, v0, :cond_40f

    const-string/jumbo v38, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3df

    :cond_40f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_366

    :cond_413
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_333

    :cond_417
    if-eqz v13, :cond_41c

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_41c
    const/4 v9, 0x0

    :goto_41d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/util/SparseArray;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v9, v0, :cond_5c8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/AppOpsService$UidState;

    const-string/jumbo v38, "  Uid "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v38, v0

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v38, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v13, 0x1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v20, v0

    if-eqz v20, :cond_49f

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseIntArray;->size()I

    move-result v19

    const/4 v10, 0x0

    :goto_468
    move/from16 v0, v19

    if-ge v10, v0, :cond_49f

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    const-string/jumbo v38, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v38, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_468

    :cond_49f
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    if-nez v24, :cond_4ab

    :cond_4a7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_41d

    :cond_4ab
    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_4b3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_4a7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/AppOpsService$Ops;

    const-string/jumbo v38, "    Package "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v38, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_4e1
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v10, v0, :cond_4b3

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/AppOpsService$Op;

    const-string/jumbo v38, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v38, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v38, v0

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_552

    const-string/jumbo v38, "; time="

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v38, v0

    sub-long v38, v14, v38

    move-wide/from16 v0, v38

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo v38, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_552
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_581

    const-string/jumbo v38, "; rejectTime="

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v38, v0

    sub-long v38, v14, v38

    move-wide/from16 v0, v38

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo v38, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_581
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v38, v0

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_5a0

    const-string/jumbo v38, " (running)"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_599
    :goto_599
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4e1

    :cond_5a0
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v38, v0

    if-eqz v38, :cond_599

    const-string/jumbo v38, "; duration="

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V
    :try_end_5c4
    .catchall {:try_start_98 .. :try_end_5c4} :catchall_5c5

    goto :goto_599

    :catchall_5c5
    move-exception v38

    monitor-exit p0

    throw v38

    :cond_5c8
    if-eqz v13, :cond_5cd

    :try_start_5ca
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_5cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/util/ArrayMap;->size()I

    move-result v37

    const/4 v9, 0x0

    :goto_5d8
    move/from16 v0, v37

    if-ge v9, v0, :cond_74f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/AppOpsService$ClientRestrictionState;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "  User restrictions for token "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ":"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    if-eqz v38, :cond_660

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/util/SparseArray;->size()I

    move-result v30

    :goto_630
    if-lez v30, :cond_6db

    const-string/jumbo v38, "      Restricted ops:"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_63d
    move/from16 v0, v30

    if-ge v10, v0, :cond_6db

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v36

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [Z

    if-nez v28, :cond_663

    :goto_65d
    add-int/lit8 v10, v10, 0x1

    goto :goto_63d

    :cond_660
    const/16 v30, 0x0

    goto :goto_630

    :cond_663
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "["

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v27, v0

    const/4 v11, 0x0

    :goto_678
    move/from16 v0, v27

    if-ge v11, v0, :cond_6a4

    aget-boolean v38, v28, v11

    if-eqz v38, :cond_6a1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->length()I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_696

    const-string/jumbo v38, ", "

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_696
    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6a1
    add-int/lit8 v11, v11, 0x1

    goto :goto_678

    :cond_6a4
    const-string/jumbo v38, "]"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v38, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v38, "user: "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v38, " restricted ops: "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_65d

    :cond_6db
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    if-eqz v38, :cond_749

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/util/SparseArray;->size()I

    move-result v8

    :goto_6ed
    if-lez v8, :cond_74b

    const-string/jumbo v38, "      Excluded packages:"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_6fa
    if-ge v10, v8, :cond_74b

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v36

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;

    const-string/jumbo v38, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v38, "user: "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v38, " packages: "

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_746
    .catchall {:try_start_5ca .. :try_end_746} :catchall_5c5

    add-int/lit8 v10, v10, 0x1

    goto :goto_6fa

    :cond_749
    const/4 v8, 0x0

    goto :goto_6ed

    :cond_74b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5d8

    :cond_74f
    monitor-exit p0

    return-void
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .registers 11

    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    instance-of v3, p1, Lcom/android/server/AppOpsService$ClientState;

    if-nez v3, :cond_12

    return-void

    :cond_12
    move-object v0, p1

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    monitor-enter p0

    const/4 v3, 0x1

    :try_start_17
    invoke-direct {p0, p2, p3, v2, v3}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_61

    move-result-object v1

    if-nez v1, :cond_1f

    monitor-exit p0

    return-void

    :cond_1f
    :try_start_1f
    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v3, :cond_64

    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Operation not started: uid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " op="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_61
    .catchall {:try_start_1f .. :try_end_61} :catchall_61

    :catchall_61
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_64
    :try_start_64
    invoke-virtual {p0, v1}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_61

    monitor-exit p0

    return-void
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    .registers 6

    const/4 v1, 0x1

    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-gt v0, v1, :cond_7d

    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-ne v0, v1, :cond_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    iget-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    :goto_1b
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    :goto_1e
    return-void

    :cond_1f
    const-string/jumbo v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finishing op nesting under-run: uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_7d
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    goto :goto_1e
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1c

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    :cond_1c
    monitor-enter p0

    const/4 v5, 0x0

    :try_start_1e
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_43

    move-result-object v0

    if-nez v0, :cond_26

    monitor-exit p0

    return-object v9

    :cond_26
    :try_start_26
    invoke-direct {p0, v0, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_43

    move-result-object v2

    if-nez v2, :cond_2e

    monitor-exit p0

    return-object v9

    :cond_2e
    :try_start_2e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget-object v5, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v6, v6, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v3, v5, v6, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_2e .. :try_end_41} :catchall_43

    monitor-exit p0

    return-object v1

    :catchall_43
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v12, :cond_6d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$UidState;

    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v13, :cond_37

    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3a

    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_3a
    iget-object v5, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I
    :try_end_3f
    .catchall {:try_start_16 .. :try_end_3f} :catchall_6f

    move-result v4

    const/4 v3, 0x0

    move-object v8, v7

    :goto_42
    if-ge v3, v4, :cond_79

    :try_start_44
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_77

    if-nez v8, :cond_75

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_72

    :goto_5b
    :try_start_5b
    new-instance v10, Landroid/app/AppOpsManager$PackageOps;

    iget-object v13, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v14, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v14, v14, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v10, v13, v14, v9}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catchall {:try_start_5b .. :try_end_69} :catchall_6f

    :goto_69
    add-int/lit8 v3, v3, 0x1

    move-object v8, v7

    goto :goto_42

    :cond_6d
    monitor-exit p0

    return-object v7

    :catchall_6f
    move-exception v13

    :goto_70
    monitor-exit p0

    throw v13

    :catchall_72
    move-exception v13

    move-object v7, v8

    goto :goto_70

    :cond_75
    move-object v7, v8

    goto :goto_5b

    :cond_77
    move-object v7, v8

    goto :goto_69

    :cond_79
    move-object v7, v8

    goto :goto_37
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    if-nez v0, :cond_15

    new-instance v0, Lcom/android/server/AppOpsService$ClientState;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getUidOps(I[I)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_13
    invoke-direct {p0, p1, v4}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_37

    move-result-object v3

    if-nez v3, :cond_1b

    monitor-exit p0

    return-object v8

    :cond_1b
    :try_start_1b
    iget-object v4, v3, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-direct {p0, v4, p2}, Lcom/android/server/AppOpsService;->collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_37

    move-result-object v1

    if-nez v1, :cond_25

    monitor-exit p0

    return-object v8

    :cond_25
    :try_start_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/app/AppOpsManager$PackageOps;

    iget v4, v3, Lcom/android/server/AppOpsService$UidState;->uid:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v4, v1}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_37

    monitor-exit p0

    return-object v0

    :catchall_37
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .registers 11

    const/4 v6, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    return v6

    :cond_e
    monitor-enter p0

    :try_start_f
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_17
    if-ltz v1, :cond_48

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    iget-object v5, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-nez v5, :cond_28

    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_28
    iget-object v5, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_30
    if-ltz v2, :cond_25

    iget-object v5, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Op;

    iget v5, v3, Lcom/android/server/AppOpsService$Op;->op:I

    if-ne v5, p1, :cond_45

    iget v5, v3, Lcom/android/server/AppOpsService$Op;->uid:I
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_4a

    if-ne v5, p2, :cond_45

    const/4 v5, 0x1

    monitor-exit p0

    return v5

    :cond_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_30

    :cond_48
    monitor-exit p0

    return v6

    :catchall_4a
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public noteOperation(IILjava/lang/String;)I
    .registers 10

    const/4 v5, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    .registers 15

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    return v6

    :cond_10
    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, p3, :cond_20

    :cond_1f
    return v8

    :cond_20
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_27

    return v6

    :cond_27
    move-object v4, p0

    move v5, p1

    move v6, p3

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    new-instance v0, Lcom/android/server/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AppOpsService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$UidState;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_38

    if-nez v1, :cond_d

    monitor-exit p0

    return-void

    :cond_d
    const/4 v0, 0x0

    :try_start_e
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1b

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    if-eqz v0, :cond_31

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {p1}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_31
    if-eqz v0, :cond_36

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_38

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, -0x1

    return v0

    :cond_4
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "appops"

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsServiceState;->init(Landroid/content/Context;)V

    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x3

    const-string/jumbo v4, "n"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_d
    :goto_d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_54

    if-ne v3, v7, :cond_1c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_54

    :cond_1c
    if-eq v3, v7, :cond_d

    const/4 v4, 0x4

    if-eq v3, v4, :cond_d

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {p0, p1, v1}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_d

    :cond_32
    const-string/jumbo v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_d

    :cond_54
    return-void
.end method

.method readState()V
    .registers 19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v15

    :try_start_5
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_213

    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_d} :catch_69
    .catchall {:try_start_6 .. :try_end_d} :catchall_210

    move-result-object v10

    const/4 v11, 0x0

    :try_start_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_210

    :try_start_16
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_23
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_2d

    const/4 v14, 0x1

    if-ne v13, v14, :cond_23

    :cond_2d
    const/4 v14, 0x2

    if-eq v13, v14, :cond_9a

    new-instance v14, Ljava/lang/IllegalStateException;

    const-string/jumbo v16, "no start tag found"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_3b} :catch_3b
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_3b} :catch_c7
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_3b} :catch_106
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_3b} :catch_15b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_3b} :catch_1cd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_3b} :catch_19d
    .catchall {:try_start_16 .. :try_end_3b} :catchall_200

    :catch_3b
    move-exception v3

    :try_start_3c
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_3c .. :try_end_5a} :catchall_200

    if-nez v11, :cond_63

    :try_start_5c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_210

    :cond_63
    :try_start_63
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_1fd
    .catchall {:try_start_63 .. :try_end_66} :catchall_210

    :goto_66
    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_213

    monitor-exit v15

    return-void

    :catch_69
    move-exception v1

    :try_start_6a
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "No existing app ops "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "; starting empty"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_6a .. :try_end_97} :catchall_210

    :try_start_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_213

    monitor-exit v15

    return-void

    :cond_9a
    :try_start_9a
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    :cond_9e
    :goto_9e
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_18b

    const/4 v14, 0x3

    if-ne v13, v14, :cond_ae

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v8, :cond_18b

    :cond_ae
    const/4 v14, 0x3

    if-eq v13, v14, :cond_9e

    const/4 v14, 0x4

    if-eq v13, v14, :cond_9e

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v14, "pkg"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_c6
    .catch Ljava/lang/IllegalStateException; {:try_start_9a .. :try_end_c6} :catch_3b
    .catch Ljava/lang/NullPointerException; {:try_start_9a .. :try_end_c6} :catch_c7
    .catch Ljava/lang/NumberFormatException; {:try_start_9a .. :try_end_c6} :catch_106
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9a .. :try_end_c6} :catch_15b
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_c6} :catch_1cd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9a .. :try_end_c6} :catch_19d
    .catchall {:try_start_9a .. :try_end_c6} :catchall_200

    goto :goto_9e

    :catch_c7
    move-exception v5

    :try_start_c8
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catchall {:try_start_c8 .. :try_end_e6} :catchall_200

    if-nez v11, :cond_ef

    :try_start_e8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_ef
    .catchall {:try_start_e8 .. :try_end_ef} :catchall_210

    :cond_ef
    :try_start_ef
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_f4
    .catchall {:try_start_ef .. :try_end_f2} :catchall_210

    goto/16 :goto_66

    :catch_f4
    move-exception v2

    goto/16 :goto_66

    :cond_f7
    :try_start_f7
    const-string/jumbo v14, "uid"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_136

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_105
    .catch Ljava/lang/IllegalStateException; {:try_start_f7 .. :try_end_105} :catch_3b
    .catch Ljava/lang/NullPointerException; {:try_start_f7 .. :try_end_105} :catch_c7
    .catch Ljava/lang/NumberFormatException; {:try_start_f7 .. :try_end_105} :catch_106
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f7 .. :try_end_105} :catch_15b
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_105} :catch_1cd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f7 .. :try_end_105} :catch_19d
    .catchall {:try_start_f7 .. :try_end_105} :catchall_200

    goto :goto_9e

    :catch_106
    move-exception v6

    :try_start_107
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_125
    .catchall {:try_start_107 .. :try_end_125} :catchall_200

    if-nez v11, :cond_12e

    :try_start_127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_12e
    .catchall {:try_start_127 .. :try_end_12e} :catchall_210

    :cond_12e
    :try_start_12e
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_131} :catch_133
    .catchall {:try_start_12e .. :try_end_131} :catchall_210

    goto/16 :goto_66

    :catch_133
    move-exception v2

    goto/16 :goto_66

    :cond_136
    :try_start_136
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unknown element under <app-ops>: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_159
    .catch Ljava/lang/IllegalStateException; {:try_start_136 .. :try_end_159} :catch_3b
    .catch Ljava/lang/NullPointerException; {:try_start_136 .. :try_end_159} :catch_c7
    .catch Ljava/lang/NumberFormatException; {:try_start_136 .. :try_end_159} :catch_106
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_136 .. :try_end_159} :catch_15b
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_159} :catch_1cd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_136 .. :try_end_159} :catch_19d
    .catchall {:try_start_136 .. :try_end_159} :catchall_200

    goto/16 :goto_9e

    :catch_15b
    move-exception v7

    :try_start_15c
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17a
    .catchall {:try_start_15c .. :try_end_17a} :catchall_200

    if-nez v11, :cond_183

    :try_start_17c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_183
    .catchall {:try_start_17c .. :try_end_183} :catchall_210

    :cond_183
    :try_start_183
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_188
    .catchall {:try_start_183 .. :try_end_186} :catchall_210

    goto/16 :goto_66

    :catch_188
    move-exception v2

    goto/16 :goto_66

    :cond_18b
    const/4 v11, 0x1

    if-nez v11, :cond_195

    :try_start_18e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_195
    .catchall {:try_start_18e .. :try_end_195} :catchall_210

    :cond_195
    :try_start_195
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_198} :catch_19a
    .catchall {:try_start_195 .. :try_end_198} :catchall_210

    goto/16 :goto_66

    :catch_19a
    move-exception v2

    goto/16 :goto_66

    :catch_19d
    move-exception v4

    :try_start_19e
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bc
    .catchall {:try_start_19e .. :try_end_1bc} :catchall_200

    if-nez v11, :cond_1c5

    :try_start_1be
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_1c5
    .catchall {:try_start_1be .. :try_end_1c5} :catchall_210

    :cond_1c5
    :try_start_1c5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1c8
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1c8} :catch_1ca
    .catchall {:try_start_1c5 .. :try_end_1c8} :catchall_210

    goto/16 :goto_66

    :catch_1ca
    move-exception v2

    goto/16 :goto_66

    :catch_1cd
    move-exception v2

    :try_start_1ce
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ec
    .catchall {:try_start_1ce .. :try_end_1ec} :catchall_200

    if-nez v11, :cond_1f5

    :try_start_1ee
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_1f5
    .catchall {:try_start_1ee .. :try_end_1f5} :catchall_210

    :cond_1f5
    :try_start_1f5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1f8
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_1f8} :catch_1fa
    .catchall {:try_start_1f5 .. :try_end_1f8} :catchall_210

    goto/16 :goto_66

    :catch_1fa
    move-exception v2

    goto/16 :goto_66

    :catch_1fd
    move-exception v2

    goto/16 :goto_66

    :catchall_200
    move-exception v14

    if-nez v11, :cond_20c

    :try_start_203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->clear()V
    :try_end_20c
    .catchall {:try_start_203 .. :try_end_20c} :catchall_210

    :cond_20c
    :try_start_20c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_20f
    .catch Ljava/io/IOException; {:try_start_20c .. :try_end_20f} :catch_216
    .catchall {:try_start_20c .. :try_end_20f} :catchall_210

    :goto_20f
    :try_start_20f
    throw v14
    :try_end_210
    .catchall {:try_start_20f .. :try_end_210} :catchall_210

    :catchall_210
    move-exception v14

    :try_start_211
    monitor-exit p0

    throw v14
    :try_end_213
    .catchall {:try_start_211 .. :try_end_213} :catchall_213

    :catchall_213
    move-exception v14

    monitor-exit v15

    throw v14

    :catch_216
    move-exception v2

    goto :goto_20f
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v21, "n"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const-string/jumbo v21, "p"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    if-nez v8, :cond_1a1

    :try_start_25
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    if-eqz v13, :cond_190

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v21

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_4c

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    move/from16 v21, v0
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_47} :catch_191

    and-int/lit8 v21, v21, 0x8

    if-eqz v21, :cond_18d

    const/4 v7, 0x1

    :cond_4c
    :goto_4c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    :cond_50
    :goto_50
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_1ca

    const/16 v21, 0x3

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_6c

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v12, :cond_1ca

    :cond_6c
    const/16 v21, 0x3

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_50

    const/16 v21, 0x4

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_50

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v21, "op"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1a7

    new-instance v10, Lcom/android/server/AppOpsService$Op;

    const-string/jumbo v21, "n"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v19

    move-object/from16 v1, p2

    move/from16 v2, v21

    invoke-direct {v10, v0, v1, v2}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;I)V

    const-string/jumbo v21, "m"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    :cond_c4
    const-string/jumbo v21, "t"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_dd

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v10, Lcom/android/server/AppOpsService$Op;->time:J

    :cond_dd
    const-string/jumbo v21, "r"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_f6

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v10, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    :cond_f6
    const-string/jumbo v21, "d"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10f

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Lcom/android/server/AppOpsService$Op;->duration:I

    :cond_10f
    const-string/jumbo v21, "pu"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_128

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    :cond_128
    const-string/jumbo v21, "pp"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_13b

    iput-object v14, v10, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    :cond_13b
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    if-nez v21, :cond_15a

    new-instance v21, Landroid/util/ArrayMap;

    invoke-direct/range {v21 .. v21}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    :cond_15a
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$Ops;

    if-nez v11, :cond_182

    new-instance v11, Lcom/android/server/AppOpsService$Ops;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1, v7}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_182
    iget v0, v10, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v11, v0, v10}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    goto/16 :goto_50

    :cond_18d
    const/4 v7, 0x0

    goto/16 :goto_4c

    :cond_190
    return-void

    :catch_191
    move-exception v6

    const-string/jumbo v21, "AppOps"

    const-string/jumbo v22, "Could not contact PackageManager"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4c

    :cond_1a1
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_4c

    :cond_1a7
    const-string/jumbo v21, "AppOps"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Unknown element under <pkg>: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_50

    :cond_1ca
    return-void
.end method

.method readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string/jumbo v7, "n"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :cond_12
    :goto_12
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v11, :cond_7f

    if-ne v4, v12, :cond_20

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_7f

    :cond_20
    if-eq v4, v12, :cond_12

    const/4 v7, 0x4

    if-eq v4, v7, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "op"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    const-string/jumbo v7, "n"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v7, "m"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v5, v11}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v6

    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v7, :cond_57

    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    :cond_57
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_12

    :cond_5d
    const-string/jumbo v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown element under <uid-ops>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_12

    :cond_7f
    return-void
.end method

.method public registerCallback(Lcom/android/internal/app/IOpsCallback;)I
    .registers 3

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, p1}, Lcom/android/server/AppOpsServiceState;->registerCallback(Lcom/android/internal/app/IOpsCallback;)I

    move-result v0

    return v0
.end method

.method public removeUser(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v3, "removeUser"

    invoke-direct {p0, v3}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_7
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_f
    if-ltz v0, :cond_1f

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$ClientRestrictionState;

    invoke-virtual {v1, p1}, Lcom/android/server/AppOpsService$ClientRestrictionState;->removeUser(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_1f
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->removeUidsForUserLocked(I)V
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .registers 33

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    const-string/jumbo v7, "resetAllModes"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/16 v27, -0x1

    if-eqz p2, :cond_31

    :try_start_23
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v5, 0x2000

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-interface {v4, v0, v5, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_30} :catch_1ff

    move-result v27

    :cond_31
    :goto_31
    const/4 v9, 0x0

    monitor-enter p0

    const/4 v11, 0x0

    :try_start_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v18, v4, -0x1

    :goto_3e
    if-ltz v18, :cond_1ac

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/AppOpsService$UidState;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c9

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v0, v27

    if-eq v4, v0, :cond_61

    const/4 v4, -0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_c9

    :cond_61
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v28

    add-int/lit8 v20, v28, -0x1

    :goto_67
    if-ltz v20, :cond_c9

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    invoke-static {v12}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_c6

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_89

    const/4 v4, 0x0

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    :cond_89
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    array-length v7, v6

    move v5, v4

    :goto_94
    if-ge v5, v7, :cond_c6

    aget-object v22, v6, v5

    move-object/from16 v0, v29

    iget v8, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object/from16 v0, v22

    invoke-static {v9, v12, v8, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v9

    move-object/from16 v0, v29

    iget v8, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object/from16 v0, v22

    invoke-static {v9, v12, v8, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v9

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_94

    :cond_c6
    add-int/lit8 v20, v20, -0x1

    goto :goto_67

    :cond_c9
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_d3

    :cond_cf
    :goto_cf
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_3e

    :cond_d3
    const/4 v4, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_e4

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_cf

    :cond_e4
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_f2
    :goto_f2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_199

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    if-eqz p2, :cond_112

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_f2

    :cond_112
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AppOpsService$Ops;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    add-int/lit8 v20, v4, -0x1

    :goto_11e
    if-ltz v20, :cond_18b

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Op;

    iget v4, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_188

    iget v4, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v5}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v5

    if-eq v4, v5, :cond_188

    iget v4, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    iput v4, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v11, 0x1

    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    iget v6, v13, Lcom/android/server/AppOpsService$Op;->uid:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    iget v7, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object/from16 v0, v22

    invoke-static {v9, v5, v6, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v9

    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    iget v6, v13, Lcom/android/server/AppOpsService$Op;->uid:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object/from16 v0, v22

    invoke-static {v9, v5, v6, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v9

    iget-wide v4, v13, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_188

    iget-wide v4, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_188

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V

    :cond_188
    add-int/lit8 v20, v20, -0x1

    goto :goto_11e

    :cond_18b
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    if-nez v4, :cond_f2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V
    :try_end_194
    .catchall {:try_start_34 .. :try_end_194} :catchall_196

    goto/16 :goto_f2

    :catchall_196
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_199
    :try_start_199
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_cf

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_cf

    :cond_1ac
    if-eqz v11, :cond_1b1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_1b1
    .catchall {:try_start_199 .. :try_end_1b1} :catchall_196

    :cond_1b1
    monitor-exit p0

    if-eqz v9, :cond_1fc

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1bc
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1fc

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppOpsService$Callback;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    const/16 v18, 0x0

    :goto_1d6
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_1bc

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AppOpsService$ChangeRec;

    :try_start_1e8
    iget-object v4, v10, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/server/AppOpsService$ChangeRec;->uid:I

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_1f9
    .catch Landroid/os/RemoteException; {:try_start_1e8 .. :try_end_1f9} :catch_1fd

    :goto_1f9
    add-int/lit8 v18, v18, 0x1

    goto :goto_1d6

    :cond_1fc
    return-void

    :catch_1fd
    move-exception v14

    goto :goto_1f9

    :catch_1ff
    move-exception v14

    goto/16 :goto_31
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .registers 13

    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    monitor-enter p0

    :try_start_7
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    if-nez v4, :cond_1b

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1b
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p4, :cond_48

    new-instance v3, Lcom/android/server/AppOpsService$Restriction;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$Restriction;)V

    iput p4, v3, Lcom/android/server/AppOpsService$Restriction;->mode:I

    if-eqz p5, :cond_45

    array-length v0, p5

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    const/4 v1, 0x0

    :goto_33
    if-ge v1, v0, :cond_45

    aget-object v2, p5, v1

    if-eqz v2, :cond_42

    iget-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_45
    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_4d

    :cond_48
    monitor-exit p0

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    return-void

    :catchall_4d
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 23

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    if-eq v13, v14, :cond_1e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_1e
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    const/4 v10, 0x0

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    monitor-enter p0

    const/4 v13, 0x0

    :try_start_28
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v7

    if-eqz v7, :cond_8d

    iget v13, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v0, p4

    if-eq v13, v0, :cond_8d

    move/from16 v0, p4

    iput v0, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    if-eqz v4, :cond_c4

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_5c
    .catchall {:try_start_28 .. :try_end_5c} :catchall_af

    :try_start_5c
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_5f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    if-eqz v4, :cond_c2

    if-nez v11, :cond_c0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_74
    .catchall {:try_start_5c .. :try_end_74} :catchall_bd

    :goto_74
    :try_start_74
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_77
    iget v13, v7, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v13}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v13

    move/from16 v0, p4

    if-ne v0, v13, :cond_8a

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    :cond_8a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_8d
    .catchall {:try_start_74 .. :try_end_8d} :catchall_af

    :cond_8d
    monitor-exit p0

    if-eqz v10, :cond_b5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const/4 v6, 0x0

    :goto_95
    :try_start_95
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_b6

    move-result v13

    if-ge v6, v13, :cond_b2

    :try_start_9b
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Callback;

    iget-object v13, v13, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v13, v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_ac} :catch_bb
    .catchall {:try_start_9b .. :try_end_ac} :catchall_b6

    :goto_ac
    add-int/lit8 v6, v6, 0x1

    goto :goto_95

    :catchall_af
    move-exception v13

    :goto_b0
    monitor-exit p0

    throw v13

    :cond_b2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_b5
    return-void

    :catchall_b6
    move-exception v13

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    :catch_bb
    move-exception v5

    goto :goto_ac

    :catchall_bd
    move-exception v13

    move-object v10, v11

    goto :goto_b0

    :cond_c0
    move-object v10, v11

    goto :goto_74

    :cond_c2
    move-object v10, v11

    goto :goto_77

    :cond_c4
    move-object v11, v10

    goto :goto_5f
.end method

.method public setUidMode(III)V
    .registers 31

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v25

    const/16 v26, 0x0

    invoke-virtual/range {v22 .. v26}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_24
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    monitor-enter p0

    :try_start_2c
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v10

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_e0

    move-result-object v21

    if-nez v21, :cond_b6

    move/from16 v0, p3

    if-ne v0, v10, :cond_44

    monitor-exit p0

    return-void

    :cond_44
    :try_start_44
    new-instance v21, Lcom/android/server/AppOpsService$UidState;

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    new-instance v22, Landroid/util/SparseIntArray;

    invoke-direct/range {v22 .. v22}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_79
    .catchall {:try_start_44 .. :try_end_79} :catchall_e0

    :cond_79
    :goto_79
    monitor-exit p0

    invoke-static/range {p2 .. p2}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v20

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    if-eqz v8, :cond_134

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I
    :try_end_95
    .catchall {:try_start_80 .. :try_end_95} :catchall_18b

    move-result v5

    const/4 v12, 0x0

    move-object v7, v6

    :goto_98
    if-ge v12, v5, :cond_133

    :try_start_9a
    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, v20

    invoke-static {v9, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V
    :try_end_af
    .catchall {:try_start_9a .. :try_end_af} :catchall_1f8

    :try_start_af
    invoke-virtual {v6, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_18b

    add-int/lit8 v12, v12, 0x1

    move-object v7, v6

    goto :goto_98

    :cond_b6
    :try_start_b6
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    if-nez v22, :cond_e3

    move/from16 v0, p3

    if-eq v0, v10, :cond_79

    new-instance v22, Landroid/util/SparseIntArray;

    invoke-direct/range {v22 .. v22}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_df
    .catchall {:try_start_b6 .. :try_end_df} :catchall_e0

    goto :goto_79

    :catchall_e0
    move-exception v22

    monitor-exit p0

    throw v22

    :cond_e3
    :try_start_e3
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_f0
    .catchall {:try_start_e3 .. :try_end_f0} :catchall_e0

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p3

    if-ne v0, v1, :cond_f9

    monitor-exit p0

    return-void

    :cond_f9
    move/from16 v0, p3

    if-ne v0, v10, :cond_123

    :try_start_fd
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseIntArray;->size()I

    move-result v22

    if-gtz v22, :cond_11e

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    :cond_11e
    :goto_11e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto/16 :goto_79

    :cond_123
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_132
    .catchall {:try_start_fd .. :try_end_132} :catchall_e0

    goto :goto_11e

    :cond_133
    move-object v6, v7

    :cond_134
    const/16 v22, 0x0

    :try_start_136
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0
    :try_end_13b
    .catchall {:try_start_136 .. :try_end_13b} :catchall_18b

    move-object v7, v6

    :goto_13c
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_187

    :try_start_142
    aget-object v19, v20, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    if-eqz v8, :cond_182

    if-nez v7, :cond_1fb

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V
    :try_end_15d
    .catchall {:try_start_142 .. :try_end_15d} :catchall_1f8

    :goto_15d
    :try_start_15d
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v12, 0x0

    :goto_162
    if-ge v12, v5, :cond_183

    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    if-nez v9, :cond_17a

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v6, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17a
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_17f
    .catchall {:try_start_15d .. :try_end_17f} :catchall_18b

    add-int/lit8 v12, v12, 0x1

    goto :goto_162

    :cond_182
    move-object v6, v7

    :cond_183
    add-int/lit8 v22, v22, 0x1

    move-object v7, v6

    goto :goto_13c

    :cond_187
    monitor-exit p0

    if-nez v7, :cond_18e

    return-void

    :catchall_18b
    move-exception v22

    :goto_18c
    monitor-exit p0

    throw v22

    :cond_18e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    const/4 v12, 0x0

    :goto_193
    :try_start_193
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_1f4

    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/ArraySet;
    :try_end_1a7
    .catchall {:try_start_193 .. :try_end_1a7} :catchall_1ef

    if-nez v18, :cond_1bd

    :try_start_1a9
    iget-object v0, v4, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V

    :cond_1ba
    :goto_1ba
    add-int/lit8 v12, v12, 0x1

    goto :goto_193

    :cond_1bd
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArraySet;->size()I

    move-result v16

    const/4 v13, 0x0

    :goto_1c2
    move/from16 v0, v16

    if-ge v13, v0, :cond_1ba

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    iget-object v0, v4, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_1dd
    .catch Landroid/os/RemoteException; {:try_start_1a9 .. :try_end_1dd} :catch_1e0
    .catchall {:try_start_1a9 .. :try_end_1dd} :catchall_1ef

    add-int/lit8 v13, v13, 0x1

    goto :goto_1c2

    :catch_1e0
    move-exception v11

    :try_start_1e1
    const-string/jumbo v22, "AppOps"

    const-string/jumbo v23, "Error dispatching op op change"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ee
    .catchall {:try_start_1e1 .. :try_end_1ee} :catchall_1ef

    goto :goto_1ba

    :catchall_1ef
    move-exception v22

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22

    :cond_1f4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1f8
    move-exception v22

    move-object v6, v7

    goto :goto_18c

    :cond_1fb
    move-object v6, v7

    goto/16 :goto_15d
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .registers 11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_1b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_40

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .registers 11

    const/4 v5, 0x0

    const-string/jumbo v0, "setUserRestrictions"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_e
    const/16 v0, 0x48

    if-ge v1, v0, :cond_26

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_23

    const/4 v0, 0x0

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_26
    return-void
.end method

.method public shutdown()V
    .registers 4

    const-string/jumbo v1, "AppOps"

    const-string/jumbo v2, "Writing app ops before shutdown..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_b
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1a

    const/4 v0, 0x1

    :cond_13
    monitor-exit p0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    :cond_19
    return-void

    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static/range {p3 .. p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_16

    const/4 v4, 0x1

    return v4

    :cond_16
    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v13, 0x0

    move-object/from16 v15, p1

    check-cast v15, Lcom/android/server/AppOpsService$ClientState;

    monitor-enter p0

    const/4 v4, 0x1

    :try_start_21
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v6, v4}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_c9

    move-result-object v17

    if-nez v17, :cond_2e

    const/4 v4, 0x2

    monitor-exit p0

    return v4

    :cond_2e
    const/4 v4, 0x1

    :try_start_2f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v16

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_c9

    move-result v4

    if-eqz v4, :cond_48

    const/4 v4, 0x1

    monitor-exit p0

    return v4

    :cond_48
    :try_start_48
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v12

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_78

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-eqz v8, :cond_78

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v9, 0x1

    move/from16 v5, p3

    move/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V
    :try_end_76
    .catchall {:try_start_48 .. :try_end_76} :catchall_c9

    monitor-exit p0

    return v8

    :cond_78
    move/from16 v0, p2

    if-eq v12, v0, :cond_c6

    const/4 v4, 0x1

    :try_start_7d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v12, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v18

    :goto_85
    move-object/from16 v0, v18

    iget v13, v0, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_89
    .catchall {:try_start_7d .. :try_end_89} :catchall_c9

    monitor-exit p0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/server/AppOpsServiceState;->isAppPermissionControlOpen(II)Z

    move-result v4

    if-nez v4, :cond_cc

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v4, v6}, Lcom/android/server/AppOpsServiceState;->isCtsIgnore(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a3

    const/4 v13, 0x0

    :cond_a3
    :goto_a3
    const/4 v4, 0x4

    if-ne v13, v4, :cond_b0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p3

    invoke-virtual {v4, v12, v0, v6}, Lcom/android/server/AppOpsServiceState;->askOperationLocked(IILjava/lang/String;)I

    move-result v13

    :cond_b0
    if-eqz v13, :cond_eb

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    :goto_ba
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v14, 0x0

    move/from16 v10, p3

    move-object v11, v6

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    return v13

    :cond_c6
    move-object/from16 v18, v16

    goto :goto_85

    :catchall_c9
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_cc
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/AppOpsServiceState;->isMiuiAllowed(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/AppOpsServiceState;->allowedToMode(IILjava/lang/String;)I

    move-result v13

    move-object/from16 v0, v18

    iput v13, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    goto :goto_a3

    :cond_eb
    monitor-enter p0

    :try_start_ec
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v4, :cond_105

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v4, 0x0

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const/4 v4, -0x1

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    :cond_105
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    iget-object v4, v15, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v4, :cond_11a

    iget-object v4, v15, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11a
    .catchall {:try_start_ec .. :try_end_11a} :catchall_11c

    :cond_11a
    monitor-exit p0

    goto :goto_ba

    :catchall_11c
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 9

    const/4 v4, -0x1

    if-nez p3, :cond_4

    return-void

    :cond_4
    monitor-enter p0

    if-eq p1, v4, :cond_b

    :try_start_7
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    :cond_b
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    if-nez v0, :cond_27

    new-instance v0, Lcom/android/server/AppOpsService$Callback;

    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$Callback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    if-eq p1, v4, :cond_40

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_3d

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3d
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_40
    if-eqz p2, :cond_59

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_56

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catchall {:try_start_7 .. :try_end_59} :catchall_5b

    :cond_59
    monitor-exit p0

    return-void

    :catchall_5b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    monitor-enter p0

    :try_start_4
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Callback;->unlinkToDeath()V

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1d
    if-ltz v2, :cond_38

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_35

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    :cond_38
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_40
    if-ltz v2, :cond_5b

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_58

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_4 .. :try_end_58} :catchall_5d

    :cond_58
    add-int/lit8 v2, v2, -0x1

    goto :goto_40

    :cond_5b
    monitor-exit p0

    return-void

    :catchall_5d
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public systemReady()V
    .registers 16

    iget-object v11, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v11}, Lcom/android/server/AppOpsServiceState;->systemReady()V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_7
    iget-object v11, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    :goto_f
    if-ltz v2, :cond_ac

    iget-object v11, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppOpsService$UidState;

    iget v11, v10, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v11}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_31

    invoke-virtual {v10}, Lcom/android/server/AppOpsService$UidState;->clear()V

    iget-object v11, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->removeAt(I)V

    const/4 v0, 0x1

    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    :cond_31
    iget-object v8, v10, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v8, :cond_2e

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3d
    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Ops;
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_a9

    const/4 v1, -0x1

    :try_start_4a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    iget-object v12, v5, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v13, v5, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v13, v13, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const/16 v14, 0x2000

    invoke-interface {v11, v12, v14, v13}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_5d} :catch_d3
    .catchall {:try_start_4a .. :try_end_5d} :catchall_a9

    move-result v1

    :goto_5e
    :try_start_5e
    iget-object v11, v5, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v11, v11, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v1, v11, :cond_3d

    const-string/jumbo v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Pruning old package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": new uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_3d

    :cond_9d
    invoke-virtual {v10}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v11

    if-eqz v11, :cond_2e

    iget-object v11, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_a8
    .catchall {:try_start_5e .. :try_end_a8} :catchall_a9

    goto :goto_2e

    :catchall_a9
    move-exception v11

    monitor-exit p0

    throw v11

    :cond_ac
    if-eqz v0, :cond_b1

    :try_start_ae
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_a9

    :cond_b1
    monitor-exit p0

    const-class v11, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    new-instance v11, Lcom/android/server/AppOpsService$2;

    invoke-direct {v11, p0}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManagerInternal;->setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V

    const-class v11, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManagerInternal;

    new-instance v11, Lcom/android/server/AppOpsService$3;

    invoke-direct {v11, p0}, Lcom/android/server/AppOpsService$3;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v9, v11}, Landroid/os/storage/StorageManagerInternal;->addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V

    return-void

    :catch_d3
    move-exception v3

    goto :goto_5e
.end method

.method public uidRemoved(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method writeState()V
    .registers 31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v27, v0

    monitor-enter v27

    const/16 v26, 0x0

    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_35c

    move-result-object v4

    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_107
    .catchall {:try_start_11 .. :try_end_1a} :catchall_35c

    move-result-object v20

    :try_start_1b
    new-instance v16, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v26, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v26 .. v26}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v26, "app-ops"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    move-result v25

    const/4 v7, 0x0

    :goto_59
    move/from16 v0, v25

    if-ge v7, v0, :cond_13c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AppOpsService$UidState;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v26, v0

    if-eqz v26, :cond_138

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseIntArray;->size()I

    move-result v26

    if-lez v26, :cond_138

    const-string/jumbo v26, "uid"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v26, "n"

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    const/4 v8, 0x0

    :goto_b2
    if-ge v8, v13, :cond_12a

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    const-string/jumbo v26, "op"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v26, "n"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v26, "m"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v26, "op"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_104} :catch_2fe
    .catchall {:try_start_1b .. :try_end_104} :catchall_35c

    add-int/lit8 v8, v8, 0x1

    goto :goto_b2

    :catch_107
    move-exception v6

    :try_start_108
    const-string/jumbo v26, "AppOps"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Failed to write state: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_128
    .catchall {:try_start_108 .. :try_end_128} :catchall_35c

    monitor-exit v27

    return-void

    :cond_12a
    :try_start_12a
    const-string/jumbo v26, "uid"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_138
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_59

    :cond_13c
    if-eqz v4, :cond_33d

    const/4 v9, 0x0

    const/4 v7, 0x0

    :goto_140
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v7, v0, :cond_32d

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_18a

    if-eqz v9, :cond_16a

    const-string/jumbo v26, "pkg"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_16a
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v26, "pkg"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v26, "n"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_18a
    const-string/jumbo v26, "uid"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v26, "n"

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    monitor-enter p0
    :try_end_1b1
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_1b1} :catch_2fe
    .catchall {:try_start_12a .. :try_end_1b1} :catchall_35c

    :try_start_1b1
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v26

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v14

    if-eqz v14, :cond_2e3

    const-string/jumbo v26, "p"

    iget-boolean v0, v14, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1e1
    .catchall {:try_start_1b1 .. :try_end_1e1} :catchall_2fb

    :goto_1e1
    :try_start_1e1
    monitor-exit p0

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v15

    const/4 v8, 0x0

    :goto_1e7
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v8, v0, :cond_31b

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$OpEntry;

    const-string/jumbo v26, "op"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v26, "n"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v26

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v28

    invoke-static/range {v28 .. v28}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_245

    const-string/jumbo v26, "m"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_245
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v22

    const-wide/16 v28, 0x0

    cmp-long v26, v22, v28

    if-eqz v26, :cond_263

    const-string/jumbo v26, "t"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_263
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v22

    const-wide/16 v28, 0x0

    cmp-long v26, v22, v28

    if-eqz v26, :cond_281

    const-string/jumbo v26, "r"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_281
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v5

    if-eqz v5, :cond_29b

    const-string/jumbo v26, "d"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_29b
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid()I

    move-result v19

    const/16 v26, -0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_2bb

    const-string/jumbo v26, "pu"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2bb
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2d1

    const-string/jumbo v26, "pp"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2d1
    const-string/jumbo v26, "op"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2df
    .catch Ljava/io/IOException; {:try_start_1e1 .. :try_end_2df} :catch_2fe
    .catchall {:try_start_1e1 .. :try_end_2df} :catchall_35c

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1e7

    :cond_2e3
    :try_start_2e3
    const-string/jumbo v26, "p"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2f9
    .catchall {:try_start_2e3 .. :try_end_2f9} :catchall_2fb

    goto/16 :goto_1e1

    :catchall_2fb
    move-exception v26

    :try_start_2fc
    monitor-exit p0

    throw v26
    :try_end_2fe
    .catch Ljava/io/IOException; {:try_start_2fc .. :try_end_2fe} :catch_2fe
    .catchall {:try_start_2fc .. :try_end_2fe} :catchall_35c

    :catch_2fe
    move-exception v6

    :try_start_2ff
    const-string/jumbo v26, "AppOps"

    const-string/jumbo v28, "Failed to write state, restoring backup."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_319
    .catchall {:try_start_2ff .. :try_end_319} :catchall_35c

    :goto_319
    monitor-exit v27

    return-void

    :cond_31b
    :try_start_31b
    const-string/jumbo v26, "uid"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_140

    :cond_32d
    if-eqz v9, :cond_33d

    const-string/jumbo v26, "pkg"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_33d
    const-string/jumbo v26, "app-ops"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_35b
    .catch Ljava/io/IOException; {:try_start_31b .. :try_end_35b} :catch_2fe
    .catchall {:try_start_31b .. :try_end_35b} :catchall_35c

    goto :goto_319

    :catchall_35c
    move-exception v26

    monitor-exit v27

    throw v26
.end method