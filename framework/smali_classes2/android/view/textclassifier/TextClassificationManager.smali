.class public final Landroid/view/textclassifier/TextClassificationManager;
.super Ljava/lang/Object;
.source "TextClassificationManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTextClassifier:Landroid/view/textclassifier/TextClassifier;

.field private final mTextClassifierLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifierLock:Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .registers 4

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifierLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-nez v0, :cond_10

    new-instance v0, Landroid/view/textclassifier/TextClassifierImpl;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/textclassifier/TextClassifierImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    :cond_10
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .registers 4

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifierLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method
