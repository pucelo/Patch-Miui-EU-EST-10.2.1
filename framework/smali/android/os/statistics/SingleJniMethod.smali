.class public final Landroid/os/statistics/SingleJniMethod;
.super Landroid/os/statistics/MicroscopicEvent;
.source "SingleJniMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/SingleJniMethod$1;,
        Landroid/os/statistics/SingleJniMethod$JniMethodFields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/SingleJniMethod$JniMethodFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/SingleJniMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_STACK:Ljava/lang/String; = "stack"

.field private static final exceptionalClassMethodSimpleNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final exceptionalJniMethodFullNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "java.lang.Object.wait"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.lang.Object.notify"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.lang.Object.notifyAll"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.lang.Thread.sleep"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.os.BinderProxy.transactNative"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/statistics/SingleJniMethod;->exceptionalJniMethodFullNames:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/statistics/SingleJniMethod;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    new-instance v0, Landroid/os/statistics/SingleJniMethod$1;

    invoke-direct {v0}, Landroid/os/statistics/SingleJniMethod$1;-><init>()V

    sput-object v0, Landroid/os/statistics/SingleJniMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;

    invoke-direct {v0}, Landroid/os/statistics/SingleJniMethod$JniMethodFields;-><init>()V

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    return-void
.end method

.method private static buildStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;)[Ljava/lang/String;
    .registers 16

    sget-object v9, Landroid/os/statistics/SingleJniMethod;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_44

    sget-object v10, Landroid/os/statistics/SingleJniMethod;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    monitor-enter v10

    :try_start_b
    sget-object v11, Landroid/os/statistics/SingleJniMethod;->exceptionalJniMethodFullNames:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v12, v11

    :goto_f
    if-ge v9, v12, :cond_43

    aget-object v4, v11, v9
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_4c

    :try_start_13
    const-string/jumbo v13, "."

    invoke-virtual {v4, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v13, v2, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v13, Landroid/os/statistics/SingleJniMethod;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_3d

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v13, Landroid/os/statistics/SingleJniMethod;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    invoke-virtual {v13, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_40} :catch_87
    .catchall {:try_start_13 .. :try_end_40} :catchall_4c

    :goto_40
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_43
    monitor-exit v10

    :cond_44
    if-eqz p0, :cond_49

    array-length v9, p0

    if-nez v9, :cond_4f

    :cond_49
    sget-object v9, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v9

    :catchall_4c
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_4f
    if-eqz p1, :cond_49

    array-length v9, p1

    if-eqz v9, :cond_49

    const/4 v9, 0x0

    aget-object v7, p0, v9

    const/4 v9, 0x0

    aget-object v6, p1, v9

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "android.os.statistics."

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6a

    sget-object v9, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v9

    :cond_6a
    sget-object v9, Landroid/os/statistics/SingleJniMethod;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_81

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_81

    sget-object v9, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v9

    :cond_81
    const/4 v9, 0x0

    invoke-static {p0, p1, v9}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    return-object v9

    :catch_87
    move-exception v8

    goto :goto_40
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Landroid/os/statistics/SingleJniMethod;->threadId:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/SingleJniMethod;->beginUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/SingleJniMethod;->endUptimeMillis:J

    invoke-virtual {p0}, Landroid/os/statistics/SingleJniMethod;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;

    iput-object p2, v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->javaBackTrace:Ljava/lang/Object;

    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasPeerBlockingEvent()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBySameProcess()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingMultiplePeer()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingSameProcess()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isMeaningful()Z
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/statistics/SingleJniMethod;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Landroid/os/statistics/SingleJniMethod;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/SingleJniMethod$JniMethodFields;

    iget-object v0, v1, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    :cond_10
    if-eqz v0, :cond_17

    array-length v1, v0

    if-lez v1, :cond_17

    const/4 v1, 0x1

    :goto_16
    return v1

    :cond_17
    move v1, v2

    goto :goto_16
.end method

.method public isPeerBlockingEvent()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isRootEvent()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Landroid/os/statistics/SingleJniMethod;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;

    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    :goto_10
    iput-object v1, v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    iput-object v2, v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->javaBackTrace:Ljava/lang/Object;

    return-void

    :cond_15
    sget-object v1, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    goto :goto_10
.end method

.method resolveLazyInfo()V
    .registers 4

    invoke-virtual {p0}, Landroid/os/statistics/SingleJniMethod;->isLazyInfoResolved()Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    :cond_7
    invoke-super {p0}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    invoke-virtual {p0}, Landroid/os/statistics/SingleJniMethod;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;

    iget-object v1, v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v1}, Landroid/os/statistics/JavaBackTrace;->resolve(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v1

    iget-object v2, v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v2}, Landroid/os/statistics/JavaBackTrace;->resolveClasses(Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/statistics/SingleJniMethod;->buildStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->javaBackTrace:Ljava/lang/Object;

    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string/jumbo v2, "stack"

    invoke-virtual {p0}, Landroid/os/statistics/SingleJniMethod;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/SingleJniMethod$JniMethodFields;

    iget-object v1, v1, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_15
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/statistics/SingleJniMethod;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;

    iget-object v0, v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    return-void
.end method
