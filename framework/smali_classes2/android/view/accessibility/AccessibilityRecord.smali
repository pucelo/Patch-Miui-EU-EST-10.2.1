.class public Landroid/view/accessibility/AccessibilityRecord;
.super Ljava/lang/Object;
.source "AccessibilityRecord.java"


# static fields
.field private static final GET_SOURCE_PREFETCH_FLAGS:I = 0x7

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final PROPERTY_CHECKED:I = 0x1

.field private static final PROPERTY_ENABLED:I = 0x2

.field private static final PROPERTY_FULL_SCREEN:I = 0x80

.field private static final PROPERTY_IMPORTANT_FOR_ACCESSIBILITY:I = 0x200

.field private static final PROPERTY_PASSWORD:I = 0x4

.field private static final PROPERTY_SCROLLABLE:I = 0x100

.field private static final UNDEFINED:I = -0x1

.field private static sPool:Landroid/view/accessibility/AccessibilityRecord;

.field private static final sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field mAddedCount:I

.field mBeforeText:Ljava/lang/CharSequence;

.field mBooleanProperties:I

.field mClassName:Ljava/lang/CharSequence;

.field mConnectionId:I

.field mContentDescription:Ljava/lang/CharSequence;

.field mCurrentItemIndex:I

.field mFromIndex:I

.field private mIsInPool:Z

.field mItemCount:I

.field mMaxScrollX:I

.field mMaxScrollY:I

.field private mNext:Landroid/view/accessibility/AccessibilityRecord;

.field mParcelableData:Landroid/os/Parcelable;

.field mRemovedCount:I

.field mScrollX:I

.field mScrollY:I

.field mSealed:Z

.field mSourceNodeId:J

.field mSourceWindowId:I

.field final mText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mToIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    return-void
.end method

.method private getBooleanProperty(I)Z
    .registers 3

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityRecord;
    .registers 3

    sget-object v2, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    if-eqz v1, :cond_1d

    sget-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    sget-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    iget-object v1, v1, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    sput-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    sget v1, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_24

    monitor-exit v2

    return-object v0

    :cond_1d
    :try_start_1d
    new-instance v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-direct {v1}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_24

    monitor-exit v2

    return-object v1

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;
    .registers 2

    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .registers 5

    if-eqz p2, :cond_8

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    :goto_7
    return-void

    :cond_8
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    goto :goto_7
.end method


# virtual methods
.method clear()V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, -0x1

    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    return-void
.end method

.method enforceNotSealed()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot perform this action on a sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method enforceSealed()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method public getAddedCount()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCurrentItemIndex()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    return v0
.end method

.method public getFromIndex()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    return v0
.end method

.method public getItemCount()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    return v0
.end method

.method public getMaxScrollX()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    return v0
.end method

.method public getMaxScrollY()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    return v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getRemovedCount()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    return v0
.end method

.method public getScrollX()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    return v0
.end method

.method public getSource()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10

    const/4 v8, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceSealed()V

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    if-eq v0, v2, :cond_d

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    if-ne v0, v2, :cond_e

    :cond_d
    return-object v8

    :cond_e
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_d

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    const/4 v6, 0x0

    const/4 v7, 0x7

    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSourceNodeId()J
    .registers 3

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    return-wide v0
.end method

.method public getText()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    return-object v0
.end method

.method public getToIndex()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    return v0
.end method

.method public getWindowId()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    return v0
.end method

.method init(Landroid/view/accessibility/AccessibilityRecord;)V
    .registers 4

    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    return-void
.end method

.method public isChecked()Z
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .registers 2

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility()Z
    .registers 2

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .registers 2

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method isSealed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    return v0
.end method

.method public recycle()V
    .registers 4

    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Record already recycled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->clear()V

    sget-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_13
    sget v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    const/16 v2, 0xa

    if-gt v0, v2, :cond_28

    sget-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    sput-object p0, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z

    sget v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_2a

    :cond_28
    monitor-exit v1

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAddedCount(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    if-nez p1, :cond_9

    :goto_6
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    return-void

    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6
.end method

.method public setChecked(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setConnectionId(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    if-nez p1, :cond_9

    :goto_6
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    return-void

    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6
.end method

.method public setCurrentItemIndex(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setFromIndex(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    return-void
.end method

.method public setFullScreen(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setImportantForAccessibility(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setItemCount(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    return-void
.end method

.method public setMaxScrollX(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    return-void
.end method

.method public setMaxScrollY(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    return-void
.end method

.method public setPassword(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setRemovedCount(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    return-void
.end method

.method public setScrollX(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    return-void
.end method

.method public setScrollY(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    return-void
.end method

.method public setScrollable(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setSealed(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/4 v0, 0x1

    const v1, 0x7fffffff

    const/4 v2, -0x1

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v2

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    :cond_1a
    const/16 v2, 0x200

    invoke-direct {p0, v2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    invoke-static {v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    return-void
.end method

.method public setSourceNodeId(J)V
    .registers 4

    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    return-void
.end method

.method public setToIndex(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    return-void
.end method

.method public setWindowId(I)V
    .registers 2

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " [ ClassName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; Text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; ContentDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; ItemCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; CurrentItemIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; IsEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; IsPassword: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; IsChecked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; IsFullScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x80

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; Scrollable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; BeforeText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; FromIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; ToIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; ScrollX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; ScrollY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; MaxScrollX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; MaxScrollY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; AddedCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; RemovedCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; ParcelableData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
