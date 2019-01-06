.class public Landroid/telephony/mbms/DownloadStateCallback;
.super Ljava/lang/Object;
.source "DownloadStateCallback.java"


# static fields
.field public static final ALL_UPDATES:I = 0x0

.field public static final PROGRESS_UPDATES:I = 0x1

.field public static final STATE_UPDATES:I = 0x2


# instance fields
.field private final mCallbackFilterFlags:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/mbms/DownloadStateCallback;->mCallbackFilterFlags:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/mbms/DownloadStateCallback;->mCallbackFilterFlags:I

    return-void
.end method


# virtual methods
.method public getCallbackFilterFlags()I
    .registers 2

    iget v0, p0, Landroid/telephony/mbms/DownloadStateCallback;->mCallbackFilterFlags:I

    return v0
.end method

.method public final isFilterFlagSet(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/telephony/mbms/DownloadStateCallback;->mCallbackFilterFlags:I

    if-nez v2, :cond_7

    return v0

    :cond_7
    iget v2, p0, Landroid/telephony/mbms/DownloadStateCallback;->mCallbackFilterFlags:I

    and-int/2addr v2, p1

    if-lez v2, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method public onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .registers 7

    return-void
.end method

.method public onStateUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .registers 4

    return-void
.end method
