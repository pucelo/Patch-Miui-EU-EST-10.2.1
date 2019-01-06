.class public abstract Landroid/os/statistics/PerfEvent;
.super Ljava/lang/Object;
.source "PerfEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/PerfEvent$DetailFields;,
        Landroid/os/statistics/PerfEvent$EndTimeComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/statistics/PerfEvent$DetailFields;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final FIELD_CURRENT_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final FIELD_CURRENT_PID:Ljava/lang/String; = "pid"

.field public static final FIELD_CURRENT_PROCESS_NAME:Ljava/lang/String; = "processName"

.field public static final FIELD_CURRENT_UID:Ljava/lang/String; = "uid"

.field public static final FIELD_EVENT_SEQ:Ljava/lang/String; = "seq"

.field public static final FIELD_EVENT_TYPE:Ljava/lang/String; = "eventType"

.field public static final FIELD_EVENT_TYPE_NAME:Ljava/lang/String; = "eventTypeName"

.field private static MY_UID:I = 0x0

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final endUptimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static processNameFromCmdline:Ljava/lang/String;

.field private static volatile processNameFromCmdlineReady:Z


# instance fields
.field private details:Landroid/os/statistics/PerfEvent$DetailFields;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public eventSeq:J

.field public final eventType:I

.field private persistentId:J

.field public pid:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, -0x1

    sput v0, Landroid/os/statistics/PerfEvent;->MY_UID:I

    new-instance v0, Landroid/os/statistics/PerfEvent$EndTimeComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/statistics/PerfEvent$EndTimeComparator;-><init>(Landroid/os/statistics/PerfEvent$EndTimeComparator;)V

    sput-object v0, Landroid/os/statistics/PerfEvent;->endUptimeComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    iput-object p2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    return-void
.end method

.method public static getCurrentProcessName()Ljava/lang/String;
    .registers 7

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_69

    sget-boolean v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdlineReady:Z

    if-nez v4, :cond_67

    const/4 v2, 0x0

    :try_start_f
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v6, "/proc/self/cmdline"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_71
    .catchall {:try_start_f .. :try_end_21} :catchall_7b

    :try_start_21
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdline:Ljava/lang/String;

    sget-object v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdline:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    sget-object v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdline:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdline:Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3e} :catch_85
    .catchall {:try_start_21 .. :try_end_3e} :catchall_82

    :cond_3e
    :try_start_3e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_6f

    :goto_41
    move-object v2, v3

    :goto_42
    sget-object v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdline:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_67

    sget-object v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdline:Ljava/lang/String;

    const-string/jumbo v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_67

    sget-object v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdline:Ljava/lang/String;

    const-string/jumbo v5, "zygote"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_67

    const/4 v4, 0x1

    sput-boolean v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdlineReady:Z

    :cond_67
    sget-object v1, Landroid/os/statistics/PerfEvent;->processNameFromCmdline:Ljava/lang/String;

    :cond_69
    if-nez v1, :cond_6e

    const-string/jumbo v1, ""

    :cond_6e
    return-object v1

    :catch_6f
    move-exception v0

    goto :goto_41

    :catch_71
    move-exception v0

    :goto_72
    :try_start_72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_7b

    :try_start_75
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_42

    :catch_79
    move-exception v0

    goto :goto_42

    :catchall_7b
    move-exception v4

    :goto_7c
    :try_start_7c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_80

    :goto_7f
    throw v4

    :catch_80
    move-exception v0

    goto :goto_7f

    :catchall_82
    move-exception v4

    move-object v2, v3

    goto :goto_7c

    :catch_85
    move-exception v0

    move-object v2, v3

    goto :goto_72
.end method


