.class final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public getRingerModeAffectedStreams(I)I
    .registers 4

    or-int/lit8 p1, p1, 0x26

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    or-int/lit8 p1, p1, 0x18

    :goto_d
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get0(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/media/AudioServiceInjector;->getRingerModeAffectedStreams(ILandroid/content/Context;)I

    move-result p1

    return p1

    :cond_18
    and-int/lit8 p1, p1, -0x19

    goto :goto_d
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 15

    const/4 v5, 0x0

    move v8, p2

    if-eq p1, p2, :cond_34

    const/4 v6, 0x1

    :goto_5
    const/4 v0, 0x1

    if-ne p4, v0, :cond_36

    const/4 v7, 0x1

    :goto_9
    const/4 v1, -0x1

    packed-switch p2, :pswitch_data_56

    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->-get0(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2, p1, p2, v1}, Lcom/android/server/notification/ZenModeHelperInjector;->applyRingerModeToZen(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;III)I

    move-result v1

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    invoke-static {v1, v0, p2, v8}, Lcom/android/server/notification/ZenModeHelperInjector;->getOutRingerMode(IIII)I

    move-result v8

    const/4 v0, -0x1

    if-eq v1, v0, :cond_30

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const-string/jumbo v3, "ringerModeExternal"

    const/4 v2, 0x0

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->-wrap3(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_30
    invoke-static {p1, p2, p3, p4, v8}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    return v8

    :cond_34
    const/4 v6, 0x0

    goto :goto_5

    :cond_36
    const/4 v7, 0x0

    goto :goto_9

    :pswitch_38
    if-eqz v6, :cond_49

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-nez v0, :cond_43

    const/4 v1, 0x3

    :cond_43
    if-eqz v7, :cond_47

    const/4 v8, 0x1

    goto :goto_d

    :cond_47
    const/4 v8, 0x0

    goto :goto_d

    :cond_49
    move v8, p4

    goto :goto_d

    :pswitch_4b
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    goto :goto_d

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_38
        :pswitch_4b
        :pswitch_4b
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 15

    const/4 v3, 0x3

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq p1, p2, :cond_3d

    const/4 v6, 0x1

    :goto_8
    move v7, p2

    const/4 v1, -0x1

    packed-switch p2, :pswitch_data_84

    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get0(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3, p1, p2, v1}, Lcom/android/server/notification/ZenModeHelperInjector;->applyRingerModeToZen(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;III)I

    move-result v1

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    invoke-static {v1, v0, p2, v7}, Lcom/android/server/notification/ZenModeHelperInjector;->getOutRingerMode(IIII)I

    move-result v7

    if-ne v1, v4, :cond_2a

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0, v2}, Lcom/android/server/notification/ZenModeHelper;->-wrap4(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    :cond_2a
    if-eq v1, v8, :cond_35

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const-string/jumbo v3, "ringerModeInternal"

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->-wrap3(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_35
    if-nez v6, :cond_39

    if-eq v1, v8, :cond_80

    :cond_39
    :goto_39
    invoke-static {p1, p2, p3, p4, v7}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    :cond_3c
    return v7

    :cond_3d
    const/4 v6, 0x0

    goto :goto_8

    :pswitch_3f
    if-eqz v6, :cond_d

    iget-boolean v0, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-eq v0, v4, :cond_56

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-eq v0, v3, :cond_56

    const/4 v1, 0x3

    :cond_56
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/notification/ZenModeHelper;->-wrap4(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    goto :goto_d

    :pswitch_60
    if-eqz v6, :cond_76

    if-nez p1, :cond_76

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-eq v0, v4, :cond_74

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-ne v0, v3, :cond_76

    :cond_74
    const/4 v1, 0x0

    goto :goto_d

    :cond_76
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v7, 0x0

    goto :goto_d

    :cond_80
    if-eq p4, v7, :cond_3c

    goto :goto_39

    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_60
        :pswitch_60
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ZenModeHelper"

    return-object v0
.end method
