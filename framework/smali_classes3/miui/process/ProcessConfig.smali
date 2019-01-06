.class public Lmiui/process/ProcessConfig;
.super Ljava/lang/Object;
.source "ProcessConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/process/ProcessConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/process/ProcessConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_ADJ:I = -0x2710

.field private static final INVALID_TASK_ID:I = -0x1

.field private static final INVALID_UID:I = -0x1

.field private static final INVALID_USER_ID:I = -0x2710

.field public static final KILL_LEVEL_FORCE_STOP:I = 0x68

.field public static final KILL_LEVEL_KILL:I = 0x67

.field public static final KILL_LEVEL_KILL_BACKGROUND:I = 0x66

.field public static final KILL_LEVEL_TRIM_MEMORY:I = 0x65

.field public static final KILL_LEVEL_UNKNOWN:I = 0x64

.field public static final POLICY_AUTO_IDLE_KILL:I = 0xd

.field public static final POLICY_AUTO_LOCK_OFF_CLEAN:I = 0xf

.field public static final POLICY_AUTO_LOCK_OFF_CLEAN_BY_PRIORITY:I = 0x11

.field public static final POLICY_AUTO_POWER_KILL:I = 0xb

.field public static final POLICY_AUTO_SLEEP_CLEAN:I = 0xe

.field public static final POLICY_AUTO_SYSTEM_ABNORMAL_CLEAN:I = 0x10

.field public static final POLICY_AUTO_THERMAL_KILL:I = 0xc

.field public static final POLICY_FORCE_CLEAN:I = 0x2

.field public static final POLICY_GAME_CLEAN:I = 0x4

.field public static final POLICY_GARBAGE_CLEAN:I = 0x6

.field public static final POLICY_LOCK_SCREEN_CLEAN:I = 0x3

.field public static final POLICY_ONE_KEY_CLEAN:I = 0x1

.field public static final POLICY_OPTIMIZATION_CLEAN:I = 0x5

.field public static final POLICY_SWIPE_UP_CLEAN:I = 0x7

.field public static final POLICY_USER_DEFINED:I = 0xa


# instance fields
.field private mKillingPackage:Ljava/lang/String;

.field private mKillingPackageMaps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPolicy:I

.field private mPriority:I

.field private mReason:Ljava/lang/String;

.field private mRemoveTaskNeeded:Z

.field private mRemovingTaskIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskId:I

.field private mUid:I

.field private mUserId:I

.field private mWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mkillingClockTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/process/ProcessConfig$1;

    invoke-direct {v0}, Lmiui/process/ProcessConfig$1;-><init>()V

    sput-object v0, Lmiui/process/ProcessConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, -0x1

    const/16 v0, -0x2710

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lmiui/process/ProcessConfig;->mUserId:I

    iput v1, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    iput v1, p0, Lmiui/process/ProcessConfig;->mUid:I

    iput v0, p0, Lmiui/process/ProcessConfig;->mPriority:I

    iput p1, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    return-void
.end method

