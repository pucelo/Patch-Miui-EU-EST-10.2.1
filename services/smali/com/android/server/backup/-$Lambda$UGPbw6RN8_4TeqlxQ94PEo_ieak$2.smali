.class final synthetic Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupManagerService$3;

    iget-object v1, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;->-$f2:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$3;->lambda$-com_android_server_backup_BackupManagerService$3_84891(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;

    iget-object v1, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;->-$f2:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/RefactoredBackupManagerService$3;->lambda$-com_android_server_backup_RefactoredBackupManagerService$3_49338(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;->$id:B

    iput-object p2, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;->-$f1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;->$m$1()V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
