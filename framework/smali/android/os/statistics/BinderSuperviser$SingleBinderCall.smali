.class public Landroid/os/statistics/BinderSuperviser$SingleBinderCall;
.super Landroid/os/statistics/MicroscopicEvent;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleBinderCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/BinderSuperviser$SingleBinderCall$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/BinderSuperviser$BinderCallFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/BinderSuperviser$SingleBinderCall;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_CODE:Ljava/lang/String; = "code"

.field private static final FIELD_INTERFACE_DESCRIPTOR:Ljava/lang/String; = "interface"

.field private static final FIELD_STACK:Ljava/lang/String; = "stack"

.field private static sBinderProxyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field public code:I

.field public interfaceDescriptor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall$1;

    invoke-direct {v0}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall$1;-><init>()V

    sput-object v0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;

    invoke-direct {v0}, Landroid/os/statistics/BinderSuperviser$BinderCallFields;-><init>()V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    return-void
.end method

.method private static initClasses()V
    .registers 2

    sget-object v1, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->sBinderProxyClass:Ljava/lang/Class;

    if-nez v1, :cond_d

    :try_start_4
    const-string/jumbo v1, "android.os.BinderProxy"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->sBinderProxyClass:Ljava/lang/Class;
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_d
.end method

.method private static isJavaBinderCall([Ljava/lang/StackTraceElement;[Ljava/lang/Class;)Z
    .registers 5

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    array-length v2, p0

    if-nez v2, :cond_7

    :cond_6
    return v1

    :cond_7
    if-eqz p1, :cond_6

    array-length v2, p1

    if-eqz v2, :cond_6

    aget-object v0, p1, v1

    sget-object v2, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->sBinderProxyClass:Ljava/lang/Class;

    if-ne v0, v2, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .registers 8

    invoke-virtual {p0}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->threadId:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->beginUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->endUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->schedPolicy:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->schedPriority:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->binder:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->code:I

    iput-object p2, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->javaBackTrace:Ljava/lang/Object;

    iput-object p3, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->nativeBackTrace:Landroid/os/statistics/NativeBackTrace;

    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasNativeStack()Z
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;

    iget-object v0, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->nativeBackTrace:Landroid/os/statistics/NativeBackTrace;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method

.method public hasPeerBlockingEvent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .registers 8

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;

    if-nez v2, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;

    iget v2, v0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingPid:I

    iget v3, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->pid:I

    if-ne v2, v3, :cond_2d

    iget-wide v2, v0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->beginUptimeMillis:J

    iget-wide v4, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->beginUptimeMillis:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2d

    iget-wide v2, v0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->endUptimeMillis:J

    iget-wide v4, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->endUptimeMillis:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2d

    iget v2, v0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->code:I

    iget v3, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->code:I

    if-ne v2, v3, :cond_2d

    iget-object v1, v0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    iget-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    :cond_2d
    return v1
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
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    iget-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    if-nez v2, :cond_19

    const-string/jumbo v2, ""

    iput-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    :cond_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->code:I

    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    :goto_25
    iput-object v1, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    iput-object v3, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->binder:Ljava/lang/Object;

    iput-object v3, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->javaBackTrace:Ljava/lang/Object;

    iput-object v3, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->nativeBackTrace:Landroid/os/statistics/NativeBackTrace;

    return-void

    :cond_2e
    sget-object v1, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    goto :goto_25
.end method

.method resolveLazyInfo()V
    .registers 10

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->isLazyInfoResolved()Z

    move-result v7

    if-eqz v7, :cond_8

    return-void

    :cond_8
    invoke-super {p0}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    invoke-static {}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->initClasses()V

    invoke-virtual {p0}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;

    iget-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->binder:Ljava/lang/Object;

    if-eqz v7, :cond_20

    iget-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->binder:Ljava/lang/Object;

    invoke-static {v7}, Landroid/os/statistics/BinderSuperviser;->-wrap0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    :cond_20
    iget-object v7, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    if-nez v7, :cond_29

    const-string/jumbo v7, ""

    iput-object v7, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    :cond_29
    iget-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v7}, Landroid/os/statistics/JavaBackTrace;->resolve(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v4

    iget-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v7}, Landroid/os/statistics/JavaBackTrace;->resolveClasses(Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->isJavaBinderCall([Ljava/lang/StackTraceElement;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_62

    const/4 v2, 0x0

    :goto_3c
    array-length v7, v3

    if-ge v2, v7, :cond_4c

    aget-object v0, v3, v2

    sget-object v7, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->sBinderProxyClass:Ljava/lang/Class;

    if-ne v0, v7, :cond_49

    aput-object v8, v3, v2

    aput-object v8, v4, v2

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_4c
    invoke-static {v4, v3, v8}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    :goto_52
    iput-object v8, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->binder:Ljava/lang/Object;

    iput-object v8, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->javaBackTrace:Ljava/lang/Object;

    iget-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->nativeBackTrace:Landroid/os/statistics/NativeBackTrace;

    if-eqz v7, :cond_5f

    iget-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->nativeBackTrace:Landroid/os/statistics/NativeBackTrace;

    invoke-virtual {v7}, Landroid/os/statistics/NativeBackTrace;->dispose()V

    :cond_5f
    iput-object v8, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->nativeBackTrace:Landroid/os/statistics/NativeBackTrace;

    return-void

    :cond_62
    iget-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->nativeBackTrace:Landroid/os/statistics/NativeBackTrace;

    invoke-static {v7}, Landroid/os/statistics/NativeBackTrace;->resolve(Landroid/os/statistics/NativeBackTrace;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_89

    const/4 v2, 0x0

    :goto_6b
    array-length v7, v6

    if-ge v2, v7, :cond_89

    aget-object v5, v6, v2

    if-eqz v5, :cond_89

    const-string/jumbo v7, "BinderSuperviser"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_84

    const-string/jumbo v7, "libbinder.so"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_89

    :cond_84
    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    :cond_89
    invoke-static {v4, v3, v6}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    goto :goto_52
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string/jumbo v1, "interface"

    iget-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "code"

    iget v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->code:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "stack"

    invoke-virtual {p0}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;

    iget-object v1, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_25} :catch_26

    :goto_25
    return-void

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_25
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;

    iget-object v0, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    return-void
.end method
