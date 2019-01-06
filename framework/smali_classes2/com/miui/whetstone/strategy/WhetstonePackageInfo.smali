.class public Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
.super Ljava/lang/Object;
.source "WhetstonePackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;
    }
.end annotation


# static fields
.field public static final CAP_LOWMEM_KILL:I = 0x1

.field public static final CAP_LOWMEM_THRESOLD_KILL:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ANDROID_PERSISTENT_APP:I = 0x40000

.field public static final FLAG_APP_STOP:I = 0x40000000

.field public static final FLAG_APP_SYSTEM:I = -0x80000000

.field public static final FLAG_BACKGROUND_START:I = 0x100

.field public static final FLAG_BITMAPCACHE:I = 0x1

.field public static final FLAG_DEAL_SCHEDULE:I = 0x1000

.field public static final FLAG_DESTORYACTIVITY:I = 0x4

.field public static final FLAG_DISABLEOPENGL:I = 0x2

.field public static final FLAG_DISABLE_WAKELOCK:I = 0x4000

.field public static final FLAG_ONEKEY_CLEAN_NO_UI_WHITE:I = 0x20000

.field public static final FLAG_ONEKEY_CLEAN_WHITE:I = 0x10000

.field public static final FLAG_SOFT_RESET:I = 0x400

.field public static final FLAG_TRIMBACKGOUNDAPPS:I = 0x20

.field public static final FLAG_TRIMHEAPS:I = 0x40

.field public static final FLAG_TRIMHEAPSIZE:I = 0x2000

.field public static final FLAG_TRIMPROCESS_BY_ACTIVITY:I = 0x800

.field public static final FLAG_TRIMSERVICES:I = 0x10

.field public static final FLAG_TRIM_OPENGL:I = 0x200

.field public static final FLAG_UPDATESETTING:I = 0x8

.field public static final FLAG_ZRAM:I = 0x80

.field public static final TRIM_LEVEL_WHETSTONE_HEAP:I = 0x3e9

.field public static final TRIM_LEVLE_WHETSTONE_BITMAPCACHE:I = 0x3e8

.field public static final TRIM_LEVLE_WHETSTONE_DEFAULT:I = 0x44c

.field public static final TRIM_LEVLE_WHETSTONE_NATIVE:I = 0x3ea

.field public static final TYPE_AUTO_START:I = 0x40

.field public static final TYPE_GAME:I = 0x2

.field public static final TYPE_IM_PUSH:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x20

.field public static final TYPE_LARGE_MEMORY:I = 0x80

.field public static final TYPE_MUSIC:I = 0x4

.field public static final TYPE_NOTE:I = 0x8

.field public static final TYPE_NOTIFICATION:I = 0x10


# instance fields
.field public capacity:I

.field public flag:I

.field public mBackGroundTime:J

.field public mClearScore:I

.field public mClearType:I

.field public mExceptionAnrCount:I

.field public mExceptionCrashCount:I

.field public mExceptionTotalCount:I

.field public mFirstExceptionTime:J

.field public mForeGroundStartCount:J

.field public mForeGroundTime:J

.field public mHistoryOrder:I

.field public mLifeOrder:I

.field public mPermission:I

.field public mPromoteLevel:I

.field public mScreenOffClear:Z

.field public mStartTime:J

.field public mTotalForeGroundTime:J

.field public nonUiMemoryThresold:I

.field public packageName:Ljava/lang/String;

.field public samePackageList:Ljava/lang/String;

.field public type:I

