.class Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
.super Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobileIconGroup"
.end annotation


# instance fields
.field final mActivityId:I

.field final mDataContentDescription:I

.field final mDataType:I

.field final mIsWide:Z

.field final mQsDataType:I

.field final mSingleSignalIcon:I

.field final mStackedDataIcon:I

.field final mStackedVoiceIcon:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V
    .locals 18

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZIIIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIIIIIZIIIII)V
    .locals 1

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput p10, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    iput p11, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    iput-boolean p12, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    iput p13, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDataType:I

    iput p14, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSingleSignalIcon:I

    move/from16 v0, p15

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mStackedDataIcon:I

    move/from16 v0, p16

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mStackedVoiceIcon:I

    move/from16 v0, p17

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mActivityId:I

    return-void
.end method
