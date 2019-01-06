.class public Landroid/os/statistics/BinderSuperviser$BinderStarvation;
.super Landroid/os/statistics/MacroscopicEvent;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderStarvation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/BinderSuperviser$BinderStarvation$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MacroscopicEvent",
        "<",
        "Landroid/os/statistics/PerfEvent$DetailFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/BinderSuperviser$BinderStarvation;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MAX_THREADS:Ljava/lang/String; = "maxThreads"

.field private static final FIELD_STARVATION_TIME_MS:Ljava/lang/String; = "starvationTimeMs"


# instance fields
.field public maxThreads:I

.field public starvationTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/BinderSuperviser$BinderStarvation$1;

    invoke-direct {v0}, Landroid/os/statistics/BinderSuperviser$BinderStarvation$1;-><init>()V

    sput-object v0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-direct {v0}, Landroid/os/statistics/PerfEvent$DetailFields;-><init>()V

    const v1, 0x10004

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MacroscopicEvent;-><init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V

    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->occurUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->maxThreads:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->starvationTimeMs:J

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->maxThreads:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->starvationTimeMs:J

    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string/jumbo v1, "maxThreads"

    iget v2, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->maxThreads:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "starvationTimeMs"

    iget-wide v2, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->starvationTimeMs:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_13
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MacroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->maxThreads:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->starvationTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
