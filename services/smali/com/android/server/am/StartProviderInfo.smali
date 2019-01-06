.class Lcom/android/server/am/StartProviderInfo;
.super Ljava/lang/Object;
.source "MiuiContentProviderControl.java"


# instance fields
.field mCaller:Landroid/app/IApplicationThread;

.field mCallerPid:I

.field mCallerPkg:Ljava/lang/String;

.field mCallerThreadId:J

.field mCallingIdentity:J

.field mDelay:J

.field mName:Ljava/lang/String;

.field mStable:Z

.field mToken:Landroid/os/IBinder;

.field mUserId:I


# direct methods
.method public constructor <init>(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;JILandroid/os/IBinder;ZIJ)V
    .registers 26

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v12, 0x96

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/StartProviderInfo;->reset(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;JILandroid/os/IBinder;ZIJJ)V

    return-void
.end method


# virtual methods
.method public reset(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;JILandroid/os/IBinder;ZIJJ)V
    .registers 14

    iput-object p1, p0, Lcom/android/server/am/StartProviderInfo;->mCaller:Landroid/app/IApplicationThread;

    iput-object p3, p0, Lcom/android/server/am/StartProviderInfo;->mCallerPkg:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/am/StartProviderInfo;->mCallingIdentity:J

    iput p6, p0, Lcom/android/server/am/StartProviderInfo;->mCallerPid:I

    iput-object p2, p0, Lcom/android/server/am/StartProviderInfo;->mName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/StartProviderInfo;->mToken:Landroid/os/IBinder;

    iput-boolean p8, p0, Lcom/android/server/am/StartProviderInfo;->mStable:Z

    iput p9, p0, Lcom/android/server/am/StartProviderInfo;->mUserId:I

    iput-wide p10, p0, Lcom/android/server/am/StartProviderInfo;->mCallerThreadId:J

    iput-wide p12, p0, Lcom/android/server/am/StartProviderInfo;->mDelay:J

    return-void
.end method
