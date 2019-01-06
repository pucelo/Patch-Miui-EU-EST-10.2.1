.class final synthetic Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;

.field public static final synthetic $INST$1:Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/server/content/SyncOperation;

    check-cast p2, Lcom/android/server/content/SyncOperation;

    invoke-static {p1, p2}, Lcom/android/server/content/SyncManager;->lambda$-com_android_server_content_SyncManager_82865(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/server/content/SyncOperation;

    check-cast p2, Lcom/android/server/content/SyncOperation;

    invoke-static {p1, p2}, Lcom/android/server/content/SyncManager;->lambda$-com_android_server_content_SyncManager_83919(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;-><init>(B)V

    sput-object v0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;->$INST$0:Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;

    new-instance v0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;-><init>(B)V

    sput-object v0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;->$INST$1:Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;->$id:B

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-byte v0, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA;->$m$1(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
