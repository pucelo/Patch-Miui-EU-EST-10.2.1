.class public Lcom/android/systemui/recents/RecentsActivityLaunchState;
.super Ljava/lang/Object;
.source "RecentsActivityLaunchState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsActivityLaunchState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/systemui/recents/RecentsActivityLaunchState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public launchedFromApp:Z

.field public launchedFromHome:Z

.field public launchedNumVisibleTasks:I

.field public launchedNumVisibleThumbnails:I

.field public launchedToTaskId:I

.field public launchedViaDockGesture:Z

.field public launchedViaDragGesture:Z

.field public launchedViaFsGesture:Z

.field public launchedWithAltTab:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/RecentsActivityLaunchState$1;

    invoke-direct {v0}, Lcom/android/systemui/recents/RecentsActivityLaunchState$1;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method


# virtual methods
.method protected copyFrom(Lcom/android/systemui/recents/RecentsActivityLaunchState;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    iget-boolean v0, p1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    iget-boolean v0, p1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    iget-boolean v0, p1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    iget-boolean v0, p1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    iget-boolean v0, p1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    iget v0, p1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iget v0, p1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    iget v0, p1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInitialFocusTaskIndex(I)I
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, p1, -0x1

    return v2

    :cond_0
    add-int/lit8 v2, p1, -0x2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    :cond_1
    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    return v2

    :cond_2
    add-int/lit8 v2, p1, -0x1

    return v2
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method
