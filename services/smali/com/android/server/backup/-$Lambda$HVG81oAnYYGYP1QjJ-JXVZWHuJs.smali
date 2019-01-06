.class final synthetic Lcom/android/server/backup/-$Lambda$HVG81oAnYYGYP1QjJ-JXVZWHuJs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/backup/DataChangedJournal$Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/-$Lambda$HVG81oAnYYGYP1QjJ-JXVZWHuJs;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->lambda$-com_android_server_backup_RefactoredBackupManagerService_40916(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$Lambda$HVG81oAnYYGYP1QjJ-JXVZWHuJs;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/-$Lambda$HVG81oAnYYGYP1QjJ-JXVZWHuJs;->$m$0(Ljava/lang/String;)V

    return-void
.end method
