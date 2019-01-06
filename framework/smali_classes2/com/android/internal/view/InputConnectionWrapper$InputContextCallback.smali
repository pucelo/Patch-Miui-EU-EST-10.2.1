.class Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
.super Lcom/android/internal/view/IInputContextCallback$Stub;
.source "InputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/InputConnectionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputContextCallback"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputConnectionWrapper.ICC"

.field private static sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

.field private static sSequenceNumber:I


# instance fields
.field public mCommitContentResult:Z

.field public mCursorCapsMode:I

.field public mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field public mHaveValue:Z

.field public mRequestUpdateCursorAnchorInfoResult:Z

.field public mSelectedText:Ljava/lang/CharSequence;

.field public mSeq:I

.field public mTextAfterCursor:Ljava/lang/CharSequence;

.field public mTextBeforeCursor:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .registers 1

    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->dispose()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    invoke-direct {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;-><init>()V

    sput-object v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    const/4 v0, 0x1

    sput v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sSequenceNumber:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/view/IInputContextCallback$Stub;-><init>()V

    return-void
.end method

.method private dispose()V
    .registers 3

    const-class v1, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextAfterCursor:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextBeforeCursor:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    sput-object p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    .registers 4

    const-class v2, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    if-eqz v1, :cond_19

    sget-object v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sInstance:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    :goto_f
    sget v1, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sSequenceNumber:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->sSequenceNumber:I

    iput v1, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1f

    monitor-exit v2

    return-object v0

    :cond_19
    :try_start_19
    new-instance v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    invoke-direct {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;-><init>()V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1f

    goto :goto_f

    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public setCommitContentResult(ZI)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    if-ne p2, v0, :cond_f

    iput-boolean p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mCommitContentResult:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    invoke-virtual {p0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->notifyAll()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3e

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    const-string/jumbo v0, "InputConnectionWrapper.ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got out-of-sequence callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") in setCommitContentResult, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_f .. :try_end_3d} :catchall_3e

    goto :goto_d

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCursorCapsMode(II)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    if-ne p2, v0, :cond_f

    iput p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mCursorCapsMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    invoke-virtual {p0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->notifyAll()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3e

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    const-string/jumbo v0, "InputConnectionWrapper.ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got out-of-sequence callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") in setCursorCapsMode, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_f .. :try_end_3d} :catchall_3e

    goto :goto_d

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    if-ne p2, v0, :cond_f

    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    invoke-virtual {p0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->notifyAll()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3e

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    const-string/jumbo v0, "InputConnectionWrapper.ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got out-of-sequence callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") in setExtractedText, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_f .. :try_end_3d} :catchall_3e

    goto :goto_d

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRequestUpdateCursorAnchorInfoResult(ZI)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    if-ne p2, v0, :cond_f

    iput-boolean p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mRequestUpdateCursorAnchorInfoResult:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    invoke-virtual {p0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->notifyAll()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3e

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    const-string/jumbo v0, "InputConnectionWrapper.ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got out-of-sequence callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") in setCursorAnchorInfoRequestResult, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_f .. :try_end_3d} :catchall_3e

    goto :goto_d

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSelectedText(Ljava/lang/CharSequence;I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    if-ne p2, v0, :cond_f

    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSelectedText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    invoke-virtual {p0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->notifyAll()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3e

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    const-string/jumbo v0, "InputConnectionWrapper.ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got out-of-sequence callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") in setSelectedText, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_f .. :try_end_3d} :catchall_3e

    goto :goto_d

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTextAfterCursor(Ljava/lang/CharSequence;I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    if-ne p2, v0, :cond_f

    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextAfterCursor:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    invoke-virtual {p0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->notifyAll()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3e

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    const-string/jumbo v0, "InputConnectionWrapper.ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got out-of-sequence callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") in setTextAfterCursor, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_f .. :try_end_3d} :catchall_3e

    goto :goto_d

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    if-ne p2, v0, :cond_f

    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextBeforeCursor:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    invoke-virtual {p0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->notifyAll()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3e

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    const-string/jumbo v0, "InputConnectionWrapper.ICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got out-of-sequence callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") in setTextBeforeCursor, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_f .. :try_end_3d} :catchall_3e

    goto :goto_d

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method waitForResultLocked()V
    .registers 11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x7d0

    add-long v2, v6, v8

    :goto_8
    iget-boolean v1, p0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-nez v1, :cond_28

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v4, v2, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-gtz v1, :cond_22

    const-string/jumbo v1, "InputConnectionWrapper.ICC"

    const-string/jumbo v8, "Timed out waiting on IInputContextCallback"

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    :try_start_22
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->wait(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_8

    :catch_26
    move-exception v0

    goto :goto_8

    :cond_28
    return-void
.end method
