.class public Landroid/gesture/GestureStore;
.super Ljava/lang/Object;
.source "GestureStore.java"


# static fields
.field private static final FILE_FORMAT_VERSION:S = 0x1s

.field public static final ORIENTATION_INVARIANT:I = 0x1

.field public static final ORIENTATION_SENSITIVE:I = 0x2

.field static final ORIENTATION_SENSITIVE_4:I = 0x4

.field static final ORIENTATION_SENSITIVE_8:I = 0x8

.field private static final PROFILE_LOADING_SAVING:Z = false

.field public static final SEQUENCE_INVARIANT:I = 0x1

.field public static final SEQUENCE_SENSITIVE:I = 0x2


# instance fields
.field private mChanged:Z

.field private mClassifier:Landroid/gesture/Learner;

.field private final mNamedGestures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Gesture;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOrientationStyle:I

.field private mSequenceType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    iput v0, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/gesture/GestureStore;->mChanged:Z

    new-instance v0, Landroid/gesture/InstanceLearner;

    invoke-direct {v0}, Landroid/gesture/InstanceLearner;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    return-void
.end method

.method private readFormatV1(Ljava/io/DataInputStream;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    iget-object v8, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v1, :cond_39

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v3, :cond_33

    invoke-static {p1}, Landroid/gesture/Gesture;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/Gesture;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v9, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    iget v10, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    invoke-static {v9, v10, v2, v7}, Landroid/gesture/Instance;->createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/gesture/Learner;->addInstance(Landroid/gesture/Instance;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_33
    invoke-virtual {v8, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_39
    return-void
.end method


# virtual methods
.method public addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V
    .registers 7

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    iget v2, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    iget v3, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    invoke-static {v2, v3, p2, p1}, Landroid/gesture/Instance;->createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/gesture/Learner;->addInstance(Landroid/gesture/Instance;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/gesture/GestureStore;->mChanged:Z

    return-void
.end method

.method public getGestureEntries()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getGestures(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Gesture;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    :cond_11
    return-object v2
.end method

.method getLearner()Landroid/gesture/Learner;
    .registers 2

    iget-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    return-object v0
.end method

.method public getOrientationStyle()I
    .registers 2

    iget v0, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    return v0
.end method

.method public getSequenceType()I
    .registers 2

    iget v0, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    return v0
.end method

.method public hasChanged()Z
    .registers 2

    iget-boolean v0, p0, Landroid/gesture/GestureStore;->mChanged:Z

    return v0
.end method

.method public load(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/gesture/GestureStore;->load(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public load(Ljava/io/InputStream;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    instance-of v3, p1, Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_17

    :goto_7
    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_2d

    :try_start_a
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_25

    move-result v2

    packed-switch v2, :pswitch_data_30

    :goto_11
    if-eqz p2, :cond_16

    invoke-static {v1}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_16
    return-void

    :cond_17
    :try_start_17
    new-instance v3, Ljava/io/BufferedInputStream;

    const v4, 0x8000

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_2d

    move-object p1, v3

    goto :goto_7

    :pswitch_21
    :try_start_21
    invoke-direct {p0, v1}, Landroid/gesture/GestureStore;->readFormatV1(Ljava/io/DataInputStream;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_11

    :catchall_25
    move-exception v3

    move-object v0, v1

    :goto_27
    if-eqz p2, :cond_2c

    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_2c
    throw v3

    :catchall_2d
    move-exception v3

    goto :goto_27

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_21
    .end packed-switch
.end method

.method public recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/gesture/Gesture;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation

    iget v1, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    iget v2, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/gesture/Instance;->createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;

    move-result-object v0

    iget-object v1, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    iget v2, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    iget v3, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    iget-object v4, v0, Landroid/gesture/Instance;->vector:[F

    invoke-virtual {v1, v2, v3, v4}, Landroid/gesture/Learner;->classify(II[F)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public removeEntry(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    invoke-virtual {v0, p1}, Landroid/gesture/Learner;->removeInstances(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/gesture/GestureStore;->mChanged:Z

    return-void
.end method

.method public removeGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V
    .registers 7

    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget-object v1, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/gesture/Learner;->removeInstance(J)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/gesture/GestureStore;->mChanged:Z

    return-void
.end method

.method public save(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/gesture/GestureStore;->save(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public save(Ljava/io/OutputStream;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    :try_start_1
    iget-object v6, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    new-instance v8, Ljava/io/DataOutputStream;

    instance-of v9, p1, Ljava/io/BufferedOutputStream;

    if-eqz v9, :cond_50

    :goto_9
    invoke-direct {v8, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_66

    const/4 v9, 0x1

    :try_start_d
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v4, 0x0

    :goto_42
    if-ge v4, v0, :cond_1f

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/gesture/Gesture;

    invoke-virtual {v9, v8}, Landroid/gesture/Gesture;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_4d
    .catchall {:try_start_d .. :try_end_4d} :catchall_6d

    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :cond_50
    :try_start_50
    new-instance v9, Ljava/io/BufferedOutputStream;

    const v10, 0x8000

    invoke-direct {v9, p1, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_66

    move-object p1, v9

    goto :goto_9

    :cond_5a
    :try_start_5a
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/gesture/GestureStore;->mChanged:Z
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_6d

    if-eqz p2, :cond_65

    invoke-static {v8}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_65
    return-void

    :catchall_66
    move-exception v9

    :goto_67
    if-eqz p2, :cond_6c

    invoke-static {v7}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_6c
    throw v9

    :catchall_6d
    move-exception v9

    move-object v7, v8

    goto :goto_67
.end method

.method public setOrientationStyle(I)V
    .registers 2

    iput p1, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    return-void
.end method

.method public setSequenceType(I)V
    .registers 2

    iput p1, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    return-void
.end method