.field public uiMemoryThresold:I

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;

    invoke-direct {v0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/strategy/WhetstonePackageInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .registers 11

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->samePackageList:Ljava/lang/String;

    iput p3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->capacity:I

    iput p4, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uiMemoryThresold:I

    iput p5, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->nonUiMemoryThresold:I

    iput-boolean p6, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mScreenOffClear:Z

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    iput-wide v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    iput-wide v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundTime:J

    iput-wide v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mBackGroundTime:J

    iput-wide v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mTotalForeGroundTime:J

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mHistoryOrder:I

    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mLifeOrder:I

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearType:I

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearScore:I

    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPermission:I

    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPromoteLevel:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 8

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    if-eqz p2, :cond_28

    const/high16 v0, -0x80000000

    :goto_d
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    iput-boolean v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mScreenOffClear:Z

    iput-wide v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    iput-wide v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundTime:J

    iput-wide v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mBackGroundTime:J

    iput-wide v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mTotalForeGroundTime:J

    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mHistoryOrder:I

    iput v4, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mLifeOrder:I

    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearType:I

    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearScore:I

    iput v4, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPermission:I

    iput v4, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPromoteLevel:I

    return-void

    :cond_28
    move v0, v1

    goto :goto_d
.end method


# virtual methods
.method public addFlag(I)V
    .registers 3

    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    return-void
.end method

.method public addForeGroundStartCount()V
    .registers 5

    iget-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    return-void
.end method

.method public addType(I)V
    .registers 3

    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    return-void
.end method

.method public clearBackGroundStartTime()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mBackGroundTime:J

    return-void
.end method

.method public clearForeGroundStartTime()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundTime:J

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    move-object v2, v0
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_9} :catch_a

    :goto_9
    return-object v2

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_9
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public endForeGround()V
    .registers 7

    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->setBackGroundStartTime()V

    iget-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mTotalForeGroundTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mTotalForeGroundTime:J

    return-void
.end method

.method public getForeGroundStartCount()J
    .registers 3

    iget-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    return-wide v0
.end method

.method public getScore()I
    .registers 2

    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearScore:I

    return v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    return v0
.end method

.method public isDisableWakelock()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isEnable(I)Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public isSystemApp()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public isType(I)Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPermission:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPromoteLevel:I

    return-void
.end method

.method public setBackGroundStartTime()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mBackGroundTime:J

    return-void
.end method

.method public setForeGroundStartCount(J)V
    .registers 4

    iput-wide p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundStartCount:J

    return-void
.end method

.method public setForeGroundStartTime()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mForeGroundTime:J

    return-void
.end method

.method public setScore(I)V
    .registers 2

    iput p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mClearScore:I

    return-void
.end method

.method public setUid(I)V
    .registers 2

    iput p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    return-void
.end method

.method public startForceGround()V
    .registers 1

    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->clearBackGroundStartTime()V

    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->setForeGroundStartTime()V

    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->addForeGroundStartCount()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{WhetstonePackageInfo#PacakgeName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " uiMemoryThresold:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uiMemoryThresold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " nonUiMemoryThresold:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->nonUiMemoryThresold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " Flag:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_65

    const-string/jumbo v2, ",BitmapCache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_65
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_71

    const-string/jumbo v2, ",DestoryActivity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_71
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7d

    const-string/jumbo v2, ",isOPENGLDiable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7d
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_89

    const-string/jumbo v2, ",TRIMHEAPS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_89
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_95

    const-string/jumbo v2, ",TRIM_OPENGL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_95
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_a1

    const-string/jumbo v2, ",SOFT_RESET"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a1
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_ae

    const-string/jumbo v2, ",APP_SYSTEM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ae
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_ba

    const-string/jumbo v2, ",ZRAM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ba
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_c6

    const-string/jumbo v2, ",TRIMPROCESS_BY_ACTIVITY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c6
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_d2

    const-string/jumbo v2, ",FLAG_DEAL_SCHEDULE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d2
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_de

    const-string/jumbo v2, ",FLAG_TRIMHEAPSIZE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_de
    const-string/jumbo v2, "] Type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_fd

    const-string/jumbo v2, ",IM_PUSH"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_fd
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_109

    const-string/jumbo v2, ",Game"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_109
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_115

    const-string/jumbo v2, ",note"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_115
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_121

    const-string/jumbo v2, ",notification"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_121
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_12d

    const-string/jumbo v2, ",AUTO_START"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12d
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_139

    const-string/jumbo v2, ",TYPE_LARGE_MEMORY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_139
    const-string/jumbo v2, "] }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPermission:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mPromoteLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