# virtual methods
.method public clearDetailFields()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final fillIn(JLandroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .registers 7

    iput-wide p1, p0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    invoke-virtual {p0, p3, p4, p5}, Landroid/os/statistics/PerfEvent;->fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V

    return-void
.end method

.method abstract fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
.end method

.method final fillInCurrentProcessId()V
    .registers 2

    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->occursInCurrentProcess()Z

    move-result v0

    if-eqz v0, :cond_a

    sget v0, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    iput v0, p0, Landroid/os/statistics/PerfEvent;->pid:I

    :cond_a
    return-void
.end method

.method final fillInCurrentProcessInfo()V
    .registers 4

    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->occursInCurrentProcess()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    sget v1, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    iput v1, p0, Landroid/os/statistics/PerfEvent;->pid:I

    sget v1, Landroid/os/statistics/PerfEvent;->MY_UID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    sput v1, Landroid/os/statistics/PerfEvent;->MY_UID:I

    :cond_16
    iget-object v1, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    sget v2, Landroid/os/statistics/PerfEvent;->MY_UID:I

    iput v2, v1, Landroid/os/statistics/PerfEvent$DetailFields;->uid:I

    iget-object v1, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-static {}, Landroid/os/statistics/PerfEvent;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/statistics/PerfEvent$DetailFields;->processName:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    if-eqz v0, :cond_2f

    :goto_2c
    iput-object v0, v1, Landroid/os/statistics/PerfEvent$DetailFields;->packageName:Ljava/lang/String;

    return-void

    :cond_2f
    const-string/jumbo v0, ""

    goto :goto_2c
.end method

.method public abstract getBeginUptimeMillis()J
.end method

.method public getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    return-object v0
.end method

.method public abstract getEndUptimeMillis()J
.end method

.method public getPersistentId()J
    .registers 3

    iget-wide v0, p0, Landroid/os/statistics/PerfEvent;->persistentId:J

    return-wide v0
.end method

.method isConcerned()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final isLazyInfoResolved()Z
    .registers 2

    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget-boolean v0, v0, Landroid/os/statistics/PerfEvent$DetailFields;->lazyInfoResolved:Z

    return v0
.end method

.method isMeaningful()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isUserPerceptible()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method occursInCurrentProcess()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/PerfEvent;->pid:I

    iget-object v2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/os/statistics/PerfEvent$DetailFields;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    if-eqz v1, :cond_2e

    :goto_1c
    iput-object v1, v2, Landroid/os/statistics/PerfEvent$DetailFields;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    if-eqz v0, :cond_32

    :goto_26
    iput-object v0, v2, Landroid/os/statistics/PerfEvent$DetailFields;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/os/statistics/PerfEvent$DetailFields;->lazyInfoResolved:Z

    return-void

    :cond_2e
    const-string/jumbo v1, ""

    goto :goto_1c

    :cond_32
    const-string/jumbo v0, ""

    goto :goto_26
.end method

.method resolveLazyInfo()V
    .registers 3

    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/statistics/PerfEvent$DetailFields;->lazyInfoResolved:Z

    return-void
.end method

.method public setPersistentId(J)V
    .registers 4

    iput-wide p1, p0, Landroid/os/statistics/PerfEvent;->persistentId:J

    return-void
.end method

.method public final toJson()Lorg/json/JSONObject;
    .registers 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/statistics/PerfEvent;->writeToJson(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 6

    :try_start_0
    const-string/jumbo v1, "eventType"

    iget v2, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "eventTypeName"

    iget v2, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    invoke-static {v2}, Landroid/os/statistics/PerfEventConstants;->getTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "seq"

    iget-wide v2, p0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "pid"

    iget v2, p0, Landroid/os/statistics/PerfEvent;->pid:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "uid"

    iget-object v2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget v2, v2, Landroid/os/statistics/PerfEvent$DetailFields;->uid:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "processName"

    iget-object v2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget-object v2, v2, Landroid/os/statistics/PerfEvent$DetailFields;->processName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget-object v2, v2, Landroid/os/statistics/PerfEvent$DetailFields;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_42} :catch_43

    :goto_42
    return-void

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_42
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/statistics/PerfEvent;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget v0, v0, Landroid/os/statistics/PerfEvent$DetailFields;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget-object v0, v0, Landroid/os/statistics/PerfEvent$DetailFields;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget-object v0, v0, Landroid/os/statistics/PerfEvent$DetailFields;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
