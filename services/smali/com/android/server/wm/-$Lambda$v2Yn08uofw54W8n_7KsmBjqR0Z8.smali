.class final synthetic Lcom/android/server/wm/-$Lambda$v2Yn08uofw54W8n_7KsmBjqR0Z8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/wm/-$Lambda$v2Yn08uofw54W8n_7KsmBjqR0Z8;


# direct methods
.method private final synthetic $m$0(I)Ljava/io/File;
    .registers 3

    invoke-static {p1}, Lcom/android/server/wm/TaskSnapshotController;->-com_android_server_wm_TaskSnapshotController-mthref-0(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$Lambda$v2Yn08uofw54W8n_7KsmBjqR0Z8;

    invoke-direct {v0}, Lcom/android/server/wm/-$Lambda$v2Yn08uofw54W8n_7KsmBjqR0Z8;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$Lambda$v2Yn08uofw54W8n_7KsmBjqR0Z8;->$INST$0:Lcom/android/server/wm/-$Lambda$v2Yn08uofw54W8n_7KsmBjqR0Z8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSystemDirectoryForUser(I)Ljava/io/File;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$v2Yn08uofw54W8n_7KsmBjqR0Z8;->$m$0(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method