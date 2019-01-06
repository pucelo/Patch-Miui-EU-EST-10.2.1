.class public Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
.super Ljava/lang/Object;
.source "PackageEntity.java"


# instance fields
.field private mDailyClick:I

.field private mDailyShow:I

.field private mDataChanged:Z

.field private mHistoryClick:I

.field private mHistoryShow:I

.field private mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addClickCount()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyClick:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyClick:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDataChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addShowCount()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyShow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyShow:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDataChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getDailyClick()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyClick:I

    return v0
.end method

.method public getDailyShow()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyShow:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalClick()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyClick:I

    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mHistoryClick:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalShow()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyShow:I

    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mHistoryShow:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isDataChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDataChanged:Z

    return v0
.end method

.method public onDateChanged(II)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyClick:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyShow:I

    iput p1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mHistoryClick:I

    iput p2, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mHistoryShow:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDataChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDailyData(II)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyClick:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyClick:I

    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyShow:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyShow:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDataChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDataChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setHistoryData(II)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mHistoryClick:I

    iput p2, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mHistoryShow:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PackageEntity{mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDailyClick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyClick:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDailyShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyShow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mHistoryClick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mHistoryClick:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mHistoryShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mHistoryShow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDataChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDataChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
