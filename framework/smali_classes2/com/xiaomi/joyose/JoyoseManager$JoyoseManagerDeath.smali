.class Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;
.super Ljava/lang/Object;
.source "JoyoseManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/joyose/JoyoseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JoyoseManagerDeath"
.end annotation


# instance fields
.field private mToken:Lcom/xiaomi/joyose/IJoyoseInterface;


# direct methods
.method constructor <init>(Lcom/xiaomi/joyose/IJoyoseInterface;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;->mToken:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/joyose/JoyoseManager;->-set0(Lcom/xiaomi/joyose/IJoyoseInterface;)Lcom/xiaomi/joyose/IJoyoseInterface;

    iget-object v0, p0, Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;->mToken:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;->mToken:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v0}, Lcom/xiaomi/joyose/IJoyoseInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_12
    return-void
.end method
