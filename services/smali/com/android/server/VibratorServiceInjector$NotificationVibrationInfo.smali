.class Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;
.super Ljava/lang/Object;
.source "VibratorServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationVibrationInfo"
.end annotation


# instance fields
.field effect:Landroid/os/VibrationEffect;

.field isTooOften:Z

.field isValid:Z

.field lastNotificationTime:J

.field lastNotificationVibrationTime:J

.field lastVibrationTime:J

.field pkg:Ljava/lang/String;

.field token:Landroid/os/IBinder;

.field uid:I

.field usageHint:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public fillVibrationInfo(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V
    .registers 6

    iput p1, p0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->uid:I

    iput-object p2, p0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->effect:Landroid/os/VibrationEffect;

    iput p4, p0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->usageHint:I

    iput-object p5, p0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->token:Landroid/os/IBinder;

    return-void
.end method