.method public constructor <init>(IILandroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/process/ProcessConfig;-><init>(I)V

    iput p2, p0, Lmiui/process/ProcessConfig;->mUserId:I

    iput-object p3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(IILandroid/util/ArrayMap;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lmiui/process/ProcessConfig;-><init>(IILandroid/util/ArrayMap;)V

    iput-object p4, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1}, Lmiui/process/ProcessConfig;-><init>(I)V

    iput-object p2, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    iput p3, p0, Lmiui/process/ProcessConfig;->mUid:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .registers 5

    invoke-direct {p0, p1}, Lmiui/process/ProcessConfig;-><init>(I)V

    iput-object p2, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    iput p3, p0, Lmiui/process/ProcessConfig;->mUserId:I

    iput p4, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v1, -0x1

    const/16 v0, -0x2710

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lmiui/process/ProcessConfig;->mUserId:I

    iput v1, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    iput v1, p0, Lmiui/process/ProcessConfig;->mUid:I

    iput v0, p0, Lmiui/process/ProcessConfig;->mPriority:I

    invoke-virtual {p0, p1}, Lmiui/process/ProcessConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/process/ProcessConfig;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/process/ProcessConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getKillingPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getKillingPackageMaps()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPolicy()I
    .registers 2

    iget v0, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    return v0
.end method

.method public getPriority()I
    .registers 2

    iget v0, p0, Lmiui/process/ProcessConfig;->mPriority:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getRemovingTaskIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    return-object v0
.end method

.method public getTaskId()I
    .registers 2

    iget v0, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    return v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Lmiui/process/ProcessConfig;->mUid:I

    return v0
.end method

.method public getUserId()I
    .registers 2

    iget v0, p0, Lmiui/process/ProcessConfig;->mUserId:I

    return v0
.end method

.method public getWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public isPriorityInvalid()Z
    .registers 3

    iget v0, p0, Lmiui/process/ProcessConfig;->mPriority:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isRemoveTaskNeeded()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    return v0
.end method

.method public isTaskIdInvalid()Z
    .registers 3

    iget v0, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isUidInvalid()Z
    .registers 3

    iget v0, p0, Lmiui/process/ProcessConfig;->mUid:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isUserIdInvalid()Z
    .registers 3

    iget v0, p0, Lmiui/process/ProcessConfig;->mUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmiui/process/ProcessConfig;->mUserId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmiui/process/ProcessConfig;->mUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmiui/process/ProcessConfig;->mPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_32

    const/4 v2, 0x1

    :cond_32
    iput-boolean v2, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_46

    const-class v2, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    :cond_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_58

    const-class v2, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    :cond_58
    :goto_58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_81

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v2, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    if-nez v2, :cond_7b

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    :cond_7b
    iget-object v2, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    :cond_81
    return-void
.end method

.method public setKillingClockTime(J)V
    .registers 4

    iput-wide p1, p0, Lmiui/process/ProcessConfig;->mkillingClockTime:J

    return-void
.end method

.method public setKillingPackage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    return-void
.end method

.method public setKillingPackageMaps(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    return-void
.end method

.method public setPriority(I)V
    .registers 2

    iput p1, p0, Lmiui/process/ProcessConfig;->mPriority:I

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    return-void
.end method

.method public setRemoveTaskNeeded(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    return-void
.end method

.method public setRemovingTaskIdList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    return-void
.end method

.method public setTaskId(I)V
    .registers 2

    iput p1, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    return-void
.end method

.method public setUid(I)V
    .registers 2

    iput p1, p0, Lmiui/process/ProcessConfig;->mUid:I

    return-void
.end method

.method public setUserId(I)V
    .registers 2

    iput p1, p0, Lmiui/process/ProcessConfig;->mUserId:I

    return-void
.end method

.method public setWhiteList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/16 v3, 0x27

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ProcessConfig{mPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mReason=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mKillingPackage=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/process/ProcessConfig;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/process/ProcessConfig;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mPriority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/process/ProcessConfig;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mWhiteList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mKillingPackageMaps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mRemoveTaskNeeded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mRemovingTaskIdList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mkillingClockTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lmiui/process/ProcessConfig;->mkillingClockTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v3, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v3, p0, Lmiui/process/ProcessConfig;->mUserId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Lmiui/process/ProcessConfig;->mUid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Lmiui/process/ProcessConfig;->mPriority:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v3, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    if-eqz v3, :cond_74

    move v3, v4

    :goto_2a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    if-eqz v3, :cond_76

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    :goto_39
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    if-eqz v3, :cond_7a

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    :goto_45
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    if-eqz v3, :cond_7e

    const/4 v0, 0x0

    :goto_4a
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_7e

    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_71

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_74
    move v3, v5

    goto :goto_2a

    :cond_76
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_39

    :cond_7a
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45

    :cond_7e
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
